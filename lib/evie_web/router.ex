defmodule EvieWeb.Router do
  use EvieWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug :put_layout, false
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", EvieWeb do
    pipe_through :browser
    get "/", PageController, :index
    get "/dashboard", PageController, :dashboard
    get "/page", PageController, :page
    get "/auth", PageController, :auth
  end

  # Other scopes may use custom stacks.
  # scope "/api", EvieWeb do
  #   pipe_through :api
  # end
end
