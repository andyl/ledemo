defmodule PleDemoWeb.PageView do
  use PleDemoWeb, :view
  require Phoenix.LiveEditable.Svg

  alias Phoenix.LiveEditable.Svg

  def bo(),  do: Svg.inline_tag("BootstrapOk")
  def bc(),  do: Svg.inline_tag("BootstrapCancel")
  def mo(),  do: Svg.inline_tag("MilligramOk")
  def mc(),  do: Svg.inline_tag("MilligramCancel")
end
