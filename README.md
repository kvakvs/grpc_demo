# GrpcDemo

Demonstrates concept of using gRPC client and server in an Elixir project.
Demonstrates simplicity of setting up dependencies and the proto file.

Dependencies: Cowboy, Gun, Ranch, Cowlib

Building proto files yourself: see instructions at https://github.com/tony612/grpc-elixir

## Try it yourself

Create connection

    {:ok, ch} = GRPC.Stub.connect("localhost:1111")
    
Create request and call the stub, it should connect the call to remote server
implementation in `GrpcDemo.Server`.
    
    req = GrpcDemo.GRPC.HelloRequest.new(i: true)
    ch |> GrpcDemo.GRPC.Api.Stub.hello(req)
    
Result should be: `{:ok, %GrpcDemo.GRPC.HelloResponse{i: true}}`
    
## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `grpc_demo` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:grpc_demo, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/grpc_demo](https://hexdocs.pm/grpc_demo).

