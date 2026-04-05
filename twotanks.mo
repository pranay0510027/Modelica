model twotanks
  Modelica.Fluid.Vessels.OpenTank tank(level(start = 2), height = 2, crossArea = 1, redeclare package Medium = Modelica.Media.Water.StandardWater, nPorts = 1, portsData(each diameter = 0.0254))  annotation(
    Placement(transformation(origin = {-56, 40}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Fluid.Vessels.OpenTank tank1(level(start = 1), height = 2, crossArea = 1, redeclare package Medium = Modelica.Media.Water.StandardWater, nPorts = 1, portsData(each diameter = 0.0254))  annotation(
    Placement(transformation(origin = {44, 40}, extent = {{-20, -20}, {20, 20}})));
  Modelica.Fluid.Pipes.StaticPipe pipe(nParallel = 1, length = 1, diameter = 0.0254, redeclare package Medium = Modelica.Media.Water.StandardWater)  annotation(
    Placement(transformation(origin = {-6, 2}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(pipe.port_a, tank.ports[1]) annotation(
    Line(points = {{-16, 2}, {-56, 2}, {-56, 20}}, color = {0, 127, 255}));
  connect(pipe.port_b, tank1.ports[1]) annotation(
    Line(points = {{4, 2}, {44, 2}, {44, 20}}, color = {0, 127, 255}));

annotation(
    uses(Modelica(version = "4.1.0")));
end twotanks;
