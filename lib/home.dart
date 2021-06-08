import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 0),
            child: Text(
              'Ecom App UI',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
        backgroundColor: Color(0xfff2f2f2),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: [
          abc("assets/Huawei.jpg", "Hwawei P20"),
          abc("assets/iphone.jpg", "Iphone 12"),
          abc("assets/iphonex.jpg", "Iphone X"),
          abc("assets/Macbook.jpg", "Macbook 10"),
          abc("assets/Oppo.jpg", "Oppo R17"),
          abc("assets/Samsung.jpg", "Samsung S20"),
          abc("assets/Ultrabook.jpg", "Ultrabook 9"),
          abc("assets/vivo.png","Vivo Y31"),
        ],
      ),
    );
  }
}

Widget abc(var imagename, textname) {
  return Container(
    height: 100,
    margin: EdgeInsets.only(top: 15),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Color(0xfff2f2f2)),
    child: Row(
      children: [
        Container(
            height: 95,
            width: 100,
            margin: EdgeInsets.only(
              left: 5,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: AssetImage(imagename),
              ),
            )),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textname,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 15,
                      ),
                      Text('5.0 (23 Review)'),
                    ],
                  ),
                  Row(
                    children: [
                      Text("20 Pieces"),
                      SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3),
                        child: Text(
                          "\$${90}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                              color: Colors.purple),
                        ),
                      ),
                    ],
                  ),
                  Text("Quantity : 1")
                ],
              ),
            )
          ],
        ),
      ],
    ),
  );
}
