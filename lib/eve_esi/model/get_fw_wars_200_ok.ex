# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetFwWars200Ok do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :against_id,
    :faction_id
  ]

  @type t :: %__MODULE__{
    :against_id => integer(),
    :faction_id => integer()
  }

  def decode(value) do
    value
  end
end

