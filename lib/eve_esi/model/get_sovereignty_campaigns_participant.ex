# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetSovereigntyCampaignsParticipant do
  @moduledoc """
  participant object
  """

  @derive Jason.Encoder
  defstruct [
    :alliance_id,
    :score
  ]

  @type t :: %__MODULE__{
    :alliance_id => integer(),
    :score => float()
  }

  def decode(value) do
    value
  end
end

