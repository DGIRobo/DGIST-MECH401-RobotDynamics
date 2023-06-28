% Simscape(TM) Multibody(TM) version: 7.6

% This is a model data file derived from a Simscape Multibody Import XML file using the smimport function.
% The data in this file sets the block parameter values in an imported Simscape Multibody model.
% For more information on this file, see the smimport function help page in the Simscape Multibody documentation.
% You can modify numerical values, but avoid any other changes to this file.
% Do not add code to this file. Do not edit the physical units shown in comments.

%%%VariableName:smiData


%============= RigidTransform =============%

%Initialize the RigidTransform structure array by filling in null values.
smiData.RigidTransform(7).translation = [0.0 0.0 0.0];
smiData.RigidTransform(7).angle = 0.0;
smiData.RigidTransform(7).axis = [0.0 0.0 0.0];
smiData.RigidTransform(7).ID = "";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(1).translation = [0 -2.2204460492503127e-15 10];  % mm
smiData.RigidTransform(1).angle = 2.2204460492503126e-16;  % rad
smiData.RigidTransform(1).axis = [1 0 0];
smiData.RigidTransform(1).ID = "B[Manipulator Base Type2:1:-:Manipulator Link Type 2:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(2).translation = [-7.2735668014514585e-15 -1.0772677557476294e-17 -30];  % mm
smiData.RigidTransform(2).angle = 1.6082534756470244e-16;  % rad
smiData.RigidTransform(2).axis = [0.0066983704500569877 0.99997756566500728 5.3862179398091903e-19];
smiData.RigidTransform(2).ID = "F[Manipulator Base Type2:1:-:Manipulator Link Type 2:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(3).translation = [200 3.5527136788005009e-14 0];  % mm
smiData.RigidTransform(3).angle = 2.2204587031371749e-16;  % rad
smiData.RigidTransform(3).axis = [1 0 0];
smiData.RigidTransform(3).ID = "B[Manipulator Link Type 1:1:-:Manipulator Link Type 1:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(4).translation = [2.792643974903419e-12 -3.6993021252533255e-13 -1.2208286395229996e-12];  % mm
smiData.RigidTransform(4).angle = 5.1604923603704435e-16;  % rad
smiData.RigidTransform(4).axis = [0.99617362002980814 0.087396331483119288 2.2464118628959861e-17];
smiData.RigidTransform(4).ID = "F[Manipulator Link Type 1:1:-:Manipulator Link Type 1:2]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(5).translation = [3.8857805861880466e-14 0 175.00000000000003];  % mm
smiData.RigidTransform(5).angle = 2.0943951023931953;  % rad
smiData.RigidTransform(5).axis = [-0.57735026918962584 -0.57735026918962584 -0.57735026918962584];
smiData.RigidTransform(5).ID = "B[Manipulator Link Type 2:1:-:Manipulator Link Type 1:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(6).translation = [8.6762426627872273e-18 5.6843418198663667e-14 1.5917543018711088e-12];  % mm
smiData.RigidTransform(6).angle = 3.1415926535897931;  % rad
smiData.RigidTransform(6).axis = [-1 2.7820659575710008e-33 -5.2749318744864762e-17];
smiData.RigidTransform(6).ID = "F[Manipulator Link Type 2:1:-:Manipulator Link Type 1:1]";

%Translation Method - Cartesian
%Rotation Method - Arbitrary Axis
smiData.RigidTransform(7).translation = [0 0 0];  % mm
smiData.RigidTransform(7).angle = 0;  % rad
smiData.RigidTransform(7).axis = [0 0 0];
smiData.RigidTransform(7).ID = "RootGround[Manipulator Base Type2:1]";


%============= Solid =============%
%Center of Mass (CoM) %Moments of Inertia (MoI) %Product of Inertia (PoI)

