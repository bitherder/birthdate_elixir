defmodule BirthdateTest do
  use ExUnit.Case
  doctest Birthdate

  test ".new" do
    assert Birthdate.new() == :world
  end
end
