# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.PostFleetsFleetIdMembersInvitation do
  @moduledoc """
  invitation object
  """

  @derive Jason.Encoder
  defstruct [
    :character_id,
    :role,
    :squad_id,
    :wing_id
  ]

  @type t :: %__MODULE__{
    :character_id => integer(),
    :role => String.t,
    :squad_id => integer() | nil,
    :wing_id => integer() | nil
  }

  def decode(value) do
    value
  end
end

