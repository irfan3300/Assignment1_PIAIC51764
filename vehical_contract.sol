//SPDX-License-Identifier:UNLICENSED
pragma solidity ^0.8.0;

contract ParentVehicle{
    
    event logString(string);
    function start () public virtual{
        emit logString("The Vehicle has just Started");
    }
    function accelerate() virtual public {
        emit logString("The Vehicle has just Accelerated");
    }
    function stop() virtual public   {
        emit logString("The Vehicle has just Sopped");
    }
    function service() public virtual {
        emit logString("The Vehicle has just Serviced");
    }
    
}
contract Cars is ParentVehicle {
    function service() public override virtual{
        emit logString("The Car has just Serviced");
    }
}
contract Truck  is ParentVehicle {
    function service() public override virtual{
        emit logString("The Truck has just Serviced");
    }
}
contract MotorCycle  is ParentVehicle {
    function service() public override virtual{
        emit logString("The MotorCycle has just Serviced");
    }
}
contract AltoMehran is ParentVehicle,Cars{
    function start () public override{
        emit logString("The AltoMehran has just Started");
    }
    function accelerate() public override {
        emit logString("The AltoMehran has just Accelerated");
    }
    function stop() public  override {
        emit logString("The AltoMehran has just Sopped");
    }
    function service() public override(ParentVehicle,Cars){
        emit logString("The AltoMehran has just Serviced");
    
}
}
contract Hino is ParentVehicle,Truck{
    function start () public override{
        emit logString("The Hino has just Started");
    }
    function accelerate() public override {
        emit logString("The Hino has just Accelerated");
    }
    function stop() public  override {
        emit logString("The Hino has just Sopped");
    }
    function service() public override(ParentVehicle,Truck){
        emit logString("The Hino has just Serviced");
    
}
}
contract Yamaha is ParentVehicle,MotorCycle{
    function start () public override{
        emit logString("The Yamaha has just Started");
    }
    function accelerate() public override {
        emit logString("The Yamaha has just Accelerated");
    }
    function stop() public  override {
        emit logString("The Yamaha has just Sopped");
    }
    function service() public override(ParentVehicle,MotorCycle){
        emit logString("The Yamaha has just Serviced");
    
}
}

contract Client {
function createObjects() public {
ParentVehicle C = new Cars();
ParentVehicle T = new Truck();
ParentVehicle M = new MotorCycle();
Cars A = new AltoMehran();
Truck H = new Hino();
MotorCycle Y = new Yamaha();
C.service();
T.service();
M.service();
A.service();
H.service();
Y.service();
}
}
