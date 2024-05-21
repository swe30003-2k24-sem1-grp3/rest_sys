class Tables {
    #tableID: number;
    #date: Date;
    #time: Date;
    #orderID: number;
    #customerID: number;

    constructor(tableID: number, date: Date, time: Date, orderID: number, customerID: number) {
        this.#tableID = tableID;
        this.#date = date;
        this.#time = time;
        this.#orderID = orderID;
        this.#customerID = customerID;
    }
}