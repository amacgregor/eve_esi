# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCharactersCharacterIdOnlineOk do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :last_login,
    :last_logout,
    :logins,
    :online
  ]

  @type t :: %__MODULE__{
    :last_login => DateTime.t | nil,
    :last_logout => DateTime.t | nil,
    :logins => integer() | nil,
    :online => boolean()
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:last_login, :datetime, nil)
     |> Deserializer.deserialize(:last_logout, :datetime, nil)
  end
end

