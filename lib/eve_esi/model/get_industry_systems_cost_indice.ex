# NOTE: This file is auto generated by OpenAPI Generator 7.11.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule EveESI.Model.GetIndustrySystemsCostIndice do
  @moduledoc """
  cost_indice object
  """

  @derive Jason.Encoder
  defstruct [
    :activity,
    :cost_index
  ]

  @type t :: %__MODULE__{
    :activity => String.t,
    :cost_index => float()
  }

  def decode(value) do
    value
  end
end

