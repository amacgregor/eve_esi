# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetUniverseAsteroidBeltsAsteroidBeltIdOk do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :name,
    :position,
    :system_id
  ]

  @type t :: %__MODULE__{
    :name => String.t,
    :position => EveESI.Model.GetUniverseAsteroidBeltsAsteroidBeltIdPosition.t,
    :system_id => integer()
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:position, :struct, EveESI.Model.GetUniverseAsteroidBeltsAsteroidBeltIdPosition)
  end
end

