# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCharactersCharacterIdFleetOk do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :fleet_id,
    :role,
    :squad_id,
    :wing_id
  ]

  @type t :: %__MODULE__{
    :fleet_id => integer(),
    :role => String.t,
    :squad_id => integer(),
    :wing_id => integer()
  }

  def decode(value) do
    value
  end
end