%Initialize the Solid structure array by filling in null values.
smiData.Solid(3).mass = 0.0;
smiData.Solid(3).CoM = [0.0 0.0 0.0];
smiData.Solid(3).MoI = [0.0 0.0 0.0];
smiData.Solid(3).PoI = [0.0 0.0 0.0];
smiData.Solid(3).color = [0.0 0.0 0.0];
smiData.Solid(3).opacity = 0.0;
smiData.Solid(3).ID = "";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(1).mass = 0.3732152769154885;  % lbm
smiData.Solid(1).CoM = [-7.6103355430571425e-09 0 17.025405379722191];  % mm
smiData.Solid(1).MoI = [132.54904345597296 132.54902642203521 157.37638394732446];  % lbm*mm^2
smiData.Solid(1).PoI = [0 1.0428597775047942e-08 0];  % lbm*mm^2
smiData.Solid(1).color = [0.99607843137254903 0.99607843137254903 1];
smiData.Solid(1).opacity = 1;
smiData.Solid(1).ID = "Manipulator Base Type2.ipt_{4434D498-4A60-6A42-9F25-E3AD5F237DEF}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(2).mass = 1.9462109554028997;  % lbm
smiData.Solid(2).CoM = [1.7385544680798131e-14 -1.1221743211846685e-09 74.341048209455153];  % mm
smiData.Solid(2).MoI = [5820.1909520606032 5879.504335912653 568.36462376196869];  % lbm*mm^2
smiData.Solid(2).PoI = [-1.0078396151419757e-07 -7.328509396075535e-13 1.3534375005569391e-13];  % lbm*mm^2
smiData.Solid(2).color = [0.99607843137254903 0.99607843137254903 1];
smiData.Solid(2).opacity = 1;
smiData.Solid(2).ID = "Manipulator Link Type 2.ipt_{761E89EF-47DE-6FAB-AE37-D38070BDCE2E}";

%Inertia Type - Custom
%Visual Properties - Simple
smiData.Solid(3).mass = 1.810074406836514;  % lbm
smiData.Solid(3).CoM = [77.881858681719677 2.9908991493936529e-14 0];  % mm
smiData.Solid(3).MoI = [681.68671977087547 8043.5800038852394 8085.6543149114905];  % lbm*mm^2
smiData.Solid(3).PoI = [-2.7068750018732748e-13 1.0827500007493099e-12 -2.2801708771963783e-12];  % lbm*mm^2
smiData.Solid(3).color = [0.74901960784313726 0.74901960784313726 0.74901960784313726];
smiData.Solid(3).opacity = 1;
smiData.Solid(3).ID = "Manipulator Link Type 1.ipt_{3B27CC48-4B84-E17E-88EE-5FAC9D7967EC}";


%============= Joint =============%
%X Revolute Primitive (Rx) %Y Revolute Primitive (Ry) %Z Revolute Primitive (Rz)
%X Prismatic Primitive (Px) %Y Prismatic Primitive (Py) %Z Prismatic Primitive (Pz) %Spherical Primitive (S)
%Constant Velocity Primitive (CV) %Lead Screw Primitive (LS)
%Position Target (Pos)

%Initialize the RevoluteJoint structure array by filling in null values.
smiData.RevoluteJoint(3).Rz.Pos = 0.0;
smiData.RevoluteJoint(3).ID = "";

smiData.RevoluteJoint(1).Rz.Pos = -1.0080633524325382;  % deg
smiData.RevoluteJoint(1).ID = "[Manipulator Base Type2:1:-:Manipulator Link Type 2:1]";

smiData.RevoluteJoint(2).Rz.Pos = 0.0004458795517182447;  % deg
smiData.RevoluteJoint(2).ID = "[Manipulator Link Type 1:1:-:Manipulator Link Type 1:2]";

smiData.RevoluteJoint(3).Rz.Pos = 89.991254711653468;  % deg
smiData.RevoluteJoint(3).ID = "[Manipulator Link Type 2:1:-:Manipulator Link Type 1:1]";

