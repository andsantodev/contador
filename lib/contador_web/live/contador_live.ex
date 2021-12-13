defmodule ContadorWeb.ContadorLive do
  use ContadorWeb, :live_view

  # valor inicial do contador
  def mount(_params, _session, socket) do
    socket = assign(socket, :counter, 0)
    {:ok, socket}
  end

  # estrutura da página
  def render(assigns) do
    ~L"""
      <h1>Current count: <%= @counter %></h1>

      <button phx-click="inc"> +1 </button>
      <button phx-click="reset"> Reset </button>
    """
  end

  # evento incremento
  def handle_event("inc", _, socket) do

    # simplificado com "update"
    # socket = update(socket, :counter, &(&1 + 1))

    # normal sem "update"
    valor = socket.assigns.counter + 1
    socket = assign(socket, :counter, valor)

    {:noreply, socket}
  end

  # evento reset
  def handle_event("reset", _, socket) do
    socket = assign(socket, :counter, 0)
    {:noreply, socket}
  end
end
