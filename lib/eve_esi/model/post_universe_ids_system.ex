# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.PostUniverseIdsSystem do
  @moduledoc """
  system object
  """

  @derive Jason.Encoder
  defstruct [
    :id,
    :name
  ]

  @type t :: %__MODULE__{
    :id => integer() | nil,
    :name => String.t | nil
  }

  def decode(value) do
    value
  end
end

