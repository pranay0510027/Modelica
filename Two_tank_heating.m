clc
clear all

Mass = 500; % unit: Kg
Cp = 4000; % J/KgK
Thermal_mass = Mass*Cp % J/K


radius = 0.314; % metere
Height = 1; % meter
Total_Volume = pi*(radius^2)*Height;
volume = 0.99; % m^3

Surface_area = 2*pi*radius*Height; % 
h1 = 200; % Inside convection coefficient
h2 = 10; % Outside convection coefficient
K_tank = 0.5; % W/mK
tank_thickness = 5; % mm
tank_thickness = tank_thickness/1000;
Thermal_resistance = (1/(h1*Surface_area))+(tank_thickness/(h2*Surface_area))+(1/(h2*Surface_area));
Thermal_conductance = 1/Thermal_resistance


% Encloser calculation

encloser_surface_area = 20; % m^2
h_inside = 10; % W/m^2K
h_outside = 100; % W/m^2K
K_encloser = 0.2; % W/mK
thickness_encloser = 20; %mm
thickness_encloser = thickness_encloser/1000;
encloser_thermal_resistance = (1/(h_inside*encloser_surface_area))+thickness_encloser/(K_encloser*encloser_surface_area)+(1/(h_outside*encloser_surface_area));
encloser_thermal_conductance = 1/encloser_thermal_resistance
