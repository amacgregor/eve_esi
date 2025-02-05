# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetCorporationsCorporationIdIndustryJobs200Ok do
  @moduledoc """
  200 ok object
  """

  @derive Jason.Encoder
  defstruct [
    :activity_id,
    :blueprint_id,
    :blueprint_location_id,
    :blueprint_type_id,
    :completed_character_id,
    :completed_date,
    :cost,
    :duration,
    :end_date,
    :facility_id,
    :installer_id,
    :job_id,
    :licensed_runs,
    :location_id,
    :output_location_id,
    :pause_date,
    :probability,
    :product_type_id,
    :runs,
    :start_date,
    :status,
    :successful_runs
  ]

  @type t :: %__MODULE__{
    :activity_id => integer(),
    :blueprint_id => integer(),
    :blueprint_location_id => integer(),
    :blueprint_type_id => integer(),
    :completed_character_id => integer() | nil,
    :completed_date => DateTime.t | nil,
    :cost => float() | nil,
    :duration => integer(),
    :end_date => DateTime.t,
    :facility_id => integer(),
    :installer_id => integer(),
    :job_id => integer(),
    :licensed_runs => integer() | nil,
    :location_id => integer(),
    :output_location_id => integer(),
    :pause_date => DateTime.t | nil,
    :probability => float() | nil,
    :product_type_id => integer() | nil,
    :runs => integer(),
    :start_date => DateTime.t,
    :status => String.t,
    :successful_runs => integer() | nil
  }

  alias EveESI.Deserializer

  def decode(value) do
    value
     |> Deserializer.deserialize(:completed_date, :datetime, nil)
     |> Deserializer.deserialize(:end_date, :datetime, nil)
     |> Deserializer.deserialize(:pause_date, :datetime, nil)
     |> Deserializer.deserialize(:start_date, :datetime, nil)
  end
end

