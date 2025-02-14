# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetUniverseConstellationsConstellationIdOk do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :constellation_id,
    :name,
    :position,
    :region_id,
    :systems
  ]

  @type t :: %__MODULE__{
    :constellation_id => integer(),
    :name => String.t,
    :position => EveESI.Model.GetUniverseConstellationsConstellationIdPosition.t,
    :region_id => integer(),
    :systems => [integer()]
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:position, :struct, EveESI.Model.GetUniverseConstellationsConstellationIdPosition)
  end
end

