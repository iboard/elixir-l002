defmodule LessonTwo do
  use Application.Behaviour

  # See http://elixir-lang.org/docs/stable/Application.Behaviour.html
  # for more information on OTP Applications
  def start(_type, _args) do
    LessonTwo.Supervisor.start_link
  end

  @shortdoc "Output help if no names are given"
  def greet([]) do
    "Please provide a list of names."
  end

  @doc """
  Output a special greeting of only one name is given
  """
  def greet([only|t]) when t == [] do
    "Hello " <> only <> ", nice to meet you."
  end

  @doc """
  Output Hello with a list of names, separated by comma
  """
  def greet([name|additional_names]) do
    "Hello " <> name <> ", " <> add_names(additional_names)
  end


  # Add 'and' before the last element.
  defp add_names( [head|[]] ) do
    "and " <> head
  end

  # Concatinate names with comma.
  defp add_names( [head|tail] ) do
    head <> ", " <> add_names(tail)
  end

end
