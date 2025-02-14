# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetUniverseStationsStationIdOk do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :max_dockable_ship_volume,
    :name,
    :office_rental_cost,
    :owner,
    :position,
    :race_id,
    :reprocessing_efficiency,
    :reprocessing_stations_take,
    :services,
    :station_id,
    :system_id,
    :type_id
  ]

  @type t :: %__MODULE__{
    :max_dockable_ship_volume => float(),
    :name => String.t,
    :office_rental_cost => float(),
    :owner => integer() | nil,
    :position => EveESI.Model.GetUniverseStationsStationIdPosition.t,
    :race_id => integer() | nil,
    :reprocessing_efficiency => float(),
    :reprocessing_stations_take => float(),
    :services => [String.t],
    :station_id => integer(),
    :system_id => integer(),
    :type_id => integer()
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:position, :struct, EveESI.Model.GetUniverseStationsStationIdPosition)
  end
end

