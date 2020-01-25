defmodule PleDemoWeb.PageController do
  use PleDemoWeb, :controller

  @milligram  {PleDemoWeb.LayoutView, "milligram.html"}
  @bootstrap4 {PleDemoWeb.LayoutView, "bootstrap4.html"}

  def index(conn, _params) do
    render(conn, "index.html", layout: @milligram)
  end

  def bootstrap4(conn, _params) do
    render(conn, "bootstrap4.html", layout: @bootstrap4)
  end

  def milligram(conn, _params) do
    render(conn, "milligram.html", layout: @milligram)
  end

end
