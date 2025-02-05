# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetUniverseConstellationsConstellationIdPosition do
  @moduledoc """
  position object
  """

  @derive Jason.Encoder
  defstruct [
    :x,
    :y,
    :z
  ]

  @type t :: %__MODULE__{
    :x => float(),
    :y => float(),
    :z => float()
  }

  def decode(value) do
    value
  end
end

