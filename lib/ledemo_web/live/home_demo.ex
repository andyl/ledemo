defmodule LedemoWeb.Live.HomeDemo do
  use Phoenix.LiveView

  use Phoenix.LiveEditable

  def mount(_session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
    <style>
      .editable-click { cursor: pointer;}
    </style>

    <b style='margin-right: 60px;'>TRY IT!</b>
    <span style='margin-right: 60px;'>
    Edit This Field: <%= live_edit(assigns, "TEXT", id: "home_demo", type: "text", on_submit: "update") %>
    </span>
    Value: BONGGG
    <p><p/>

    <%= live_edit(assigns, "asdf", type: "text", id: "one",   on_submit: 'saveit') %><br/>
    <%= live_edit(assigns, "qwer", type: "text", id: "two",   on_submit: 'saveit') %><br/>
    <%= live_edit(assigns, "zxcv", type: "text", id: "three", on_submit: 'saveit') %><br/>
    """
  end

  def handle_event(tag, value, socket) do
    IO.inspect tag
    IO.inspect value
    IO.inspect socket
    {:ok, socket}
  end
end
