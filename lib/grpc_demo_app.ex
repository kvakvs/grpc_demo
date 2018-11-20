defmodule GrpcDemo.App do
  @moduledoc false
  use Application

  def start(_type, _args) do
    import Supervisor.Spec

    children = [
      supervisor(GRPC.Server.Supervisor, [{GrpcDemo.Server, 1111}])
    ]

    opts = [strategy: :one_for_one, name: GrpcDemo.App]
    Supervisor.start_link(children, opts)
  end
end
