# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetUniverseSystemsSystemIdPlanet do
  @moduledoc """
  planet object
  """

  @derive Jason.Encoder
  defstruct [
    :asteroid_belts,
    :moons,
    :planet_id
  ]

  @type t :: %__MODULE__{
    :asteroid_belts => [integer()] | nil,
    :moons => [integer()] | nil,
    :planet_id => integer()
  }

  def decode(value) do
    value
  end
end

