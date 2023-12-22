import 'package:flutter/material.dart';
import 'package:lab5_642021157/foods.dart';
export 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  List<Food> foods = [];
  String foodsvalue = "";

  @override
  void initState() {
    super.initState();
    // Initialize the list of foods
    foods = Food.getfood();

    // print(foods[0].thfood);

    // for (var f in foods) {
    //   print(f.thfood);
    // }

    // foods.map((e) => foods.first.thfood).toList();
  }

  List<Widget> createradiofoods() {
    List<Widget> myfood = [];
    for (var fs in foods) {
      myfood.add(RadioListTile(
        title: Text(fs.thfood),
        subtitle: Text(fs.enfood),
        secondary: Text(("${fs.price} บาท")),
        value: fs.value,
        groupValue: foodsvalue,
        onChanged: (value) {
          setState(() {
            foodsvalue = value!;
          });
        },
      ));
    }
    return myfood;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Foods157",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 108, 211, 68),
          ),
        ),
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 10, 82, 4),
      ),
      body: Column(children: [
        Divider(),
        Text(
          "เลือกเมนูอาหาร",
          style:
              TextStyle(fontSize: 30, color: Color.fromARGB(255, 233, 120, 44)),
        ),
        SizedBox(height: 16),
        ...createradiofoods(),
        SizedBox(height: 16),
        Text(
          foodsvalue,
          style: TextStyle(fontSize: 20, color: Colors.blue),
        )
      ]),
    );
  }
}
