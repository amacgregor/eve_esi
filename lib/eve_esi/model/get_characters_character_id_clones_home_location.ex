# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCharactersCharacterIdClonesHomeLocation do
  @moduledoc """
  home_location object
  """

  @derive Jason.Encoder
  defstruct [
    :location_id,
    :location_type
  ]

  @type t :: %__MODULE__{
    :location_id => integer() | nil,
    :location_type => String.t | nil
  }

  def decode(value) do
    value
  end
end

