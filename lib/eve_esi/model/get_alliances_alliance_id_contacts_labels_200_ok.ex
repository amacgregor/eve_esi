# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetAlliancesAllianceIdContactsLabels200Ok do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :label_id,
    :label_name
  ]

  @type t :: %__MODULE__{
    :label_id => integer(),
    :label_name => String.t
  }

  def decode(value) do
    value
  end
end

