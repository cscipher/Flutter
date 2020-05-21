import 'package:flutter/material.dart';


class AapnoUdaipurDetailPage extends StatelessWidget {
  build(BuildContext context) {
    return Column(
      children: <Widget>[
      UdaipurBeautifulImage(),
      PlaceHeading(),
      PlaceDetail(),
      Creator()
    ],);//<widfget>[]//column
    }
  } 
    

class UdaipurBeautifulImage extends
StatelessWidget {
  build(BuildContext context){
    final _width = MediaQuery.of(context)
    .size.width;
    return Container(
      height: 250,
      width: 350,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://myudaipurcity.com/wp-content/uploads/2017/04/Ambrai-Ghat-Udaipur.jpg'),
        fit: BoxFit.contain
      ),
    )
   );
  }
}



class PlaceHeading extends
StatelessWidget {
  build(BuildContext context){
    return Text('\nAMBRAI GHAT',
    style: TextStyle(
      fontSize: 42,
      fontWeight: FontWeight.w600
    )
    );
  }
}

class PlaceDetail extends
StatelessWidget {
  build(BuildContext context){
    return Text('\n\nAmbrai Ghat is a popular for its lake-side location surrounded by many popular hotels including the Ambrai restaurant. It is also popular for the picturesque view of City Palace, Udaipur, and surrounding lakes.\n\nBy - Ciph3r',
    style : TextStyle(
      fontSize : 20,
    )
   );
  }
}

class Creator extends
StatelessWidget{
  build(BuildContext context){
    return Row(children: <Widget>[

    ]);
  }
}

class MyApp extends StatelessWidget {
  build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Overview')
        ),
        body: AapnoUdaipurDetailPage()
      )
    );
  }
}


void main() {
  runApp(MyApp());
}