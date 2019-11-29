defmodule EvieWeb.PageController do
  use EvieWeb, :controller

  def index(conn, _params) do

    render(conn, "index.html")
  end
end
