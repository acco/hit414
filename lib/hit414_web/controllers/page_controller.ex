defmodule Hit414Web.PageController do
  use Hit414Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
