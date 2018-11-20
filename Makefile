# Open interactive shell
.PHONY: iex
iex: proto
	iex -S mix

# Generate protobuf impl file from proto file
.PHONY: proto
proto: lib/myapi.pb.ex

lib/myapi.pb.ex: myapi.proto
	protoc --elixir_out=plugins=grpc:./lib myapi.proto
