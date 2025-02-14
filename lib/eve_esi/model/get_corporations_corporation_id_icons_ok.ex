# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCorporationsCorporationIdIconsOk do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :px128x128,
    :px256x256,
    :px64x64
  ]

  @type t :: %__MODULE__{
    :px128x128 => String.t | nil,
    :px256x256 => String.t | nil,
    :px64x64 => String.t | nil
  }

  def decode(value) do
    value
  end
end

