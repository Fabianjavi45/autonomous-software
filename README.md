# autonomous-software


Abstract:
  The Autonomous Solar Vessel is a team  project that aims to build an acuatic vessel solely powered by solar energy while having no human interaction during it's trajectory, making it an autonomous solar boat. The team is divided in three main branches: mechanical, software, and electrical. The mechanical branch exclusively concentrates in the vessel's motion. The software branch concentrates the main autonomous software, anmd finally the electrical branch concentrates on the electrical components necesaary to make the vessel move by itself. While we have these branches to delegate the work each branch works in communication with the other branches. The mechanical branch has to communicate with the electrical branch to asses any new components added to the system and take it into consideration when mounting said components on the boat. This is made to determine how these components will affect the boat's motion. In the same way the software branch has to comunicate with the electrical branch so that the components are in teh right position and do not cause any errors on the software and the system itself. 
  

Contents:
  This repository is divided in 5 branches: Main, Thruster/PWM, Mock, GPS and Receiver. These 5 branches contain unique code test for the components of the system. The Main branch is where the Motion Control System resides. This file should be updated with all the changes made and new implementations. The other 4 branches stem from this one, as all those tests are to individually test the main's software functionality. The Thruster/PWM, GPS and Receiver branches contain the test for the thrusters, GPS Receiver and RC receivers respectively. While the Mock Branch contains a set of different tests for the system, which integrate some components together to test their functionality while in the same runtime.  
  
  Updated: Added New Branch to include all the MATLAB Simulations 
  ** If planning to use MATLAB, the code uses various pavkages for it;s functions, when running the code for the first time the user should get an error that the functions are not compatible. Just download the packages MATLAB directs you to and you should be in the clear to run the simulation smoothly. **
  
  
  Any doubts or questions e-mail me at: fabian.matos@upr.edu
  
