model heating_tank

import Modelica.Units.SI.*;
parameter Power Q = 500;
Mass m =10;
SpecificHeatCapacity cp = 1000;
CoefficientOfHeatTransfer h = 10;
ThermodynamicTemperature T_amb = 293;
Area A = 4;

Real temp (start = 350);

equation

Q = m*cp*der(temp) + h*A*(temp-T_amb);

end heating_tank;
