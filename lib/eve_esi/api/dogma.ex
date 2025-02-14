# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Api.Dogma do
  @moduledoc """
  API calls for all endpoints tagged `Dogma`.
  """

  alias EveESI.Connection
  import EveESI.RequestBuilder

  @doc """
  Get attributes
  Get a list of dogma attribute ids  --- Alternate route: `/dev/dogma/attributes/`  Alternate route: `/legacy/dogma/attributes/`  Alternate route: `/v1/dogma/attributes/`  --- This route expires daily at 11:05

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag

  ### Returns

  - `{:ok, [%Integer{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_dogma_attributes(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, EveESI.Model.BadRequest.t} | {:ok, [integer()]} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_dogma_attributes(connection, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :"If-None-Match" => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/dogma/attributes/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, []},
      {304, false},
      {400, EveESI.Model.BadRequest},
      {420, EveESI.Model.ErrorLimited},
      {500, EveESI.Model.InternalServerError},
      {503, EveESI.Model.ServiceUnavailable},
      {504, EveESI.Model.GatewayTimeout}
    ])
  end

  @doc """
  Get attribute information
  Get information on a dogma attribute  --- Alternate route: `/dev/dogma/attributes/{attribute_id}/`  Alternate route: `/legacy/dogma/attributes/{attribute_id}/`  Alternate route: `/v1/dogma/attributes/{attribute_id}/`  --- This route expires daily at 11:05

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `attribute_id` (integer()): A dogma attribute ID
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag

  ### Returns

  - `{:ok, EveESI.Model.GetDogmaAttributesAttributeIdOk.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_dogma_attributes_attribute_id(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, EveESI.Model.GetDogmaAttributesAttributeIdOk.t} | {:ok, EveESI.Model.GetDogmaAttributesAttributeIdNotFound.t} | {:ok, EveESI.Model.BadRequest.t} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_dogma_attributes_attribute_id(connection, attribute_id, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :"If-None-Match" => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/dogma/attributes/#{attribute_id}/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, EveESI.Model.GetDogmaAttributesAttributeIdOk},
      {304, false},
      {400, EveESI.Model.BadRequest},
      {404, EveESI.Model.GetDogmaAttributesAttributeIdNotFound},
      {420, EveESI.Model.ErrorLimited},
      {500, EveESI.Model.InternalServerError},
      {503, EveESI.Model.ServiceUnavailable},
      {504, EveESI.Model.GatewayTimeout}
    ])
  end

  @doc """
  Get dynamic item information
  Returns info about a dynamic item resulting from mutation with a mutaplasmid.  --- Alternate route: `/dev/dogma/dynamic/items/{type_id}/{item_id}/`  Alternate route: `/legacy/dogma/dynamic/items/{type_id}/{item_id}/`  Alternate route: `/v1/dogma/dynamic/items/{type_id}/{item_id}/`  --- This route expires daily at 11:05

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `item_id` (integer()): item_id integer
  - `type_id` (integer()): type_id integer
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag

  ### Returns

  - `{:ok, EveESI.Model.GetDogmaDynamicItemsTypeIdItemIdOk.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_dogma_dynamic_items_type_id_item_id(Tesla.Env.client, integer(), integer(), keyword()) :: {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, EveESI.Model.BadRequest.t} | {:ok, EveESI.Model.GetDogmaDynamicItemsTypeIdItemIdOk.t} | {:ok, EveESI.Model.GetDogmaDynamicItemsTypeIdItemIdNotFound.t} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_dogma_dynamic_items_type_id_item_id(connection, item_id, type_id, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :"If-None-Match" => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/dogma/dynamic/items/#{type_id}/#{item_id}/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, EveESI.Model.GetDogmaDynamicItemsTypeIdItemIdOk},
      {304, false},
      {400, EveESI.Model.BadRequest},
      {404, EveESI.Model.GetDogmaDynamicItemsTypeIdItemIdNotFound},
      {420, EveESI.Model.ErrorLimited},
      {500, EveESI.Model.InternalServerError},
      {503, EveESI.Model.ServiceUnavailable},
      {504, EveESI.Model.GatewayTimeout}
    ])
  end

  @doc """
  Get effects
  Get a list of dogma effect ids  --- Alternate route: `/dev/dogma/effects/`  Alternate route: `/legacy/dogma/effects/`  Alternate route: `/v1/dogma/effects/`  --- This route expires daily at 11:05

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag

  ### Returns

  - `{:ok, [%Integer{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_dogma_effects(Tesla.Env.client, keyword()) :: {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, EveESI.Model.BadRequest.t} | {:ok, [integer()]} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_dogma_effects(connection, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :"If-None-Match" => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/dogma/effects/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, []},
      {304, false},
      {400, EveESI.Model.BadRequest},
      {420, EveESI.Model.ErrorLimited},
      {500, EveESI.Model.InternalServerError},
      {503, EveESI.Model.ServiceUnavailable},
      {504, EveESI.Model.GatewayTimeout}
    ])
  end

  @doc """
  Get effect information
  Get information on a dogma effect  --- Alternate route: `/dev/dogma/effects/{effect_id}/`  Alternate route: `/v2/dogma/effects/{effect_id}/`  --- This route expires daily at 11:05

  ### Parameters

  - `connection` (EveESI.Connection): Connection to server
  - `effect_id` (integer()): A dogma effect ID
  - `opts` (keyword): Optional parameters
    - `:datasource` (String.t): The server name you would like data from
    - `:"If-None-Match"` (String.t): ETag from a previous request. A 304 will be returned if this matches the current ETag

  ### Returns

  - `{:ok, EveESI.Model.GetDogmaEffectsEffectIdOk.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_dogma_effects_effect_id(Tesla.Env.client, integer(), keyword()) :: {:ok, nil} | {:ok, EveESI.Model.ErrorLimited.t} | {:ok, EveESI.Model.InternalServerError.t} | {:ok, EveESI.Model.ServiceUnavailable.t} | {:ok, EveESI.Model.GetDogmaEffectsEffectIdNotFound.t} | {:ok, EveESI.Model.BadRequest.t} | {:ok, EveESI.Model.GetDogmaEffectsEffectIdOk.t} | {:ok, EveESI.Model.GatewayTimeout.t} | {:error, Tesla.Env.t}
  def get_dogma_effects_effect_id(connection, effect_id, opts \\ []) do
    optional_params = %{
      :datasource => :query,
      :"If-None-Match" => :headers
    }

    request =
      %{}
      |> method(:get)
      |> url("/dogma/effects/#{effect_id}/")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, EveESI.Model.GetDogmaEffectsEffectIdOk},
      {304, false},
      {400, EveESI.Model.BadRequest},
      {404, EveESI.Model.GetDogmaEffectsEffectIdNotFound},
      {420, EveESI.Model.ErrorLimited},
      {500, EveESI.Model.InternalServerError},
      {503, EveESI.Model.ServiceUnavailable},
      {504, EveESI.Model.GatewayTimeout}
    ])
  end
end
