import 'package:flutter/material.dart';

class BaruDutang {
  final String name;
  final String subname;
  final String image;
  BaruDutang({
    required this.name,
    required this.subname,
    required this.image,
  });
}

List<BaruDutang> baruDatang = [
  BaruDutang(
    name: "Harry Potter and the",
    subname: "Sorcerer's Stone",
    image: "assets/book_1.png"
  ),
  BaruDutang(
    name: "Dilan 1990",
    subname: " ",
    image: "assets/book_2.png"
  ),
  BaruDutang(
    name: "The Complete",
    subname: " ",
    image: "assets/book_3.png"
  ),
  BaruDutang(
    name: "Crayon Shincan",
    subname: "Volume 50",
    image: "assets/book_4.png"
  ),
  BaruDutang(
    name: "Harry Potter and the",
    subname: "Deathly Hallows",
    image: "assets/book_5.png"
  ),
];

class BooksBase {
  final String name;
  final String image;
  BooksBase({
    required this.name,
    required this.image,
  });
}

List<BooksBase> booksCard = [
  BooksBase(
    name: "Ikan Ikan Dari Laut Merah",
    image: "assets/booksPage1.png"
  ),
  BooksBase(
    name: "Harry Potter and the Goblet of Fire", 
    image: "assets/booksPage2.png"
  ),
  BooksBase(
    name: "Laskar Pelangi", 
    image: "assets/booksPage3.png"
  ),
  BooksBase(
    name: "Kamus Idiom Arab-Inonesia", 
    image: "assets/booksPage4.png"
  ),
   BooksBase(
    name: "", 
    image: ""
  ),
   BooksBase(
    name: "", 
    image: ""
  ),
];
