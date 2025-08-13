
clear all;
close all;
clc all;
theta = 0:0.1:360;
r = 3;
x = r * cos(theta);
y = r * sin(theta);

function point = getYPointFromAngle(angle, r)
  rad = deg2rad(angle);
  point = 0.8 * r * sin(rad);
  return
endfunction

function point = getXPointFromAngle(angle, r)
  rad = deg2rad(angle);
  point = 0.8 * r * cos(rad);
  return
endfunction

function point = getYPointFromAngleMinutes(angle, r)
  rad = deg2rad(angle);
  point = 0.6 * r * sin(rad);
  return
endfunction

function point = getXPointFromAngleMinutes(angle, r)
  rad = deg2rad(angle);
  point = 0.6 * r * cos(rad);
  return
endfunction

figure;
#plots start
plot(x,y, ".k", "markersize", 5);
hold on;
plot(0,0, ".k", "markersize", 10);
hold on;
angle = 90;
angleMinutes = 90;
plot([0,getXPointFromAngle(angle, r)],[0, getYPointFromAngle(angle, r)], "-b");
hold on;
plot([0,getXPointFromAngleMinutes(angle, r)],[0, getYPointFromAngleMinutes(angle, r)], "-r");
#plots end
grid;
axisOffset = r + 1;
axis([-axisOffset, axisOffset, -axisOffset, axisOffset]);
timeElapsed = 0;

intervalo = 0.000001;
rate = 1;
while (true)
  plot([0,getXPointFromAngle(angle, r)],[0, getYPointFromAngle(angle, r)], "-w");
  hold on;
  angle -= rate;
  plot([0,getXPointFromAngle(angle, r)],[0, getYPointFromAngle(angle, r)], "-b");
  hold on;
  plot([0,getXPointFromAngleMinutes(angleMinutes, r)],[0, getYPointFromAngleMinutes(angleMinutes, r)], "-r");
  if (timeElapsed == 360)
  hold on;
  plot([0,getXPointFromAngleMinutes(angleMinutes, r)],[0, getYPointFromAngleMinutes(angleMinutes, r)], "-w");
  hold on;
  angleMinutes -= rate * 3;
  plot([0,getXPointFromAngleMinutes(angleMinutes, r)],[0, getYPointFromAngleMinutes(angleMinutes, r)], "-r");
  timeElapsed = 0;
  endif

  timeElapsed += rate;
  pause(intervalo * intervalo); # pausa o código temporariamente
endwhile
