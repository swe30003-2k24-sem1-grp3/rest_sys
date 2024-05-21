/* eslint-disable @typescript-eslint/no-unused-vars */
enum position {
    SalesPerson = 1,
    DeliveryPerson,
    Customer,
}

abstract class Staff {
    _staffId: number;
    _name: string;
    _dob: Date;
    _position: position;
    _address: string;

    constructor(userId : number,
        name : string,
        dob : string,
        position : position,
        address : string) {

            this._staffId = userId;
            this._name = name;
            this._dob = new Date(dob);
            this._position = position;
            this._address = address;
    }
}