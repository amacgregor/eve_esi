# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetWarsWarIdOk do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :aggressor,
    :allies,
    :declared,
    :defender,
    :finished,
    :id,
    :mutual,
    :open_for_allies,
    :retracted,
    :started
  ]

  @type t :: %__MODULE__{
    :aggressor => EveESI.Model.GetWarsWarIdAggressor.t,
    :allies => [EveESI.Model.GetWarsWarIdAlly.t] | nil,
    :declared => DateTime.t,
    :defender => EveESI.Model.GetWarsWarIdDefender.t,
    :finished => DateTime.t | nil,
    :id => integer(),
    :mutual => boolean(),
    :open_for_allies => boolean(),
    :retracted => DateTime.t | nil,
    :started => DateTime.t | nil
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:aggressor, :struct, EveESI.Model.GetWarsWarIdAggressor)
     |> Deserializer.deserialize(:allies, :list, EveESI.Model.GetWarsWarIdAlly)
     |> Deserializer.deserialize(:declared, :datetime, nil)
     |> Deserializer.deserialize(:defender, :struct, EveESI.Model.GetWarsWarIdDefender)
     |> Deserializer.deserialize(:finished, :datetime, nil)
     |> Deserializer.deserialize(:retracted, :datetime, nil)
     |> Deserializer.deserialize(:started, :datetime, nil)
  end
end

