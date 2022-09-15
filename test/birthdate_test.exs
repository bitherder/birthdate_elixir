defmodule BirthdateTest do
  use ExUnit.Case
  doctest Birthdate

  defp today(), do: ~D[2022-06-15]
  defp future(), do: Date.add(today, 2)

  describe ".new" do
    test "accepts recent date" do
      assert {:ok, _} == Birthdate.new(~D[1965-03-24])
    end

    test "accepts recent date with explicit today" do
      assert {:ok, _} == Birthdate.new(~D[1965-03-24], today())
    end

    test "rejects future date" do
      assert {:error, "future date"} == Birthdate.new(future(), today())
    end
  end
end
