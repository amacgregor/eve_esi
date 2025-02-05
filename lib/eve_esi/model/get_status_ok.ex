# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetStatusOk do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :players,
    :server_version,
    :start_time,
    :vip
  ]

  @type t :: %__MODULE__{
    :players => integer(),
    :server_version => String.t,
    :start_time => DateTime.t,
    :vip => boolean() | nil
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:start_time, :datetime, nil)
  end
end

