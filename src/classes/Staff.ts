/* eslint-disable @typescript-eslint/no-unused-vars */
enum position {
    SALESPERSON = 1,
    DELIVERYPERSON,
    CUSTOMER,
}

abstract class Staff {
    #staffId: number;
    #name: string;
    #dob: Date;
    #position: position;
    #address: string;

    constructor(userId : number,
        name : string,
        dob : string,
        position : position,
        address : string) {

            this.#staffId = userId;
            this.#name = name;
            this.#dob = new Date(dob);
            this.#position = position;
            this.#address = address;
    }
}