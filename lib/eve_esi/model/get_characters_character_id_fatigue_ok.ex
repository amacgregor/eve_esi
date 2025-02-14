# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCharactersCharacterIdFatigueOk do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :jump_fatigue_expire_date,
    :last_jump_date,
    :last_update_date
  ]

  @type t :: %__MODULE__{
    :jump_fatigue_expire_date => DateTime.t | nil,
    :last_jump_date => DateTime.t | nil,
    :last_update_date => DateTime.t | nil
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:jump_fatigue_expire_date, :datetime, nil)
     |> Deserializer.deserialize(:last_jump_date, :datetime, nil)
     |> Deserializer.deserialize(:last_update_date, :datetime, nil)
  end
end

