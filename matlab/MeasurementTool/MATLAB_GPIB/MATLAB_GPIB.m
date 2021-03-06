%% Using MATLAB with instruments over GPIB
% MATLAB supports GPIB communication only when you use it with the 
% Instrument Control Toolbox.  There are many instruments with a GPIB
% interface including oscilloscopes, arbitrary waveform generators (AWGs),
% function generators, and signal analyzers.  
% 
% The Instrument Control Toolbox provides a graphical tool that allows you 
% to configure, control, and acquire data from your instrument without 
% writing code. The tool automatically generates MATLAB code that allows 
% you to reuse your work.  The code example below was automatically 
% generated by the tool.  Type "tmtool" at the MATLAB command line to 
% launch this tool.
%
% This code example below shows you how you can communicate with your
% instrument using MATLAB.  The "*IDN?" command was used which is a 
% typical command for querying an instrument to identify itself.  The 
% commands you can use will depend on what your instrument supports.  
% An Agilent GPIB driver was used here.  A list of other GPIB drivers is 
% available at: 
% http://www.mathworks.com/products/instrument/supportedio7141.html
%
% The toolbox also supports serial, TCP/IP, UDP and communication 
% protocols, IVI and VXIplug&play instrument drivers, and LXI instruments. 
% (Not shown here).  
% 
%% Automatically generating a report in MATLAB
% Press the "Save and Publish to HTML" button in the MATLAB Editor to 
% execute this code example and automatically generate a report of your 
% work with the instrument.

%% Automatically generating MATLAB script for your instrument
% To automatically create your own MATLAB script, launch "tmtool". Open the
% "Hardware" node, open the "GPIB" node, scan for GPIB drivers (right click
% on GPIB to do this), and press the "connect" button.  Once connected, 
% enter your device commands in the right pane, press "Session log" to see
% the code generated, and press "Save Session" to save the code to a 
% MATLAB (.m) file.

%% MATLAB script automatically generated for the instrument
% The following MATLAB script was automatically generated by interacting
% with the configuration tool provided by the Instrument Control Toolbox.
%
%   Creation time: 09-Oct-2006 13:16:33

% Create a GPIB object.
obj1 = instrfind('Type', 'gpib', 'BoardIndex', 7, 'PrimaryAddress', 10, 'Tag', '');

% Create the GPIB object if it does not exist
% otherwise use the object that was found.
if isempty(obj1)
    obj1 = gpib('AGILENT', 7, 10);
else
    fclose(obj1);
    obj1 = obj1(1)
end

% Connect to instrument object, obj1.
fopen(obj1);

% Communicating with instrument object, obj1.
data1 = query(obj1, '*IDN?');

% Disconnect from instrument object, obj1.
fclose(obj1);

% Clean up all objects.
delete(obj1);

