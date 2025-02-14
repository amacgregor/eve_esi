# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCharactersCharacterIdRolesOk do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :roles,
    :roles_at_base,
    :roles_at_hq,
    :roles_at_other
  ]

  @type t :: %__MODULE__{
    :roles => [String.t] | nil,
    :roles_at_base => [String.t] | nil,
    :roles_at_hq => [String.t] | nil,
    :roles_at_other => [String.t] | nil
  }

  def decode(value) do
    value
  end
end

