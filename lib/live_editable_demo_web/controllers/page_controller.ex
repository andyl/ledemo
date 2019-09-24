defmodule LiveEditableDemoWeb.PageController do
  use LiveEditableDemoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def html(conn, _params) do
    render(conn, "html.html")
  end

  def milligram(conn, _params) do
    render(conn, "milligram.html")
  end

  def bootstrap4(conn, _params) do
    render(conn, "bootstrap4.html")
  end
end
