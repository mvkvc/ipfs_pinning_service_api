# NOTE: This file is auto generated by OpenAPI Generator 7.1.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule IPFSPinningServiceAPI.Model.Pin do
  @moduledoc """
  Pin object
  """

  @derive Jason.Encoder
  defstruct [
    :cid,
    :name,
    :origins,
    :meta
  ]

  @type t :: %__MODULE__{
    :cid => String.t,
    :name => String.t | nil,
    :origins => [String.t] | nil,
    :meta => %{optional(String.t) => String.t} | nil
  }

  def decode(value) do
    value
  end
end

