# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCharactersCharacterIdAssetsNotFound do
  @moduledoc """
  Requested page does not exist
  """

  @derive Jason.Encoder
  defstruct [
    :error
  ]

  @type t :: %__MODULE__{
    :error => String.t | nil
  }

  def decode(value) do
    value
  end
end

