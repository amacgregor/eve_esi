# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCorporationsCorporationIdAssets200Ok do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :is_blueprint_copy,
    :is_singleton,
    :item_id,
    :location_flag,
    :location_id,
    :location_type,
    :quantity,
    :type_id
  ]

  @type t :: %__MODULE__{
    :is_blueprint_copy => boolean() | nil,
    :is_singleton => boolean(),
    :item_id => integer(),
    :location_flag => String.t,
    :location_id => integer(),
    :location_type => String.t,
    :quantity => integer(),
    :type_id => integer()
  }

  def decode(value) do
    value
  end
end

