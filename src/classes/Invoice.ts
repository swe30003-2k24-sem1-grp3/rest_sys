class Invoice {
    #invoiceID: number;
    #date: Date;
    #time: Date;
    #orderID: number;
    #customerID: number;
    

    constructor(tableID: number, date: Date, time: Date, orderID: number, customerID: number) {
        this.#invoiceID = tableID;
        this.#date = date;
        this.#time = time;
        this.#orderID = orderID;
        this.#customerID = customerID;
    }
}