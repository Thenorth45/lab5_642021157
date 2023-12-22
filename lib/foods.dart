class Food {
  final String thfood;
  final String enfood;
  final double price;
  final String value;

  Food(
      {required this.thfood,
      required this.enfood,
      required this.price,
      required this.value});

  static List<Food> getfood() {
    return [
      Food(
          thfood: "ข้าวผัด", enfood: "Fried rice", price: 50, value: "ข้าวผัด"),
      Food(thfood: "ไข่เจียว", enfood: "omlet", price: 20, value: "ไข่เจียว"),
      Food(thfood: "หมูทอด", enfood: "Fried pork", price: 50, value: "หมูทอด"),
      Food(
          thfood: "คะน้าหมูกรอบ",
          enfood: "Crispy Pork kale",
          price: 60,
          value: "คะน้าหมูกรอบ")
    ];
  }
}
