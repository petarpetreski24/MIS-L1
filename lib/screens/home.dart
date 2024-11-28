import 'package:flutter/material.dart';
import '../models/clothing_item.dart';
import '../widgets/clothing_grid.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<ClothingItem> items = [
    ClothingItem(
        id: 1,
        name: "Bluza",
        img: "https://upload.wikimedia.org/wikipedia/commons/2/24/Blue_Tshirt.jpg",
        description: "Pamucna bela bluza",
        price: 590
    ),
    ClothingItem(
        id: 2,
        name: "Farmerki",
        img: "https://media.istockphoto.com/id/1132154377/photo/jeans.jpg?s=612x612&w=0&k=20&c=T3K1_PdlZxXILKFvGkTmPiIf5M2EdIxkqa79AJT_w0Y=",
        description: "Farmerki od kvaliteten teksas",
        price: 1890
    ),
    ClothingItem(
        id: 3,
        name: "Patiki",
        img: "https://t4.ftcdn.net/jpg/02/07/04/29/360_F_207042944_wheO6ZShP5o8Nli11LSFWCYGRt2N3mNp.jpg",
        description: "Komfortni beli patiki",
        price: 3490
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("211015", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        centerTitle: true,),
      body: ClothingGrid(items: items)
    );
  }
}