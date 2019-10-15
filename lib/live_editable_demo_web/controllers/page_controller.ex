defmodule LiveEditableDemoWeb.PageController do
  use LiveEditableDemoWeb, :controller

  @milligram {LiveEditableDemoWeb.LayoutView, "milligram.html"}
  @bootstrap {LiveEditableDemoWeb.LayoutView, "bootstrap.html"}

  def index(conn, _params) do
    render(conn, "index.html", layout: @milligram)
  end

  def milligram(conn, _params) do
    render(conn, "milligram.html", layout: @milligram)
  end

  def bootstrap4(conn, _params) do
    render(conn, "bootstrap.html", layout: @bootstrap)
  end
end
