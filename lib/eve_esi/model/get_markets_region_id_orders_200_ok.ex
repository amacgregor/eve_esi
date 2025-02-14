# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetMarketsRegionIdOrders200Ok do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :duration,
    :is_buy_order,
    :issued,
    :location_id,
    :min_volume,
    :order_id,
    :price,
    :range,
    :system_id,
    :type_id,
    :volume_remain,
    :volume_total
  ]

  @type t :: %__MODULE__{
    :duration => integer(),
    :is_buy_order => boolean(),
    :issued => DateTime.t,
    :location_id => integer(),
    :min_volume => integer(),
    :order_id => integer(),
    :price => float(),
    :range => String.t,
    :system_id => integer(),
    :type_id => integer(),
    :volume_remain => integer(),
    :volume_total => integer()
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:issued, :datetime, nil)
  end
end

