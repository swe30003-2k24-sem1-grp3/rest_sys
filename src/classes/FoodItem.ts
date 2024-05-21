class FoodItem {
    FoodID: number;
    Name: string;
    Price: number;
    Category: string;

    constructor(foodID: number, name: string, price: number, category: string) {
        this.FoodID = foodID;
        this.Name = name;
        this.Price = price;
        this.Category = category;
    }
}