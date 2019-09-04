import 'package:flutter/material.dart';
import 'DetailsPage.dart';
import 'Colors.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key,}) : super(key: key);





  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {





  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(left:16.0,right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(icon: Icon(Icons.menu,color: Colors.black,),
                    onPressed: (){

                    }
                ),
                Image(image: AssetImage('images/avocoda.png'),
                height: 40.0,
                  width: 40.0,
                )
              ],
            ),
          ),
         SizedBox(height: 10.0,),

          Padding(
            padding: const EdgeInsets.only(left:16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Good",
                  style: TextStyle(
                    color: AppColor.green,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat'

                  ),
                ),
                Text(
                  "Morning",
                  style: TextStyle(
                    color: AppColor.green,
                    fontSize: 32.0,
                    fontWeight: FontWeight.w600,
                      fontFamily: 'Montserrat'

                  ),
                ),
                SizedBox(height: 14.0,),
                Text(
                  "Popular Food",
                  style: TextStyle(
                    color: Colors.black,

                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Montserrat'

                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.0,),
          Container(
            height: 250.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
              _buildListItem('images/plate1.png', 'Vegan Breakfast', '\$28'),
                _buildListItem('images/plate3.png', 'Vegan Salad', '\$26'),
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(left:16.0),
            child: Text(
              "Best Food",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Monserat',
                fontWeight: FontWeight.w600,
                fontSize: 20.0,
              ),
            ),
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(left:20.0,right: 20.0),
            child: Container(
              height: 200.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.white,Color(0xffACDEA3),
                ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(14.0),
                image: DecorationImage(
                    image: AssetImage('images/plate2.png'),
                  fit: BoxFit.contain,
                )
              ),

            ),
          )


        ],
      ),
      bottomNavigationBar: Container(
        width: 75.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
           topRight: Radius.circular(50.0),
          ),
          color: Color(0xff5aC035),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(icon: Icon(Icons.bookmark_border,color: Colors.white,),
                  onPressed: (){

                  }
                  ),
              IconButton(icon: Icon(Icons.search,color: Colors.white,),
                  onPressed: (){

                  }
              ),
              IconButton(icon: Icon(Icons.shopping_basket,color: Colors.white,),
                  onPressed: (){

                  }
              ),
              IconButton(icon: Icon(Icons.person_outline,color: Colors.white,),
                  onPressed: (){

                  }
              )
            ],

          ),
        ),
        
      ),

    );
  }
  Widget _buildListItem(String imagePath,String foodName, String price){

    return InkWell(
      onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context){
  return DetailsPage(heroTag: imagePath,foodName: foodName,foodPrice: price,);
}));
      },
      child: Padding(
        padding: const EdgeInsets.only(left:20.0,top: 10.0,bottom: 10.0),
        child: Container(
          height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 5.0,
              )
            ]
          ),
          child: Stack(
            children: <Widget>[
              Container(
                height: 175.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors:[Colors.white,Color(0xffACDEA3)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  )
                ),
              ),
              Hero(
                  tag: imagePath,
                  child: Container(
                    height: 175.0,
                    decoration: BoxDecoration(
                      image: DecorationImage
                        (
                        image: AssetImage(imagePath),
                        fit: BoxFit.contain

                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )
                    ),
                  )
              ),
              Positioned(
                  top: 160.0,
                  right: 20.0,
                  child: Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.circular(14.0),
                    child: Container(
                      height: 30.0,
                      width: 30.0,
                      child: Center(
                        child: Icon(
                          Icons.favorite,color: Colors.red,
                          size: 17.0,
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                    ),


              )
              ),
              Positioned(
                  top: 190.0,
                  left: 10.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        foodName,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),

                      ),
                      Container(
                        width: 175.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  '4.9',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.grey,
                                      fontSize: 12.0),
                                ),
                                SizedBox(width: 3.0),
                                Icon(Icons.star,
                                    color: Colors.green, size: 14.0),
                                Icon(Icons.star,
                                    color: Colors.green, size: 14.0),
                                Icon(Icons.star,
                                    color: Colors.green, size: 14.0),
                                Icon(Icons.star,
                                    color: Colors.green, size: 14.0),
                                Icon(Icons.star,
                                    color: Colors.green, size: 14.0),
                              ],
                            ),
                            Text(price,
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontSize: 16.0)),
                          ],
                        ),
                      )
                    ],
                  )
              )
            ],
          ),


        ),
      ),
    );

  }
}
