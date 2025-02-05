# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.PostCorporationsCorporationIdAssetsLocations200Ok do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :item_id,
    :position
  ]

  @type t :: %__MODULE__{
    :item_id => integer(),
    :position => EveESI.Model.PostCorporationsCorporationIdAssetsLocationsPosition.t
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:position, :struct, EveESI.Model.PostCorporationsCorporationIdAssetsLocationsPosition)
  end
end

