%Path following and force correction Algorithm
%Authors: Fabian J. Matos & Christian
%Map Creation

%Controller
pp = controllerPurePursuit;

%Different Waypoints
Waypoints = [5,5; 10,6; 7,12];
pp.Waypoints = [5,5; 10,6; 11,7;12,8;13,9;14,10]; 
% (0,0)--> placeholder for coordinates // data calling function form GPS/Data Logger

%VARIABLES

%pp.LookaheadDistance = 1.0;
pp.DesiredLinearVelocity = 3.0;

EForce = [0,0];    %External Force // this will always be zero at begining, changes if forced in another direction. 

count=0;            %Temporary Count for External Force Change

cEForce = [0,0];    %Calculated External Force

Dest= getDest(pp);  % returns First Destination of Vehicle // will take destination from upload of coordinates

fDest= getfDest(pp);

xPos = 6; yPos = 0; % Initial Vehicle position in meters || zigzag trajectory: xPos=2, yPos=0 %Islan xPos=6, yPos=0

Cood = [xPos, yPos];        %Vector of position
theta = Theta(Dest,Cood);  %calculates Angle of direction betweenm position and next waypoint // FUNCTION OF HEADING
pose = [xPos, yPos, theta];     %Initial position and Angle of Direction

%Plotting Waypoints

[v, w, NP] = pp(pose);
Vehicle = plot(Cood(1,1),Cood(1,2), 'bs', "LineWidth", 4);
pause(2)

%Loop for Path Trajectory
while getMagnitude(Cood)~=getMagnitude(fDest)
    if(count==5)
        EForce(1,1)= EForce(1,1);
        EForce(1,2)= EForce(1,2; 
        count=0;
    end
    if theta~=Theta(Dest,Cood) % FUNCTION OF HEADING
        theta=Theta(Dest,Cood);
        pose(:,3)=theta;
        [v,w,NP]=pp(pose);
    end
    
    if (getMagnitude(cEForce)~=0)
        Cood= NP + EForce - cEForce;
        xPos=Cood(1,1);
        yPos=Cood(1,2);
        if getMagnitude(Cood)~=getMagnitude(NP)
            cEForce= Cood - NP + cEForce;
        end
        pose=[xPos,yPos,theta];
        Vehicle=plot(Cood(1,1),Cood(1,2),'bs',"LineWidth",4);
        pause(0.5)
        
    else
        Cood= NP + EForce;
        xPos=Cood(1,1);
        yPos=Cood(1,2);
        pose=[xPos,yPos,theta];
        if getMagnitude(Cood)~=getMagnitude(NP)
            cEForce= Cood-NP;
        end
        Vehicle=plot(Cood(1,1),Cood(1,2),'bs',"LineWidth",4);
        pause(1)
    end
    
    if pp.Waypoints(1,:)~=pp.Waypoints(end,:)
        pp.Waypoints=[pp.Waypoints(2:end,1),pp.Waypoints(2:end,2)];
        Dest=getDest(pp);
    end
    
    [v,w,NP]=pp(pose);
    count= count+1;
end

