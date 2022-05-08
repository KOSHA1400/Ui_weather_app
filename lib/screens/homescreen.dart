import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('weather'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/setting');
              },
              icon: Icon(Icons.settings))
        ],
      ),
      body: Container(

        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blueAccent.shade700,
              Colors.lightBlue,
            ],
            begin: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10,top:30,bottom:5  ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              _temperature(),


              _tempe1(),
              _location(),
              _date(),
              _cluodIcon(),
              _hourlyPrediction(),


            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        child: Container(
          height:100.0 ,
          child: BottomNavigationBar(

            items:<BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor:Color(0xfffff) ,
                icon: Icon(Icons.restart_alt,size: 40,),
                label: 'Arrow_back',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home,size: 40,),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search,size: 40,),
                label: 'Search',
              ),
            ],
          ),
        ),

      ),

    );
  }

  final times = [
    'SUN',
    'MON',
    'TUE',
    'WED',
    'THU',
    'FRI',
    'SUT',
  ];

  _hourlyPrediction() {
    return Container(
      height: 210,
      margin:EdgeInsets.only(bottom: 40.0),
      decoration: BoxDecoration(
        border: Border(
            top: BorderSide(color: Colors.white),
            bottom: BorderSide(color: Colors.white)),
      ),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: times.length,
          itemBuilder: (context, index) {
            return Container(

              width:110,

              child: Card(
                color: Color(0xffff),
                child: Center(
                  child: Text('${times[index]}'),
                ),

              ),
            );
          }),
    );
  }


  _date() {
    return Row(
      children: [
        Text(
          'Today::',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          '20.10.20',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  _location() {
    return Row(
      children: [
        Icon(
          Icons.trip_origin_outlined,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          'island',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }

  _tempe1() {
    return Text(
      '20°C ',
      style: TextStyle(
          fontSize: 40, fontWeight: FontWeight.w100, color: Colors.white),

    );
  }
  _temperature() {
    return Text(
      'Monday',
      style: TextStyle(
          fontSize: 40, fontWeight: FontWeight.w100, color: Colors.white),

    );
  }

  _cluodIcon() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Icon(
        Icons.wb_sunny_sharp,
        size: 150,
        color: (Colors.yellowAccent),
      ),
    );
  }
}
