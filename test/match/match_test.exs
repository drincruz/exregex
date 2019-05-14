defmodule Exregex.MatchTest do
  use ExUnit.Case
  alias Exregex.Match

  describe "match functionality" do
    test "exact string matches" do
      assert Match.matches?("abc", "abc")
    end

    test "dot character matches" do
      assert Match.matches?("abc", "a.c")
    end
  end
end
