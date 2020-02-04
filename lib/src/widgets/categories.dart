import 'package:flutter/material.dart';

import '../common.dart';
import 'detail.dart';

List<Category> categoriesList = [
  Category(name: "Salad", image: "salad.png"),
  Category(name: "Fast Food", image: "sandwich.png"),
  Category(name: "Deserts", image: "ice-cream.png"),
  Category(name: "Beer", image: "pint.png"),
  Category(name: "Sea Food", image: "fish.png"),
];

class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesList.length,
          itemBuilder: (_, index) {
        return Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
              height: 120,
              child: Column(
                children: <Widget>[
                  Container(
                      width: 60,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                color: red[50],
                                offset: Offset(2, 6),
                                blurRadius: 10
                            )
                          ]
                      ),

                      // child: Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Image.asset("assets/images/${categoriesList[index].image}"),
                      // ),
                        child: Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: InkWell(
                       child: Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Image.asset(
                              "assets/images/${categoriesList[index].image}",
                              // width: 140,
                              // height: 140,
                              
                            ),
                       ),
                          onTap: (){

                          Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new Detail(
               
              ),
            )    
            
            );
                          },
                          ),
                        ),
                      ),
                  SizedBox(height: 10,),
                  Text(categoriesList[index].name),
                ],
              )
          ),
        );
      }),

    );
  }
}

class Category{
  final String name;
  final String image;

  Category({this.name, this.image});

}
