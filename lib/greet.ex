defmodule Mix.Tasks.Greet do
  use Mix.Task

  @shortdoc "Run the greeter-application from command-line"
  @doc """
    The LessonTwo-application was built using Mix. Mix defines an OTP-application
    in `lib/lesson_two/*`. This bit of code is necessary to run the application
    from the command-line.
        mix greet A B C
  """
  def run(args) do
    IO.puts( LessonTwo.greet(args) )
  end
end
