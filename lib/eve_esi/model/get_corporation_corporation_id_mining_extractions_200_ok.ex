# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCorporationCorporationIdMiningExtractions200Ok do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :chunk_arrival_time,
    :extraction_start_time,
    :moon_id,
    :natural_decay_time,
    :structure_id
  ]

  @type t :: %__MODULE__{
    :chunk_arrival_time => DateTime.t,
    :extraction_start_time => DateTime.t,
    :moon_id => integer(),
    :natural_decay_time => DateTime.t,
    :structure_id => integer()
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:chunk_arrival_time, :datetime, nil)
     |> Deserializer.deserialize(:extraction_start_time, :datetime, nil)
     |> Deserializer.deserialize(:natural_decay_time, :datetime, nil)
  end
end

