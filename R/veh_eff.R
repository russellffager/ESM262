# One of the equations used to compute automobile fuel efficiency is as follows this is the power required to keep a car moving at a given speed is as follows:

#  Pb = c_rol * m * g * V + 0.5 * A * p_air * c_drag * V^3

#  where c_rol and c_drag are rolling and aerodynamic resistive coefficients, typical values are 0.015 and 0.3, respectively.

#  V: is vehicle speed (assuming no headwind) in m/s (or mps) m: is vehicle mass in kg

# A is surface area of car (m2)

#  g: is acceleration due to gravity (9.8m/s2)

#  p_air = density of air (1.2kg/m3)

#  Pb is power in Watts

veh_eff = function (V, A, m, g = 9.8, p_air = 1.2, c_rol = 0.015, c_drag = 0.3) {
  # calculte
  Pb = c_rol * m * g * V + 0.5 * A * p_air * c_drag * V^3
  return(Pb)
}
