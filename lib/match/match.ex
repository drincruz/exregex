defmodule Exregex.Match do
  @moduledoc """
  Define how a Match module will be.

  With respect to a Regex module, let's define how a Match would look like.
  """
  @spec matches?(str :: String.t(), pattern :: String.t()) :: boolean()
  def matches?(str, pattern) do
    pattern
    |> String.codepoints()
    contains_dot?()
  end

  def matches?(str, pattern) do
    String.equivalent?(str, pattern)
  end

  defp contains_dot?(str_list) when "." in str_list do
    :true
  end
  defp contains_dot?(str_list), do: :false
end
