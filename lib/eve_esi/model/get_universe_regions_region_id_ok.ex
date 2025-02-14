# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetUniverseRegionsRegionIdOk do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :constellations,
    :description,
    :name,
    :region_id
  ]

  @type t :: %__MODULE__{
    :constellations => [integer()],
    :description => String.t | nil,
    :name => String.t,
    :region_id => integer()
  }

  def decode(value) do
    value
  end
end

