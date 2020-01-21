defmodule LedemoWeb.Live.Hello do
  use Phoenix.LiveView

  def mount(_session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    HELLO WORLD LIVE EDITABLE
    """
  end
end
