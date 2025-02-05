# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCharactersCharacterIdSkillsSkill do
  @moduledoc """
  skill object
  """

  @derive Jason.Encoder
  defstruct [
    :active_skill_level,
    :skill_id,
    :skillpoints_in_skill,
    :trained_skill_level
  ]

  @type t :: %__MODULE__{
    :active_skill_level => integer(),
    :skill_id => integer(),
    :skillpoints_in_skill => integer(),
    :trained_skill_level => integer()
  }

  def decode(value) do
    value
  end
end

