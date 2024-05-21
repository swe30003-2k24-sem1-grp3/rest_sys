enum OrderTypes {
    DINEIN,
    ONLINE
}

enum OrderStatus {
    PENDING,
    COOKING,
    READY,
    DELIVERED,
}

class Order {
    #orderId : number;
    #date : Date;
    #type : OrderTypes;
    #status : OrderStatus;
    #customerId : number;
    #paymentId : number;

    constructor(orderId: number,
        date: string,
        type: OrderTypes,
        status: OrderStatus,
        customerId: number,
        paymentId: number 
    ){
        this.#orderId = orderId;
        this.#date = new Date(date);
        this.#type = type;
        this.#status = status;
        this.#customerId = customerId;
        this.#paymentId = paymentId;
    }
}