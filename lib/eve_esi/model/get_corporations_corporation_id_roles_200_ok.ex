# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCorporationsCorporationIdRoles200Ok do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :character_id,
    :grantable_roles,
    :grantable_roles_at_base,
    :grantable_roles_at_hq,
    :grantable_roles_at_other,
    :roles,
    :roles_at_base,
    :roles_at_hq,
    :roles_at_other
  ]

  @type t :: %__MODULE__{
    :character_id => integer(),
    :grantable_roles => [String.t] | nil,
    :grantable_roles_at_base => [String.t] | nil,
    :grantable_roles_at_hq => [String.t] | nil,
    :grantable_roles_at_other => [String.t] | nil,
    :roles => [String.t] | nil,
    :roles_at_base => [String.t] | nil,
    :roles_at_hq => [String.t] | nil,
    :roles_at_other => [String.t] | nil
  }

  def decode(value) do
    value
  end
end

