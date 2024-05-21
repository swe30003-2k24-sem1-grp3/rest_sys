enum VehicleType {
    Motorcycle,
    Bike, 
    Car
}

class DeliveryPerson extends Staff {
    _regoNumber : string
    _vehicleType: VehicleType

    constructor(staffId : number,
        name : string,
        dob : string,
        address : string,
        regoNumber : string,
        vehicleType : VehicleType) {
        
        super(staffId, name, dob, position.SalesPerson, address);
        this._regoNumber = regoNumber;
        this._vehicleType = vehicleType;
    }

    /*
        Manage Order
        Generate/Access Sales Report
        Create Payment & Invoices
    */ 
}