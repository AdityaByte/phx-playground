# This is the view module which acts as a mediater in between the controller and the template.
# We can also say that it renders the template.
defmodule PhxPlaygroundWeb.HelloHTML do
  use PhxPlaygroundWeb, :html

  # Since this is a view we can render templates over there.
  # def index(assigns) do
  #   # Here we defined a ~H sigil which in which we are using a templating language called HEEx.
  #   ~H"""
  #   Hello aditya!
  #   """
  # end

  # Defining template in a seperate file.
  # Through the below line we are telling the Phoenix.Component to embed all .heex templates found in
  # the hello_html directory.
  embed_templates "hello_html/*"
  # Since the name of the view is the HelloHTML we have to name the controller as HelloController.
  # We should follow proper naming conventions in frameworks.

  # Note: Note the controller name (HelloController), the view name (HelloHTML), and the template directory (hello_html) all follow the same naming convention and are named after each other
end
