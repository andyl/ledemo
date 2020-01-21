defmodule LedemoWeb.Live.HomeDemo do
  use Phoenix.LiveView

  import Phoenix.LiveEditable

  def mount(_session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <b style='margin-right: 60px;'>TRY IT!</b>
    <span style='margin-right: 60px;'>
    Edit This Field: <%= live_edit assigns, "TEXT", id: "home_demo", type: "text", on_submit: "update" %>
    </span>
    Value: BONGGG
    """
  end

  def handle_event("update", value, socket) do
    IO.inspect value
    IO.inspect socket
    {:ok, socket}
  end
end
