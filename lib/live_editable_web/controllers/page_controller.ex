defmodule LiveEditableWeb.PageController do
  use LiveEditableWeb, :controller

  @milligram {LiveEditableWeb.LayoutView, "milligram.html"}
  @bootstrap {LiveEditableWeb.LayoutView, "bootstrap.html"}

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
