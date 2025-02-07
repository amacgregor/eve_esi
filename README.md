# EveESI

EveESI is mean to be a wrapper around the EVE Online ESI API. Thanks to CCP for providing the API and the Swagger interface to it; we can abstract the API calls into a more Elixir-friendly format.

This library is still in development and while it follows the Swagger API, not everything might be working as expected. If you find any issues, please report them.


# Usage

## Installation

Add `eve_esi` to your list of dependencies in **mix.exs**:

```elixir
def deps do
  [
    {:eve_esi, "~> 0.1.0"}
  ]
end
```

Then run:

```bash
mix deps.get
```

## Configuration

By default, the client uses `https://esi.evetech.net/latest` as the base URL. You can override this in your application config if you need a different environment:

```elixir
config :eve_esi,
  base_url: "https://esi.evetech.net/latest"
```

If you want to customize Tesla options (e.g. adapter, JSON engine, middlewares), you can specify:

```elixir
config :tesla, EveESI.Connection,
  adapter: Tesla.Adapter.Hackney,  # or Finch, Mint, etc.
  json: Jason,
  middleware: [
    # additional custom middlewares
  ],
  user_agent: "MyUserAgent/1.0"
```

## Making Requests (Without Authentication)

If you do not require OAuth2 (or you just want to call public endpoints), you can create a simple client with:

```elixir
client = EveESI.Connection.new()
```

Then pass that `client` to any of the generated API modules/functions. For example:

```elixir
# An example of calling an endpoint from the Universe API:
{:ok, systems} = EveESI.Api.Universe.get_universe_systems(client)
IO.inspect(systems, label: "List of systems")
```

*(Check the generated modules under `lib/eve_esi/api/*.ex` for available endpoints.)*

## Making Requests With OAuth2

Many EVE Online endpoints require an OAuth2 token with specific scopes. You can provide a token directly, or supply a function that fetches a token at runtime.

### 1. Passing a Static Token

If you already have a valid Bearer token:

```elixir
client = EveESI.Connection.new("Bearer <my_jwt_token>")
# Now client includes the Authorization header.
{:ok, character_info} = EveESI.Api.Character.get_characters_character_id(client, character_id)
```

### 2. Using a Token Fetcher Function

If you have a function that can **obtain or refresh** an OAuth2 token, you can pass that function instead:

```elixir
defmodule MyApp.TokenManager do
  # For example, a function that fetches from your refresh token flow or in-memory cache
  def fetch_token(scopes) do
    # The `scopes` argument is a list of ESI scopes you might need.
    # Return the token string with "Bearer ..." or just the token if you prefer.
    "Bearer " <> MyApp.OAuth2.get_token_for_scopes(scopes)
  end
end

# Then configure your client:
client = EveESI.Connection.new(&MyApp.TokenManager.fetch_token/1)

# Or with explicit scopes:
client = EveESI.Connection.new(&MyApp.TokenManager.fetch_token/1, ["esi-fittings.write_fittings.v1"])
```

> **Note**: If you pass a tuple `{MyModule, :my_function}`, the library will `apply(MyModule, :my_function, [scopes])` to get the token.

### Overriding Scopes

If you need to request specific scopes on a per-request basis, you can do:

```elixir
scopes = ["esi-mail.read_mail.v1", "esi-mail.send_mail.v1"]
client = EveESI.Connection.new(&MyApp.TokenManager.fetch_token/1, scopes)
```

## Example Usage

Here’s a short end-to-end snippet:

```elixir
defmodule MyApp do
  def run do
    # Create a client (with or without OAuth).
    client = EveESI.Connection.new()

    # Call an ESI endpoint. 
    # (Adjust your function call based on what's generated under EveESI.Api.*)
    case EveESI.Api.Universe.get_universe_systems(client) do
      {:ok, systems} ->
        IO.puts("Got #{length(systems)} systems!")
      {:error, reason} ->
        IO.inspect(reason, label: "Error fetching systems")
    end
  end
end
```

Run your Elixir application, and it will make the ESI requests using Tesla under the hood.

## Building

To install the required dependencies and to build the elixir project, run:

```console
mix local.hex --force
mix do deps.get, compile
```

## Installation

If [available in Hex][], the package can be installed by adding `eve_esi` to
your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:eve_esi, "~> 1.0.0"}]
end
```

Documentation can be generated with [ExDoc][] and published on [HexDocs][]. Once published, the docs can be found at
[https://hexdocs.pm/eve_esi][docs].

## Configuration

You can override the URL of your server (e.g. if you have a separate development and production server in your
configuration files).

```elixir
config :eve_esi, base_url: "https://esi.evetech.net/latest"
```

Multiple clients for the same API with different URLs can be created passing different `base_url`s when calling
`EveESI.Connection.new/1`:

```elixir
client = EveESI.Connection.new(base_url: "https://esi.evetech.net/latest")
```

[exdoc]: https://github.com/elixir-lang/ex_doc
[hexdocs]: https://hexdocs.pm
[available in hex]: https://hex.pm/docs/publish
[docs]: https://hexdocs.pm/eve_esi
