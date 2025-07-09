defmodule PhxPlaygroundWeb.HelloController do
  use PhxPlaygroundWeb, :controller # we will learn more about this later.

  # This is the action function which takes two arguments.
  # conn is a struct which holds a tons of data about the request.
  # params is the request parameter. Here we are not using params that's why i put underscore.
  def index(conn, _params) do
    # The below line tells phoenix to render the index template.
    # Views acts as a presentation layer.
    render(conn, :index)
  end

  # In the parameters of the action function we do pattern matching.
  def show(conn, %{"messenger" => messenger} = params) do
    # Here we passed a third value which is just a key value pair whose key is an atom.
    render(conn, :show, messenger: messenger)
  end
end
