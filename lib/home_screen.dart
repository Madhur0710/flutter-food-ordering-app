import 'package:flutter/material.dart';
import 'package:food_ordering_app_ui_flutter/item_screen.dart';

class HomeScreen extends StatelessWidget {

 List foods = [
  "Burger",
  "Pizza",
  "Snacks",
  "Water"
 ];

 List foods2 = [
  "Chicken Burger",
  "Cheese Pizza"
 ];

 List<Color> bgColors = [
      Color(0xFFFBDCDA),
      Color(0xFFD4EEF3),
      Color(0xFFFAE6D5),
      Color(0xFFEFCFE7),
 ];

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Deliver To",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54
                        ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.location_on,
                            color: Color(0xFFFF2F08),
                            ),
                            Text("New York, USA",
                            style: 
                            TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            Icon(Icons.arrow_drop_down,
                            color: Color(0xFFFF2F08),
                            )
                          ],
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage("images/profile.jpg"),
                              fit: BoxFit.cover
                              )
                          ),
                        ),
                        Positioned(
                          left: 40,
                          child: Container(
                          margin: EdgeInsets.all(5),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white,width: 3),
                            color: Color(0xFFFF2F08),
                            shape: BoxShape.circle
                          ),
                        ))
                      ],
                    )
                ],
              ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/1.4,
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFFF3F3F3),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Search your food here",
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search)
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFFF2F08)
                      ),
                      child: Icon(
                        Icons.filter_list,
                        size: 28,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset("images/banner.jpg"),
                ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Categories",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500
                      ),
                      ),
                      TextButton(onPressed: () {}, child:
                        Text("See All",
                        style: TextStyle(
                          color: Color(0xFFFF2F08),
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),)
                      )
                    ],
                  ),
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: foods.length,
                      itemBuilder: (context,index) {
                        return Container(
                          width: 100,
                          margin: EdgeInsets.only(left: 15,right: 10),
                          padding: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                            color: bgColors[index],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset("images/${foods[index]}.png",
                              width: 80,
                              height: 80),
                              Text(foods[index],
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                              )
                          ],
                          ),
                        );
                      }
                      ),
                  ),
                     Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Popular",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500
                      ),
                      ),
                      TextButton(onPressed: () {}, child:
                        Text("See All",
                        style: TextStyle(
                          color: Color(0xFFFF2F08),
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),)
                      )
                    ],
                  ),
                  ),
                  SizedBox(
                    height: 220,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: foods2.length,
                      itemBuilder: (context,index)  {
                         return InkWell(
                          onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ItemScreen()));
                          },
                           child: Container(
                            width: MediaQuery.of(context).size.width/1.4,
                            margin: EdgeInsets.only(left: 15,bottom: 5,top: 5,right: 15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 4,
                                  blurRadius: 2,
                                )
                              ]
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  child: Image.asset(
                                    "images/${foods2[index]}.jpg",
                                    height: 120,
                                    width: MediaQuery.of(context).size.width/1.4,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(foods2[index],
                                          style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold
                                          ),
                                          ),
                                          SizedBox(height: 5),
                                          Text("Fast Food",
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black45
                                          ),
                                          ),
                                          SizedBox(height: 5),
                                          Row(
                                            children: [
                                              Icon(Icons.star,
                                              size: 20,
                                              color: Color(0xFFFF2F08),
                                              ),
                                              SizedBox(width: 2),
                                              Text("4.7",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                              ),
                                              ),
                                              SizedBox(width: 5),
                                              Text("(841 Ratings)",
                                              style: TextStyle(
                                                color: Colors.black45
                                              ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          Padding(padding: EdgeInsets.all(8),
                                          child: Row(
                                            children: [
                                              Icon(Icons.location_on,
                                              size: 20,
                                              color: Color(0xFFFF2F08),
                                              ),
                                              SizedBox(width: 2),
                                              Text("1 KM",style: TextStyle(
                                                 color: Colors.black45,
                                                 fontWeight: FontWeight.w500
                                              ),
                                              )
                                            ],
                                          ),
                                          ),
                                          SizedBox(height: 10),
                                          Container(
                                            padding: EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFF2F08),
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10)
                                              )
                                            ),
                                            child: Text("\$15.89",
                                            style: TextStyle(
                                               fontSize: 16,
                                               fontWeight: FontWeight.bold,
                                               color: Colors.white
                                            ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  ),
                              ],
                            ),
                           ),
                         );
                      },
                      ),
                  ),
                  SizedBox(height: 50)
            ],
          ),
        ),
    );
  }
}