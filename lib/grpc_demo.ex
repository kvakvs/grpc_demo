defmodule GrpcDemo.Server do
  use GRPC.Server, service: GrpcDemo.GRPC.Api.Service

  @doc "A simple call taking HelloRequest and returning HelloResponse"
  def hello(req, _channel) do
    %GrpcDemo.GRPC.HelloResponse{i: true}
  end
end

defmodule GrpcDemo do
  @moduledoc """
  Demonstrates a simplest Hello World API made with gRPC.
  """

end
