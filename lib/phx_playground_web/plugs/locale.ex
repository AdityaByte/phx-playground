# Module Plugs are more likely like interceptors and middleware in other languages.
# Module Plugs are used when we have to tranform the network request.
# Use Case: Like if we wants to check that the user is authenticated or not before the request reached to the controller in that case we can you module plugs and function plugs.

defmodule PhxPlaygroundWeb.Plugs.Locale do
  import Plug.Conn

  @locales ["en", "fr", "de"]

  # This function initialize the arguments that are passed to the call function.
  def init(default), do: default

  # This is the main function which handles the connection transformation
  # Here we implement a function that if the request has parameter of locale like then this plug runs.
  def call(%Plug.Conn{params: %{"locale" => loc}} = conn, _default) when loc in @locales do
    assign(conn, :locale, loc)
  end

  def call(conn, default) do
    assign(conn, :locale, default)
  end
end
