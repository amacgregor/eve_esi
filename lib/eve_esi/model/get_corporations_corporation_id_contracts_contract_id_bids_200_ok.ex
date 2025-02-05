# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCorporationsCorporationIdContractsContractIdBids200Ok do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :amount,
    :bid_id,
    :bidder_id,
    :date_bid
  ]

  @type t :: %__MODULE__{
    :amount => float(),
    :bid_id => integer(),
    :bidder_id => integer(),
    :date_bid => DateTime.t
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:date_bid, :datetime, nil)
  end
end

