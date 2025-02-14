# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Api.Killmails do
  @moduledoc """
  API calls for all endpoints tagged `Killmails`.
  """

  alias EveESI.Connection
  import EveESI.RequestBuilder

  @doc """
  Get a character's recent kills and losses
  Return a list of a character's kills and losses going back 90 days  --- Alternate route: `/dev/characters/{character_id}/killmails/recent/`  Alternate route: `/legacy/characters/{character_id}/killmails/recent/`  Alternate route: `/v1/characters/{character_id}/killmails/recent/`  --- This route is cached for up to 300 seconds

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `character_id` (integer()): An EVE character ID
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag
    - `:page` (integer()): Which page of results to return
    - `:token` (String.t): Access token to use if unable to set a header

  ### Returns

  - `{:ok, [%GetCharactersCharacterIdKillmailsRecent200Ok{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_characters_character_id_killmails_recent(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, EveESI.Model.Unauthorized.t} | {:ok, EveESI.Model.Forbidden.t} | {:ok, EveESI.Model.BadRequest.t} | {:ok, [EveESI.Model.GetCharactersCharacterIdKillmailsRecent200Ok.t]} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_characters_character_id_killmails_recent(connection, character_id, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :"If-None-Match" => :headers,
      :page => :query,
      :token => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/characters/#{character_id}/killmails/recent/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, EveESI.Model.GetCharactersCharacterIdKillmailsRecent200Ok},
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
  Get a corporation's recent kills and losses
  Get a list of a corporation's kills and losses going back 90 days  --- Alternate route: `/dev/corporations/{corporation_id}/killmails/recent/`  Alternate route: `/legacy/corporations/{corporation_id}/killmails/recent/`  Alternate route: `/v1/corporations/{corporation_id}/killmails/recent/`  --- This route is cached for up to 300 seconds  --- Requires one of the following EVE corporation role(s): Director 

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `corporation_id` (integer()): An EVE corporation ID
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag
    - `:page` (integer()): Which page of results to return
    - `:token` (String.t): Access token to use if unable to set a header

  ### Returns

  - `{:ok, [%GetCorporationsCorporationIdKillmailsRecent200Ok{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_corporations_corporation_id_killmails_recent(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, [EveESI.Model.GetCorporationsCorporationIdKillmailsRecent200Ok.t]} | {:ok, EveESI.Model.Unauthorized.t} | {:ok, EveESI.Model.Forbidden.t} | {:ok, EveESI.Model.BadRequest.t} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_corporations_corporation_id_killmails_recent(connection, corporation_id, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :"If-None-Match" => :headers,
      :page => :query,
      :token => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/corporations/#{corporation_id}/killmails/recent/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, EveESI.Model.GetCorporationsCorporationIdKillmailsRecent200Ok},
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
  Get a single killmail
  Return a single killmail from its ID and hash  --- Alternate route: `/dev/killmails/{killmail_id}/{killmail_hash}/`  Alternate route: `/legacy/killmails/{killmail_id}/{killmail_hash}/`  Alternate route: `/v1/killmails/{killmail_id}/{killmail_hash}/`  --- This route is cached for up to 30758400 seconds

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `killmail_hash` (String.t): The killmail hash for verification
  - `killmail_id` (integer()): The killmail ID to be queried
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag

  ### Returns

  - `{:ok, EveESI.Model.GetKillmailsKillmailIdKillmailHashOk.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_killmails_killmail_id_killmail_hash(Tesla.Env.client, String.t, integer(), keyword()) :: {:ok, EveESI.Model.GetKillmailsKillmailIdKillmailHashOk.t} | {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.GetKillmailsKillmailIdKillmailHashUnprocessableEntity.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, EveESI.Model.BadRequest.t} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_killmails_killmail_id_killmail_hash(connection, killmail_hash, killmail_id, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :"If-None-Match" => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/killmails/#{killmail_id}/#{killmail_hash}/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, EveESI.Model.GetKillmailsKillmailIdKillmailHashOk},
      {304, false},
      {400, EveESI.Model.BadRequest},
      {420, EveESI.Model.ErrorLimited},
      {422, EveESI.Model.GetKillmailsKillmailIdKillmailHashUnprocessableEntity},
      {500, EveESI.Model.InternalServerError},
      {503, EveESI.Model.ServiceUnavailable},
      {504, EveESI.Model.GatewayTimeout}
    ])
  end
end
