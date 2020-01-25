defmodule PleDemoWeb.LayoutView do
  use PleDemoWeb, :view

  def header_nav(conn) do
    ph = conn.request_path
    {:safe, "#{mi(ph, "Home")} | #{mi(ph, "Milligram")} | #{mi(ph, "Bootstrap4")}"}
  end

  defp mi("/", "Home"), do: "<b>Home</b>"
  defp mi(_, "Home"), do: "<a href='/'>Home</a>"
  defp mi("/bootstrap4", "Bootstrap4"), do: "<b>Bootstrap4</b>"
  defp mi(_, "Bootstrap4"), do: "<a href='/bootstrap4'>Bootstrap4</a>"
  defp mi("/milligram", "Milligram"), do: "<b>Milligram</b>"
  defp mi(_, "Milligram"), do: "<a href='/milligram'>Milligram</a>"
end
