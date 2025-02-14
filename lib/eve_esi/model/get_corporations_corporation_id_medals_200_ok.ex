# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCorporationsCorporationIdMedals200Ok do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :created_at,
    :creator_id,
    :description,
    :medal_id,
    :title
  ]

  @type t :: %__MODULE__{
    :created_at => DateTime.t,
    :creator_id => integer(),
    :description => String.t,
    :medal_id => integer(),
    :title => String.t
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:created_at, :datetime, nil)
  end
end

