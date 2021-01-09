defmodule Maki.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Maki.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Maki.PubSub}
      # Start a worker by calling: Maki.Worker.start_link(arg)
      # {Maki.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Maki.Supervisor)
  end
end
