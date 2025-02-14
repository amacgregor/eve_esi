# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.PostUniverseIdsOk do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :agents,
    :alliances,
    :characters,
    :constellations,
    :corporations,
    :factions,
    :inventory_types,
    :regions,
    :stations,
    :systems
  ]

  @type t :: %__MODULE__{
    :agents => [EveESI.Model.PostUniverseIdsAgent.t] | nil,
    :alliances => [EveESI.Model.PostUniverseIdsAlliance.t] | nil,
    :characters => [EveESI.Model.PostUniverseIdsCharacter.t] | nil,
    :constellations => [EveESI.Model.PostUniverseIdsConstellation.t] | nil,
    :corporations => [EveESI.Model.PostUniverseIdsCorporation.t] | nil,
    :factions => [EveESI.Model.PostUniverseIdsFaction.t] | nil,
    :inventory_types => [EveESI.Model.PostUniverseIdsInventoryType.t] | nil,
    :regions => [EveESI.Model.PostUniverseIdsRegion.t] | nil,
    :stations => [EveESI.Model.PostUniverseIdsStation.t] | nil,
    :systems => [EveESI.Model.PostUniverseIdsSystem.t] | nil
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:agents, :list, EveESI.Model.PostUniverseIdsAgent)
     |> Deserializer.deserialize(:alliances, :list, EveESI.Model.PostUniverseIdsAlliance)
     |> Deserializer.deserialize(:characters, :list, EveESI.Model.PostUniverseIdsCharacter)
     |> Deserializer.deserialize(:constellations, :list, EveESI.Model.PostUniverseIdsConstellation)
     |> Deserializer.deserialize(:corporations, :list, EveESI.Model.PostUniverseIdsCorporation)
     |> Deserializer.deserialize(:factions, :list, EveESI.Model.PostUniverseIdsFaction)
     |> Deserializer.deserialize(:inventory_types, :list, EveESI.Model.PostUniverseIdsInventoryType)
     |> Deserializer.deserialize(:regions, :list, EveESI.Model.PostUniverseIdsRegion)
     |> Deserializer.deserialize(:stations, :list, EveESI.Model.PostUniverseIdsStation)
     |> Deserializer.deserialize(:systems, :list, EveESI.Model.PostUniverseIdsSystem)
  end
end

