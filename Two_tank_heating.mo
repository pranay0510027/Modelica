model Two_tank_heating
  Modelica.Thermal.HeatTransfer.Sources.FixedHeatFlow fixedHeatFlow(Q_flow(displayUnit = "kW") = 5e5) annotation(
    Placement(transformation(origin = {20, -44}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor Tank1(C = 2000000, T(start = 288.15))  annotation(
    Placement(transformation(origin = {-80, 32}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Thermal.HeatTransfer.Components.HeatCapacitor Tank2(C = 2000000, T(start = 288.15))  annotation(
    Placement(transformation(origin = {-78, -4}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Thermal.HeatTransfer.Sensors.TemperatureSensor temperatureSensor annotation(
    Placement(transformation(origin = {44, 68}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor(G = 17)  annotation(
    Placement(transformation(origin = {-4, 22}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor1(G = 17)  annotation(
    Placement(transformation(origin = {-4, -16}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Thermal.HeatTransfer.Components.ThermalConductor thermalConductor2(G = 95)  annotation(
    Placement(transformation(origin = {42, 6}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Thermal.HeatTransfer.Sources.FixedTemperature fixedTemperature(T = 263.15)  annotation(
    Placement(transformation(origin = {84, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Modelica.Thermal.HeatTransfer.Celsius.FromKelvin fromKelvin annotation(
    Placement(transformation(origin = {76, 68}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(Tank1.port, thermalConductor.port_a) annotation(
    Line(points = {{-80, 22}, {-14, 22}}, color = {191, 0, 0}));
  connect(Tank2.port, thermalConductor1.port_a) annotation(
    Line(points = {{-78, -14}, {-14, -14}, {-14, -16}}, color = {191, 0, 0}));
  connect(thermalConductor.port_b, thermalConductor1.port_b) annotation(
    Line(points = {{6, 22}, {6, -16}}, color = {191, 0, 0}));
  connect(thermalConductor2.port_a, thermalConductor1.port_b) annotation(
    Line(points = {{32, 6}, {6, 6}, {6, -16}}, color = {191, 0, 0}));
  connect(fixedHeatFlow.port, thermalConductor2.port_a) annotation(
    Line(points = {{30, -44}, {32, -44}, {32, 6}}, color = {191, 0, 0}));
  connect(thermalConductor2.port_b, fixedTemperature.port) annotation(
    Line(points = {{52, 6}, {74, 6}}, color = {191, 0, 0}));
  connect(temperatureSensor.port, thermalConductor2.port_a) annotation(
    Line(points = {{34, 68}, {32, 68}, {32, 6}}, color = {191, 0, 0}));
  connect(temperatureSensor.T, fromKelvin.Kelvin) annotation(
    Line(points = {{56, 68}, {64, 68}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "4.1.0")));
annotation(experiment(StartTime = 0, StopTime = 72000));
end Two_tank_heating;
