defmodule GrpcDemo.MixProject do
  use Mix.Project

  def project do
    [
      app: :grpc_demo,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {GrpcDemo.App, []},
      applications: [:logger, :grpc]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
        {:grpc, github: "tony612/grpc-elixir"}
    ]
  end
end
