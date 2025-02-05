# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetUniverseSystemsSystemIdOk do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :constellation_id,
    :name,
    :planets,
    :position,
    :security_class,
    :security_status,
    :star_id,
    :stargates,
    :stations,
    :system_id
  ]

  @type t :: %__MODULE__{
    :constellation_id => integer(),
    :name => String.t,
    :planets => [EveESI.Model.GetUniverseSystemsSystemIdPlanet.t] | nil,
    :position => EveESI.Model.GetUniverseSystemsSystemIdPosition.t,
    :security_class => String.t | nil,
    :security_status => float(),
    :star_id => integer() | nil,
    :stargates => [integer()] | nil,
    :stations => [integer()] | nil,
    :system_id => integer()
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:planets, :list, EveESI.Model.GetUniverseSystemsSystemIdPlanet)
     |> Deserializer.deserialize(:position, :struct, EveESI.Model.GetUniverseSystemsSystemIdPosition)
  end
end

