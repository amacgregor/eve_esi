# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetFwLeaderboardsCorporationsVictoryPoints do
  @moduledoc """
  Top 10 rankings of corporations by victory points from yesterday, last week and in total
  """

  @derive Jason.Encoder
  defstruct [
    :active_total,
    :last_week,
    :yesterday
  ]

  @type t :: %__MODULE__{
    :active_total => [EveESI.Model.GetFwLeaderboardsCorporationsActiveTotalActiveTotal1.t],
    :last_week => [EveESI.Model.GetFwLeaderboardsCorporationsLastWeekLastWeek1.t],
    :yesterday => [EveESI.Model.GetFwLeaderboardsCorporationsYesterdayYesterday1.t]
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:active_total, :list, EveESI.Model.GetFwLeaderboardsCorporationsActiveTotalActiveTotal1)
     |> Deserializer.deserialize(:last_week, :list, EveESI.Model.GetFwLeaderboardsCorporationsLastWeekLastWeek1)
     |> Deserializer.deserialize(:yesterday, :list, EveESI.Model.GetFwLeaderboardsCorporationsYesterdayYesterday1)
  end
end

