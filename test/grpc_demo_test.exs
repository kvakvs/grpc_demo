defmodule GrpcDemoTest do
  use ExUnit.Case
  doctest GrpcDemo

  test "greets the world" do
    assert GrpcDemo.hello() == :world
  end
end
