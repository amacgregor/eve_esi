# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCorporationsCorporationIdBlueprints200Ok do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :item_id,
    :location_flag,
    :location_id,
    :material_efficiency,
    :quantity,
    :runs,
    :time_efficiency,
    :type_id
  ]

  @type t :: %__MODULE__{
    :item_id => integer(),
    :location_flag => String.t,
    :location_id => integer(),
    :material_efficiency => integer(),
    :quantity => integer(),
    :runs => integer(),
    :time_efficiency => integer(),
    :type_id => integer()
  }

  def decode(value) do
    value
  end
end

