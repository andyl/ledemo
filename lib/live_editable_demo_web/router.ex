defmodule LiveEditableDemoWeb.Router do
  use LiveEditableDemoWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LiveEditableDemoWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/html", PageController, :html
    get "/milligram", PageController, :milligram
    get "/bootstrap4", PageController, :bootstrap4
  end
end
