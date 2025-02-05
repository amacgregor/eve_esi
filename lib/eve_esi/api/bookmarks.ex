# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Api.Bookmarks do
  @moduledoc """
  API calls for all endpoints tagged `Bookmarks`.
  """

  alias EveESI.Connection
  import EveESI.RequestBuilder

  @doc """
  List bookmarks
  A list of your character's personal bookmarks  --- Alternate route: `/dev/characters/{character_id}/bookmarks/`  Alternate route: `/v2/characters/{character_id}/bookmarks/`  --- This route is cached for up to 3600 seconds

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `character_id` (integer()): An EVE character ID
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag
    - `:page` (integer()): Which page of results to return
    - `:token` (String.t): Access token to use if unable to set a header

  ### Returns

  - `{:ok, [%GetCharactersCharacterIdBookmarks200Ok{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_characters_character_id_bookmarks(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, [EveESI.Model.GetCharactersCharacterIdBookmarks200Ok.t]} | {:ok, EveESI.Model.Unauthorized.t} | {:ok, EveESI.Model.Forbidden.t} | {:ok, EveESI.Model.BadRequest.t} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_characters_character_id_bookmarks(connection, character_id, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :"If-None-Match" => :headers,
      :page => :query,
      :token => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/characters/#{character_id}/bookmarks/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, EveESI.Model.GetCharactersCharacterIdBookmarks200Ok},
      {304, false},
      {400, EveESI.Model.BadRequest},
      {401, EveESI.Model.Unauthorized},
      {403, EveESI.Model.Forbidden},
      {420, EveESI.Model.ErrorLimited},
      {500, EveESI.Model.InternalServerError},
      {503, EveESI.Model.ServiceUnavailable},
      {504, EveESI.Model.GatewayTimeout}
    ])
  end

  @doc """
  List bookmark folders
  A list of your character's personal bookmark folders  --- Alternate route: `/dev/characters/{character_id}/bookmarks/folders/`  Alternate route: `/v2/characters/{character_id}/bookmarks/folders/`  --- This route is cached for up to 3600 seconds

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `character_id` (integer()): An EVE character ID
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag
    - `:page` (integer()): Which page of results to return
    - `:token` (String.t): Access token to use if unable to set a header

  ### Returns

  - `{:ok, [%GetCharactersCharacterIdBookmarksFolders200Ok{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_characters_character_id_bookmarks_folders(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, EveESI.Model.Unauthorized.t} | {:ok, EveESI.Model.Forbidden.t} | {:ok, EveESI.Model.BadRequest.t} | {:ok, [EveESI.Model.GetCharactersCharacterIdBookmarksFolders200Ok.t]} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_characters_character_id_bookmarks_folders(connection, character_id, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :"If-None-Match" => :headers,
      :page => :query,
      :token => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/characters/#{character_id}/bookmarks/folders/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, EveESI.Model.GetCharactersCharacterIdBookmarksFolders200Ok},
      {304, false},
      {400, EveESI.Model.BadRequest},
      {401, EveESI.Model.Unauthorized},
      {403, EveESI.Model.Forbidden},
      {420, EveESI.Model.ErrorLimited},
      {500, EveESI.Model.InternalServerError},
      {503, EveESI.Model.ServiceUnavailable},
      {504, EveESI.Model.GatewayTimeout}
    ])
  end

  @doc """
  List corporation bookmarks
  A list of your corporation's bookmarks  --- Alternate route: `/dev/corporations/{corporation_id}/bookmarks/`  Alternate route: `/legacy/corporations/{corporation_id}/bookmarks/`  Alternate route: `/v1/corporations/{corporation_id}/bookmarks/`  --- This route is cached for up to 3600 seconds

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `corporation_id` (integer()): An EVE corporation ID
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag
    - `:page` (integer()): Which page of results to return
    - `:token` (String.t): Access token to use if unable to set a header

  ### Returns

  - `{:ok, [%GetCorporationsCorporationIdBookmarks200Ok{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_corporations_corporation_id_bookmarks(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, EveESI.Model.Unauthorized.t} | {:ok, [EveESI.Model.GetCorporationsCorporationIdBookmarks200Ok.t]} | {:ok, EveESI.Model.Forbidden.t} | {:ok, EveESI.Model.BadRequest.t} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_corporations_corporation_id_bookmarks(connection, corporation_id, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :"If-None-Match" => :headers,
      :page => :query,
      :token => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/corporations/#{corporation_id}/bookmarks/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, EveESI.Model.GetCorporationsCorporationIdBookmarks200Ok},
      {304, false},
      {400, EveESI.Model.BadRequest},
      {401, EveESI.Model.Unauthorized},
      {403, EveESI.Model.Forbidden},
      {420, EveESI.Model.ErrorLimited},
      {500, EveESI.Model.InternalServerError},
      {503, EveESI.Model.ServiceUnavailable},
      {504, EveESI.Model.GatewayTimeout}
    ])
  end

  @doc """
  List corporation bookmark folders
  A list of your corporation's bookmark folders  --- Alternate route: `/dev/corporations/{corporation_id}/bookmarks/folders/`  Alternate route: `/legacy/corporations/{corporation_id}/bookmarks/folders/`  Alternate route: `/v1/corporations/{corporation_id}/bookmarks/folders/`  --- This route is cached for up to 3600 seconds

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `corporation_id` (integer()): An EVE corporation ID
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag
    - `:page` (integer()): Which page of results to return
    - `:token` (String.t): Access token to use if unable to set a header

  ### Returns

  - `{:ok, [%GetCorporationsCorporationIdBookmarksFolders200Ok{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_corporations_corporation_id_bookmarks_folders(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, EveESI.Model.Unauthorized.t} | {:ok, [EveESI.Model.GetCorporationsCorporationIdBookmarksFolders200Ok.t]} | {:ok, EveESI.Model.Forbidden.t} | {:ok, EveESI.Model.BadRequest.t} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_corporations_corporation_id_bookmarks_folders(connection, corporation_id, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :"If-None-Match" => :headers,
      :page => :query,
      :token => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/corporations/#{corporation_id}/bookmarks/folders/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, EveESI.Model.GetCorporationsCorporationIdBookmarksFolders200Ok},
      {304, false},
      {400, EveESI.Model.BadRequest},
      {401, EveESI.Model.Unauthorized},
      {403, EveESI.Model.Forbidden},
      {420, EveESI.Model.ErrorLimited},
      {500, EveESI.Model.InternalServerError},
      {503, EveESI.Model.ServiceUnavailable},
      {504, EveESI.Model.GatewayTimeout}
    ])
  end
end
