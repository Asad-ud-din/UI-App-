import 'package:flutter/material.dart';

class history extends StatefulWidget {
  const history({Key? key}) : super(key: key);

  @override
  _historyState createState() => _historyState();
}

class _historyState extends State<history> {
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
      body:(SingleChildScrollView(child:
       Column(
        children:[
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 10),
            child: Row(
                children: [
                  Container(width: 350,
                    child: TextField(decoration: InputDecoration(labelText:"Username",
                    prefixIcon: 
                     Icon(Icons.search),
                    border: OutlineInputBorder(),
                    ),
                     ),
                  ),
                ],
              ),
          ),
          
          
        
        

          abb("assets/Huawei.jpg", "Hwawei P20"),
          abb("assets/vivo.png","Vivo Y31"),
          abb("assets/iphone.jpg", "Iphone 12"),
          abb("assets/Ultrabook.jpg", "Ultrabook 9"),
          abb("assets/iphonex.jpg", "Iphone X"),
          abb("assets/Samsung.jpg", "Samsung S20"),
          abb("assets/Oppo.jpg", "Oppo R17"),
          abb("assets/iphonex.jpg", "Iphone X"),
        ],
      ) ,)
       
      ),
    );
  }
}

Widget abb(var image,name) {
  return ListTile(
    leading: CircleAvatar(
      backgroundImage: AssetImage(image),
      radius: 20,
    ),
    title: Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
    subtitle: Row(
      children: [Icon(
        Icons.star,
         color: Colors.yellow,
         size: 15,
         ),
          Text('5.0 (23 Review)'),
      
      ],
    ),
    trailing: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [Text("\$${10}")],
    ),
  );
}
