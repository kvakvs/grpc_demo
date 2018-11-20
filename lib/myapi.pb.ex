defmodule GrpcDemo.GRPC.HelloRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          i: boolean
        }
  defstruct [:i]

  field :i, 1, type: :bool
end

defmodule GrpcDemo.GRPC.HelloResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          i: boolean
        }
  defstruct [:i]

  field :i, 1, type: :bool
end

defmodule GrpcDemo.GRPC.Api.Service do
  @moduledoc false
  use GRPC.Service, name: "GrpcDemo.GRPC.Api"

  rpc :Hello, GrpcDemo.GRPC.HelloRequest, GrpcDemo.GRPC.HelloResponse
end

defmodule GrpcDemo.GRPC.Api.Stub do
  @moduledoc false
  use GRPC.Stub, service: GrpcDemo.GRPC.Api.Service
end
