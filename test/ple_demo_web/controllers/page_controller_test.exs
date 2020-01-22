defmodule PleDemoWeb.PageControllerTest do
  use PleDemoWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Phoenix"
  end
end
