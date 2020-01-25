defmodule PleDemoWeb.Router do
  use PleDemoWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug Phoenix.LiveView.Flash
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PleDemoWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/bootstrap4", PageController, :bootstrap4
    get "/milligram", PageController, :milligram
  end
end
