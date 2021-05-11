defmodule ListFilterTest do
  use ExUnit.Case

  test "should return 0 if a empty list is given" do
    expected_response = 0

    response = ListFilter.call([])

    assert response == expected_response
  end

  test "should return 0 if no odd number is given" do
    expected_response = 0

    response = ListFilter.call(["2", "16", "20"])

    assert response == expected_response
  end

  test "should return the given number of odd numbers" do
    expected_response = 3

    response = ListFilter.call(["2", "3", "16", "patrick", "20", "15", "9"])

    assert response == expected_response
  end
end
