# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCharactersCharacterIdBookmarks200Ok do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :bookmark_id,
    :coordinates,
    :created,
    :creator_id,
    :folder_id,
    :item,
    :label,
    :location_id,
    :notes
  ]

  @type t :: %__MODULE__{
    :bookmark_id => integer(),
    :coordinates => EveESI.Model.GetCharactersCharacterIdBookmarksCoordinates.t | nil,
    :created => DateTime.t,
    :creator_id => integer(),
    :folder_id => integer() | nil,
    :item => EveESI.Model.GetCharactersCharacterIdBookmarksItem.t | nil,
    :label => String.t,
    :location_id => integer(),
    :notes => String.t
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:coordinates, :struct, EveESI.Model.GetCharactersCharacterIdBookmarksCoordinates)
     |> Deserializer.deserialize(:created, :datetime, nil)
     |> Deserializer.deserialize(:item, :struct, EveESI.Model.GetCharactersCharacterIdBookmarksItem)
  end
end

