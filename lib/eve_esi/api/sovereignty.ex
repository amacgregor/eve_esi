# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Api.Sovereignty do
  @moduledoc """
  API calls for all endpoints tagged `Sovereignty`.
  """

  alias EveESI.Connection
  import EveESI.RequestBuilder

  @doc """
  List sovereignty campaigns
  Shows sovereignty data for campaigns.  --- Alternate route: `/dev/sovereignty/campaigns/`  Alternate route: `/legacy/sovereignty/campaigns/`  Alternate route: `/v1/sovereignty/campaigns/`  --- This route is cached for up to 5 seconds

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag

  ### Returns

  - `{:ok, [%GetSovereigntyCampaigns200Ok{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_sovereignty_campaigns(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, EveESI.Model.BadRequest.t} | {:ok, [EveESI.Model.GetSovereigntyCampaigns200Ok.t]} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_sovereignty_campaigns(connection, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :"If-None-Match" => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/sovereignty/campaigns/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, EveESI.Model.GetSovereigntyCampaigns200Ok},
      {304, false},
      {400, EveESI.Model.BadRequest},
      {420, EveESI.Model.ErrorLimited},
      {500, EveESI.Model.InternalServerError},
      {503, EveESI.Model.ServiceUnavailable},
      {504, EveESI.Model.GatewayTimeout}
    ])
  end

  @doc """
  List sovereignty of systems
  Shows sovereignty information for solar systems  --- Alternate route: `/dev/sovereignty/map/`  Alternate route: `/legacy/sovereignty/map/`  Alternate route: `/v1/sovereignty/map/`  --- This route is cached for up to 3600 seconds

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag

  ### Returns

  - `{:ok, [%GetSovereigntyMap200Ok{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_sovereignty_map(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, EveESI.Model.BadRequest.t} | {:ok, [EveESI.Model.GetSovereigntyMap200Ok.t]} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_sovereignty_map(connection, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :"If-None-Match" => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/sovereignty/map/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, EveESI.Model.GetSovereigntyMap200Ok},
      {304, false},
      {400, EveESI.Model.BadRequest},
      {420, EveESI.Model.ErrorLimited},
      {500, EveESI.Model.InternalServerError},
      {503, EveESI.Model.ServiceUnavailable},
      {504, EveESI.Model.GatewayTimeout}
    ])
  end

  @doc """
  List sovereignty structures
  Shows sovereignty data for structures.  --- Alternate route: `/dev/sovereignty/structures/`  Alternate route: `/legacy/sovereignty/structures/`  Alternate route: `/v1/sovereignty/structures/`  --- This route is cached for up to 120 seconds

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag

  ### Returns

  - `{:ok, [%GetSovereigntyStructures200Ok{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_sovereignty_structures(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, [EveESI.Model.GetSovereigntyStructures200Ok.t]} | {:ok, EveESI.Model.BadRequest.t} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_sovereignty_structures(connection, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :"If-None-Match" => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/sovereignty/structures/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, EveESI.Model.GetSovereigntyStructures200Ok},
      {304, false},
      {400, EveESI.Model.BadRequest},
      {420, EveESI.Model.ErrorLimited},
      {500, EveESI.Model.InternalServerError},
      {503, EveESI.Model.ServiceUnavailable},
      {504, EveESI.Model.GatewayTimeout}
    ])
  end
end
