defmodule PhysicsTest do
  use ExUnit.Case
  doctest Physics

  test "greets the world" do
    assert Physics.hello() == :world
  end

  test "escape velocity of earth is correct" do
    ev = Physics.Rocketry.escape_velocity(:earth) #|> IO.inspect
    assert ev == 11.2
  end

  test "escape velocity of planet X is correct" do
    planet_x = %{mass: 4.0e22, radius: 6.21e6}
    ev =  planet_x |> Physics.Rocketry.escape_velocity #|> IO.inspect
    assert ev == 0.9
  end

end
