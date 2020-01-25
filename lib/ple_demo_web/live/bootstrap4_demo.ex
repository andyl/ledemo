defmodule PleDemoWeb.Live.Bootstrap4Demo do
  use Phoenix.LiveView

  use Phoenix.LiveEditable

  def mount(_session, socket) do
    Phoenix.LiveEditable.set_framework(Phoenix.LiveEditable.Bootstrap4)
    opts = %{
      test_1: "1 - CLICK TO EDIT",
      test_2: "2 - CLICK TO EDIT"
    }
    {:ok, assign(socket, opts)}
  end

  def render(assigns) do
    ~L"""
    <div class="ple_wrapper">

    <div class='header_cell'><b>Field Type</b></div>
    <div class='header_cell'><b>Editable Fields</b></div>

    <div>Text Field - Inline</div>
    <div>
    <%= live_edit(assigns, @test_1, type: "text", id: "test_1", on_submit: "update") %>
    </div>

    <div>Text Field - Inline</div>
    <div>
    <%= live_edit(assigns, @test_2, type: "text", id: "test_2", on_submit: "update") %>
    </div>

    </div>
    """
  end

  def handle_event("update", %{"editable_text" => new_val}, socket) do
    case socket.assigns.focus do
      nil -> 
        {:noreply, socket}
      focus -> 
        key = focus |> String.to_atom()
        {:noreply, socket |> assign(key, new_val) |> assign(:focus, nil)}
    end
  end
end
