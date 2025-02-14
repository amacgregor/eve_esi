# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCorporationsCorporationIdOk do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :alliance_id,
    :ceo_id,
    :creator_id,
    :date_founded,
    :description,
    :faction_id,
    :home_station_id,
    :member_count,
    :name,
    :shares,
    :tax_rate,
    :ticker,
    :url,
    :war_eligible
  ]

  @type t :: %__MODULE__{
    :alliance_id => integer() | nil,
    :ceo_id => integer(),
    :creator_id => integer(),
    :date_founded => DateTime.t | nil,
    :description => String.t | nil,
    :faction_id => integer() | nil,
    :home_station_id => integer() | nil,
    :member_count => integer(),
    :name => String.t,
    :shares => integer() | nil,
    :tax_rate => float(),
    :ticker => String.t,
    :url => String.t | nil,
    :war_eligible => boolean() | nil
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:date_founded, :datetime, nil)
  end
end

