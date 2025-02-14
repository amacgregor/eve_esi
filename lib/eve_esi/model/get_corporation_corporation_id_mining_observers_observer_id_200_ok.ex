# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCorporationCorporationIdMiningObserversObserverId200Ok do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :character_id,
    :last_updated,
    :quantity,
    :recorded_corporation_id,
    :type_id
  ]

  @type t :: %__MODULE__{
    :character_id => integer(),
    :last_updated => Date.t,
    :quantity => integer(),
    :recorded_corporation_id => integer(),
    :type_id => integer()
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:last_updated, :date, nil)
  end
end

