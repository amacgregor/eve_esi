# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCharactersCharacterIdPlanetsPlanetIdOk do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :links,
    :pins,
    :routes
  ]

  @type t :: %__MODULE__{
    :links => [EveESI.Model.GetCharactersCharacterIdPlanetsPlanetIdLink.t],
    :pins => [EveESI.Model.GetCharactersCharacterIdPlanetsPlanetIdPin.t],
    :routes => [EveESI.Model.GetCharactersCharacterIdPlanetsPlanetIdRoute.t]
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:links, :list, EveESI.Model.GetCharactersCharacterIdPlanetsPlanetIdLink)
     |> Deserializer.deserialize(:pins, :list, EveESI.Model.GetCharactersCharacterIdPlanetsPlanetIdPin)
     |> Deserializer.deserialize(:routes, :list, EveESI.Model.GetCharactersCharacterIdPlanetsPlanetIdRoute)
  end
end

