# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Api.Calendar do
  @moduledoc """
  API calls for all endpoints tagged `Calendar`.
  """

  alias EveESI.Connection
  import EveESI.RequestBuilder

  @doc """
  List calendar event summaries
  Get 50 event summaries from the calendar. If no from_event ID is given, the resource will return the next 50 chronological event summaries from now. If a from_event ID is specified, it will return the next 50 chronological event summaries from after that event  --- Alternate route: `/dev/characters/{character_id}/calendar/`  Alternate route: `/legacy/characters/{character_id}/calendar/`  Alternate route: `/v1/characters/{character_id}/calendar/`  Alternate route: `/v2/characters/{character_id}/calendar/`  --- This route is cached for up to 5 seconds

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `character_id` (integer()): An EVE character ID
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:from_event` (integer()): The event ID to retrieve events from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag
    - `:token` (String.t): Access token to use if unable to set a header

  ### Returns

  - `{:ok, [%GetCharactersCharacterIdCalendar200Ok{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_characters_character_id_calendar(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, [EveESI.Model.GetCharactersCharacterIdCalendar200Ok.t]} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, EveESI.Model.Unauthorized.t} | {:ok, EveESI.Model.Forbidden.t} | {:ok, EveESI.Model.BadRequest.t} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_characters_character_id_calendar(connection, character_id, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :from_event => :query,
      :"If-None-Match" => :headers,
      :token => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/characters/#{character_id}/calendar/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, EveESI.Model.GetCharactersCharacterIdCalendar200Ok},
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
  Get an event
  Get all the information for a specific event  --- Alternate route: `/dev/characters/{character_id}/calendar/{event_id}/`  Alternate route: `/legacy/characters/{character_id}/calendar/{event_id}/`  Alternate route: `/v3/characters/{character_id}/calendar/{event_id}/`  Alternate route: `/v4/characters/{character_id}/calendar/{event_id}/`  --- This route is cached for up to 5 seconds

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `character_id` (integer()): An EVE character ID
  - `event_id` (integer()): The id of the event requested
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag
    - `:token` (String.t): Access token to use if unable to set a header

  ### Returns

  - `{:ok, EveESI.Model.GetCharactersCharacterIdCalendarEventIdOk.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_characters_character_id_calendar_event_id(Tesla.Env.client, integer(), integer(), keyword()) :: {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, EveESI.Model.GetCharactersCharacterIdCalendarEventIdOk.t} | {:ok, EveESI.Model.Unauthorized.t} | {:ok, EveESI.Model.Forbidden.t} | {:ok, EveESI.Model.BadRequest.t} | {:ok, EveESI.Model.GetCharactersCharacterIdCalendarEventIdNotFound.t} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_characters_character_id_calendar_event_id(connection, character_id, event_id, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :"If-None-Match" => :headers,
      :token => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/characters/#{character_id}/calendar/#{event_id}/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, EveESI.Model.GetCharactersCharacterIdCalendarEventIdOk},
      {304, false},
      {400, EveESI.Model.BadRequest},
      {401, EveESI.Model.Unauthorized},
      {403, EveESI.Model.Forbidden},
      {404, EveESI.Model.GetCharactersCharacterIdCalendarEventIdNotFound},
      {420, EveESI.Model.ErrorLimited},
      {500, EveESI.Model.InternalServerError},
      {503, EveESI.Model.ServiceUnavailable},
      {504, EveESI.Model.GatewayTimeout}
    ])
  end

  @doc """
  Get attendees
  Get all invited attendees for a given event  --- Alternate route: `/dev/characters/{character_id}/calendar/{event_id}/attendees/`  Alternate route: `/legacy/characters/{character_id}/calendar/{event_id}/attendees/`  Alternate route: `/v1/characters/{character_id}/calendar/{event_id}/attendees/`  Alternate route: `/v2/characters/{character_id}/calendar/{event_id}/attendees/`  --- This route is cached for up to 600 seconds

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `character_id` (integer()): An EVE character ID
  - `event_id` (integer()): The id of the event requested
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag
    - `:token` (String.t): Access token to use if unable to set a header

  ### Returns

  - `{:ok, [%GetCharactersCharacterIdCalendarEventIdAttendees200Ok{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_characters_character_id_calendar_event_id_attendees(Tesla.Env.client, integer(), integer(), keyword()) :: {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, [EveESI.Model.GetCharactersCharacterIdCalendarEventIdAttendees200Ok.t]} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, EveESI.Model.GetCharactersCharacterIdCalendarEventIdAttendeesNotFound.t} | {:ok, EveESI.Model.Unauthorized.t} | {:ok, EveESI.Model.Forbidden.t} | {:ok, EveESI.Model.BadRequest.t} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_characters_character_id_calendar_event_id_attendees(connection, character_id, event_id, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :"If-None-Match" => :headers,
      :token => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/characters/#{character_id}/calendar/#{event_id}/attendees/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, EveESI.Model.GetCharactersCharacterIdCalendarEventIdAttendees200Ok},
      {304, false},
      {400, EveESI.Model.BadRequest},
      {401, EveESI.Model.Unauthorized},
      {403, EveESI.Model.Forbidden},
      {404, EveESI.Model.GetCharactersCharacterIdCalendarEventIdAttendeesNotFound},
      {420, EveESI.Model.ErrorLimited},
      {500, EveESI.Model.InternalServerError},
      {503, EveESI.Model.ServiceUnavailable},
      {504, EveESI.Model.GatewayTimeout}
    ])
  end

  @doc """
  Respond to an event
  Set your response status to an event  --- Alternate route: `/dev/characters/{character_id}/calendar/{event_id}/`  Alternate route: `/legacy/characters/{character_id}/calendar/{event_id}/`  Alternate route: `/v3/characters/{character_id}/calendar/{event_id}/`  Alternate route: `/v4/characters/{character_id}/calendar/{event_id}/`  --- This route is cached for up to 5 seconds

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `character_id` (integer()): An EVE character ID
  - `event_id` (integer()): The ID of the event requested
  - `response` (PutCharactersCharacterIdCalendarEventIdResponse): The response value to set, overriding current value
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:token` (String.t): Access token to use if unable to set a header

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec put_characters_character_id_calendar_event_id(Tesla.Env.client, integer(), integer(), EveESI.Model.PutCharactersCharacterIdCalendarEventIdResponse.t, keyword()) :: {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, EveESI.Model.Unauthorized.t} | {:ok, EveESI.Model.Forbidden.t} | {:ok, EveESI.Model.BadRequest.t} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def put_characters_character_id_calendar_event_id(connection, character_id, event_id, response, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :token => :query
    }

    request =
      %{}
      |> method(:put)
      |> url("/characters/#{character_id}/calendar/#{event_id}/")
      |> add_param(:body, :body, response)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {204, false},
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
