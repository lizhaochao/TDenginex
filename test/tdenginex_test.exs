defmodule TDenginexTest do
  use ExUnit.Case
  doctest TDenginex

  test "say hello" do
    assert TDenginex.hello() == :TDengine
  end
end
