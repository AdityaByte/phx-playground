defmodule PhxPlaygroundWeb.HelloHTML do
  use PhxPlaygroundWeb, :html

  # Since this is a view we can render templates over there.
  def index(assigns) do
    # Here we defined a ~H sigil which in which we are using a templating language called HEEx.
    ~H"""
    Hello aditya!
    """
  end
end
