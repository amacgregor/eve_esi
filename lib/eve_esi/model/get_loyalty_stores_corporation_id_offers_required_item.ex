# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetLoyaltyStoresCorporationIdOffersRequiredItem do
  @moduledoc """
  required_item object
  """

  @derive Jason.Encoder
  defstruct [
    :quantity,
    :type_id
  ]

  @type t :: %__MODULE__{
    :quantity => integer(),
    :type_id => integer()
  }

  def decode(value) do
    value
  end
end

