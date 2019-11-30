defmodule EvieWeb.PageController do
  use EvieWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def dashboard(conn, _params) do
    render(conn, "dashboard.html")
  end

  def page(conn, _params) do
    render(conn, "page.html")
  end

  def auth(conn, _params) do
    render(conn, "auth.html")
  end
end
