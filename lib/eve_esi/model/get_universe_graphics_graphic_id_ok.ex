# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetUniverseGraphicsGraphicIdOk do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :collision_file,
    :graphic_file,
    :graphic_id,
    :icon_folder,
    :sof_dna,
    :sof_fation_name,
    :sof_hull_name,
    :sof_race_name
  ]

  @type t :: %__MODULE__{
    :collision_file => String.t | nil,
    :graphic_file => String.t | nil,
    :graphic_id => integer(),
    :icon_folder => String.t | nil,
    :sof_dna => String.t | nil,
    :sof_fation_name => String.t | nil,
    :sof_hull_name => String.t | nil,
    :sof_race_name => String.t | nil
  }

  def decode(value) do
    value
  end
end

