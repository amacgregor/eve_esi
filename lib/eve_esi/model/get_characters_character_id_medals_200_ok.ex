# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCharactersCharacterIdMedals200Ok do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :corporation_id,
    :date,
    :description,
    :graphics,
    :issuer_id,
    :medal_id,
    :reason,
    :status,
    :title
  ]

  @type t :: %__MODULE__{
    :corporation_id => integer(),
    :date => DateTime.t,
    :description => String.t,
    :graphics => [EveESI.Model.GetCharactersCharacterIdMedalsGraphic.t],
    :issuer_id => integer(),
    :medal_id => integer(),
    :reason => String.t,
    :status => String.t,
    :title => String.t
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:date, :datetime, nil)
     |> Deserializer.deserialize(:graphics, :list, EveESI.Model.GetCharactersCharacterIdMedalsGraphic)
  end
end

