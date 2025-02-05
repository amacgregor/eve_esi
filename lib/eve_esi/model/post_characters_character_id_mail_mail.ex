# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.PostCharactersCharacterIdMailMail do
  @moduledoc """
  mail object
  """

  @derive Jason.Encoder
  defstruct [
    :approved_cost,
    :body,
    :recipients,
    :subject
  ]

  @type t :: %__MODULE__{
    :approved_cost => integer() | nil,
    :body => String.t,
    :recipients => [EveESI.Model.PostCharactersCharacterIdMailRecipient.t],
    :subject => String.t
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:recipients, :list, EveESI.Model.PostCharactersCharacterIdMailRecipient)
  end
end

