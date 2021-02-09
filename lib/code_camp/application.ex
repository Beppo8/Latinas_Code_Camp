defmodule CodeCamp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      CodeCamp.Repo,
      # Start the Telemetry supervisor
      CodeCampWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: CodeCamp.PubSub},
      # Start the Endpoint (http/https)
      CodeCampWeb.Endpoint
      # Start a worker by calling: CodeCamp.Worker.start_link(arg)
      # {CodeCamp.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: CodeCamp.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    CodeCampWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
