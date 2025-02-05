# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCorporationsCorporationIdContainersLogs200Ok do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :action,
    :character_id,
    :container_id,
    :container_type_id,
    :location_flag,
    :location_id,
    :logged_at,
    :new_config_bitmask,
    :old_config_bitmask,
    :password_type,
    :quantity,
    :type_id
  ]

  @type t :: %__MODULE__{
    :action => String.t,
    :character_id => integer(),
    :container_id => integer(),
    :container_type_id => integer(),
    :location_flag => String.t,
    :location_id => integer(),
    :logged_at => DateTime.t,
    :new_config_bitmask => integer() | nil,
    :old_config_bitmask => integer() | nil,
    :password_type => String.t | nil,
    :quantity => integer() | nil,
    :type_id => integer() | nil
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:logged_at, :datetime, nil)
  end
end

