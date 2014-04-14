defmodule Mix.Tasks.Greet do
  use Mix.Task

  @shortdoc "Run the greeter-application from command-line"
  def run(args) do
    IO.puts( LessonTwo.greet(args) )
  end
end
