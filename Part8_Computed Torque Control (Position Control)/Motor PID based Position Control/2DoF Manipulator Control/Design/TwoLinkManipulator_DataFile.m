% Simscape(TM) Multibody(TM) version: 7.6

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(5).translation = [0.0 0.0 0.0];
smiData.RigidTransform(5).angle = 0.0;
smiData.RigidTransform(5).axis = [0.0 0.0 0.0];
smiData.RigidTransform(5).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0 49.999999999999986 0];  % mm
smiData.RigidTransform(1).angle = 0;  % rad
smiData.RigidTransform(1).axis = [0 0 0];
smiData.RigidTransform(1).ID = "B[Manipulator Base Type1:1:-:Manipulator Link Type 1:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [2.373941221222208e-30 -6.3108872417680944e-30 -2.8421709430404001e-14];  % mm
smiData.RigidTransform(2).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(2).axis = [-1 1.7480676196093559e-49 -4.1762815622249209e-17];
smiData.RigidTransform(2).ID = "F[Manipulator Base Type1:1:-:Manipulator Link Type 1:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [200.00000000000023 3.5527136788005009e-14 -8.8817841970012523e-15];  % mm
smiData.RigidTransform(3).angle = 2.8606636830581327e-16;  % rad
smiData.RigidTransform(3).axis = [0.85946708012477446 0.51119109751813396 6.2841904076957692e-17];
smiData.RigidTransform(3).ID = "B[Manipulator Link Type 1:1:-:Manipulator Link Type 1:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [4.2632564145606011e-13 -2.8421709430404014e-14 7.1054273576010082e-15];  % mm
smiData.RigidTransform(4).angle = 3.195208312529931e-16;  % rad
smiData.RigidTransform(4).axis = [-0.69492998016526442 0.71907741076152931 -7.9833629791529092e-17];
smiData.RigidTransform(4).ID = "F[Manipulator Link Type 1:1:-:Manipulator Link Type 1:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [44.119110820850409 60.85947264201743 95.026413790550066];  % mm
smiData.RigidTransform(5).angle = 1.5707963267948966;  % rad
smiData.RigidTransform(5).axis = [1 0 0];
smiData.RigidTransform(5).ID = "RootGround[Manipulator Base Type1:1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(2).mass = 0.0;
smiData.Solid(2).CoM = [0.0 0.0 0.0];
smiData.Solid(2).MoI = [0.0 0.0 0.0];
smiData.Solid(2).PoI = [0.0 0.0 0.0];
smiData.Solid(2).color = [0.0 0.0 0.0];
smiData.Solid(2).opacity = 0.0;
smiData.Solid(2).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.41963674408414348;  % lbm
smiData.Solid(1).CoM = [3.1454345726307224e-10 25.649353884463174 0];  % mm
smiData.Solid(1).MoI = [234.30392035863136 134.16498767316102 288.40891565167237];  % lbm*mm^2
smiData.Solid(1).PoI = [0 0 -3.2140374875464979e-09];  % lbm*mm^2
smiData.Solid(1).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "Manipulator Base Type1.ipt_{F027DFF8-45E7-678F-2F80-4FABFFD5529A}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 1.810074406836514;  % lbm
smiData.Solid(2).CoM = [77.881858681719677 2.9908991493936529e-14 0];  % mm
smiData.Solid(2).MoI = [681.68671977087547 8043.5800038852394 8085.6543149114905];  % lbm*mm^2
smiData.Solid(2).PoI = [-2.7068750018732748e-13 1.0827500007493099e-12 -2.2801708771963783e-12];  % lbm*mm^2
smiData.Solid(2).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "Manipulator Link Type 1.ipt_{3B27CC48-4B84-E17E-88EE-5FAC9D7967EC}";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(2).Rz.Pos = 0.0;
smiData.RevoluteJoint(2).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = 1.1485008332463669e-14;  % deg
smiData.RevoluteJoint(1).ID = "[Manipulator Base Type1:1:-:Manipulator Link Type 1:1]";

smiData.RevoluteJoint(2).Rz.Pos = 1.1485008332463674e-14;  % deg
smiData.RevoluteJoint(2).ID = "[Manipulator Link Type 1:1:-:Manipulator Link Type 1:2]";

