defmodule ContadorWeb.PageController do
  use ContadorWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
