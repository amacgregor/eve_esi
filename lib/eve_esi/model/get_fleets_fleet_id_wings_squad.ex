# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetFleetsFleetIdWingsSquad do
  @moduledoc """
  squad object
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name
  ]

  @type t :: %__MODULE__{
    :id => integer(),
    :name => String.t
  }

  def decode(value) do
    value
  end
end

