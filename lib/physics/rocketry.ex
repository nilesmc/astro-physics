defModule Physics.Planet do

  defstruct [
    name: "Earth",
    radius_m: 6.371e6,
    mass_kg: 5.97e24
  ]

  def escape_velocity(planet) do
    g = 6.67e-11
    gmr = 2 * g * planet.mass_kg/planet.radius_m
    vms = :marth.sqrt gmr
    vkms = vms/1000
    Float.ceil vkms, 1
  end

end

v = %Physics.Planet{} |> Physics.Planet.escape_velocity
# v = %Physics.Planet{name: "Mars"}

defModule Physics.Rocketry do

  def escape_velocity do

  end

end