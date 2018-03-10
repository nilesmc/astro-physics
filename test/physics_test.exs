defmodule PhysicsTest do
  use ExUnit.Case
  doctest Physics

  test "standing on solid ground?" do
    test = 1+1
    assert (test == 2)
  end

  test "greets the world" do
    assert Physics.hello() == :world
  end

  test "escape velocity of Earth is correct" do
    ev = Physics.Rocketry.escape_velocity(:earth)
    assert ev == 11.2
  end

  test "escape velocity of planet X is correct" do
    planet_x = %{mass: 4.0e22, radius: 6.21e6}
    ev =  planet_x |> Physics.Rocketry.escape_velocity
    assert ev == 0.9
  end

  test "escape velocity of Mars is correct" do
    ev = Physics.Rocketry.escape_velocity(:mars)
    assert ev == 5.0
  end

  test "escape velocity of moon is correct" do
    ev = Physics.Rocketry.escape_velocity(:moon)
    assert ev == 2.4
  end

  test "Converter works" do
    ls = Converter.to_light_seconds({:miles, 1000}, precision: 4) #|> IO.inspect
    assert ls == 0.0054
  end

  test "Converter works with default values" do
    ls = Converter.to_light_seconds({:miles, 1000})
    assert ls == 0.00537
  end

  # test "Orbital acceleration for earth at 100km" do
  #   orbital_acc = Physics.Rocketry.orbital_acceleration(100)
  #   assert orbital_acc == 9.515619587729839
  # end

  # test "Orbital term for 100km above earth" do
  #   term = Physics.Rocketry.orbital_term(100)
  #   assert (term > 4) && (term < 5)
  # end

end
