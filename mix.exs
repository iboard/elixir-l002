defmodule LessonTwo.Mixfile do
  use Mix.Project

  def project do
    [ app: :lesson_two,
      version: "0.0.1",
      elixir: "~> 0.12.5",
      deps: deps ]
  end

  # Configuration for the OTP application
  def application do
    [mod: { LessonTwo, [] }]
  end

  # Returns the list of dependencies in the format:
  # { :foobar, git: "https://github.com/elixir-lang/foobar.git", tag: "0.1" }
  #
  # To specify particular versions, regardless of the tag, do:
  # { :barbat, "~> 0.1", github: "elixir-lang/barbat" }
  defp deps do
    [ { :ex_doc, github: "elixir-lang/ex_doc" } ]
  end
end
