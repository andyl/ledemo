defmodule PleDemoWeb.PageView do
  use PleDemoWeb, :view
  require Phoenix.LiveEditable.Svg

  alias Phoenix.LiveEditable.Svg

  def bo(),  do: Svg.inline_tag("SquareOk")
  def bc(),  do: Svg.inline_tag("SquareCancel")
  def mo(),  do: Svg.inline_tag("CircleOk")
  def mc(),  do: Svg.inline_tag("CircleCancel")
end
