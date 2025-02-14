# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Api.PlanetaryInteraction do
  @moduledoc """
  API calls for all endpoints tagged `PlanetaryInteraction`.
  """

  alias EveESI.Connection
  import EveESI.RequestBuilder

  @doc """
  Get colonies
  Returns a list of all planetary colonies owned by a character.  --- Alternate route: `/dev/characters/{character_id}/planets/`  Alternate route: `/legacy/characters/{character_id}/planets/`  Alternate route: `/v1/characters/{character_id}/planets/`  --- This route is cached for up to 600 seconds

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `character_id` (integer()): An EVE character ID
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag
    - `:token` (String.t): Access token to use if unable to set a header

  ### Returns

  - `{:ok, [%GetCharactersCharacterIdPlanets200Ok{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_characters_character_id_planets(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, EveESI.Model.Unauthorized.t} | {:ok, EveESI.Model.Forbidden.t} | {:ok, [EveESI.Model.GetCharactersCharacterIdPlanets200Ok.t]} | {:ok, EveESI.Model.BadRequest.t} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_characters_character_id_planets(connection, character_id, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :"If-None-Match" => :headers,
      :token => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/characters/#{character_id}/planets/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, EveESI.Model.GetCharactersCharacterIdPlanets200Ok},
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
  Get colony layout
  Returns full details on the layout of a single planetary colony, including links, pins and routes. Note: Planetary information is only recalculated when the colony is viewed through the client. Information will not update until this criteria is met.  --- Alternate route: `/dev/characters/{character_id}/planets/{planet_id}/`  Alternate route: `/v3/characters/{character_id}/planets/{planet_id}/` 

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `character_id` (integer()): An EVE character ID
  - `planet_id` (integer()): Planet id of the target planet
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:token` (String.t): Access token to use if unable to set a header

  ### Returns

  - `{:ok, EveESI.Model.GetCharactersCharacterIdPlanetsPlanetIdOk.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_characters_character_id_planets_planet_id(Tesla.Env.client, integer(), integer(), keyword()) :: {:ok, EveESI.Model.GetCharactersCharacterIdPlanetsPlanetIdNotFound.t} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, EveESI.Model.Unauthorized.t} | {:ok, EveESI.Model.Forbidden.t} | {:ok, EveESI.Model.BadRequest.t} | {:ok, EveESI.Model.GetCharactersCharacterIdPlanetsPlanetIdOk.t} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_characters_character_id_planets_planet_id(connection, character_id, planet_id, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :token => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/characters/#{character_id}/planets/#{planet_id}/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, EveESI.Model.GetCharactersCharacterIdPlanetsPlanetIdOk},
      {400, EveESI.Model.BadRequest},
      {401, EveESI.Model.Unauthorized},
      {403, EveESI.Model.Forbidden},
      {404, EveESI.Model.GetCharactersCharacterIdPlanetsPlanetIdNotFound},
      {420, EveESI.Model.ErrorLimited},
      {500, EveESI.Model.InternalServerError},
      {503, EveESI.Model.ServiceUnavailable},
      {504, EveESI.Model.GatewayTimeout}
    ])
  end

  @doc """
  List corporation customs offices
  List customs offices owned by a corporation  --- Alternate route: `/dev/corporations/{corporation_id}/customs_offices/`  Alternate route: `/legacy/corporations/{corporation_id}/customs_offices/`  Alternate route: `/v1/corporations/{corporation_id}/customs_offices/`  --- This route is cached for up to 3600 seconds  --- Requires one of the following EVE corporation role(s): Director 

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `corporation_id` (integer()): An EVE corporation ID
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag
    - `:page` (integer()): Which page of results to return
    - `:token` (String.t): Access token to use if unable to set a header

  ### Returns

  - `{:ok, [%GetCorporationsCorporationIdCustomsOffices200Ok{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_corporations_corporation_id_customs_offices(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, EveESI.Model.Unauthorized.t} | {:ok, EveESI.Model.Forbidden.t} | {:ok, [EveESI.Model.GetCorporationsCorporationIdCustomsOffices200Ok.t]} | {:ok, EveESI.Model.BadRequest.t} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_corporations_corporation_id_customs_offices(connection, corporation_id, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :"If-None-Match" => :headers,
      :page => :query,
      :token => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/corporations/#{corporation_id}/customs_offices/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, EveESI.Model.GetCorporationsCorporationIdCustomsOffices200Ok},
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
  Get schematic information
  Get information on a planetary factory schematic  --- Alternate route: `/dev/universe/schematics/{schematic_id}/`  Alternate route: `/legacy/universe/schematics/{schematic_id}/`  Alternate route: `/v1/universe/schematics/{schematic_id}/`  --- This route is cached for up to 3600 seconds

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `schematic_id` (integer()): A PI schematic ID
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag

  ### Returns

  - `{:ok, EveESI.Model.GetUniverseSchematicsSchematicIdOk.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_universe_schematics_schematic_id(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, EveESI.Model.GetUniverseSchematicsSchematicIdNotFound.t} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, EveESI.Model.BadRequest.t} | {:ok, EveESI.Model.GetUniverseSchematicsSchematicIdOk.t} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_universe_schematics_schematic_id(connection, schematic_id, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :"If-None-Match" => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/universe/schematics/#{schematic_id}/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, EveESI.Model.GetUniverseSchematicsSchematicIdOk},
      {304, false},
      {400, EveESI.Model.BadRequest},
      {404, EveESI.Model.GetUniverseSchematicsSchematicIdNotFound},
      {420, EveESI.Model.ErrorLimited},
      {500, EveESI.Model.InternalServerError},
      {503, EveESI.Model.ServiceUnavailable},
      {504, EveESI.Model.GatewayTimeout}
    ])
  end
end
