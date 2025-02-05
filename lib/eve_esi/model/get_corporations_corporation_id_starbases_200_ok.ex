# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCorporationsCorporationIdStarbases200Ok do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :moon_id,
    :onlined_since,
    :reinforced_until,
    :starbase_id,
    :state,
    :system_id,
    :type_id,
    :unanchor_at
  ]

  @type t :: %__MODULE__{
    :moon_id => integer() | nil,
    :onlined_since => DateTime.t | nil,
    :reinforced_until => DateTime.t | nil,
    :starbase_id => integer(),
    :state => String.t | nil,
    :system_id => integer(),
    :type_id => integer(),
    :unanchor_at => DateTime.t | nil
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:onlined_since, :datetime, nil)
     |> Deserializer.deserialize(:reinforced_until, :datetime, nil)
     |> Deserializer.deserialize(:unanchor_at, :datetime, nil)
  end
end

