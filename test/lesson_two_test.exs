defmodule LessonTwoTest do

  use ExUnit.Case, async: true
  doctest LessonTwo
  doctest Mix.Tasks.Greet

  test "Give help if list is empty" do
    assert( LessonTwo.greet([]) == "Please provide a list of names." )
  end

  test "Greet a single person" do
    assert( LessonTwo.greet(["Andi"]) ==  "Hello Andi, nice to meet you." )
  end

  test "Greet a list of people" do
    assert( LessonTwo.greet(["Andi","Heidi"]) == "Hello Andi, and Heidi" )
  end

end
