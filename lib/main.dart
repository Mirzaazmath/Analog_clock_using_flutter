import 'package:analog_clock/analog_clock.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool darkmode= false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: darkmode ?Colors.grey[850]: Colors.grey[300],
          title: Text("Anolog clock" ,style: TextStyle(color: darkmode ?Colors.white : Colors.black,),

          ),
        ),
        backgroundColor: darkmode ?Colors.grey[850] : Colors.grey[300],
        body:SingleChildScrollView(
          child:


          Column(
            mainAxisAlignment: MainAxisAlignment.start,



            children: [
              Padding(
                padding:EdgeInsets.only( top: 10, left: 10),


                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Switch mode",style: TextStyle( color: darkmode ?Colors.white : Colors.grey[600],fontSize: 22 ),),


                    Transform.scale(
                      scale: 1.1,
                      child: CupertinoSwitch(



                        // thumb colors
                        activeColor: Colors.grey[500],
                        trackColor: Colors.grey[900],

                        value: darkmode,
                        onChanged: (value) => setState(() => this.darkmode = value),
                      ),
                    ),


                  ],
                ) ,
              ),
              SizedBox(height: 100,),





              Container(
                width: 300,
                height: 300,
                child: AnalogClock(
                  decoration: BoxDecoration(

                      color: Colors.transparent,
                      shape: BoxShape.circle),

                  isLive: true,
                  hourHandColor: Colors.red,
                  minuteHandColor:darkmode ?Colors.white : Colors.grey,
                  showSecondHand: true,
                  secondHandColor:Colors.blue,
                  numberColor:darkmode ?Colors.white : Colors.grey,
                  showNumbers: true,
                  textScaleFactor: 1.4,
                  showTicks: true,
                  showDigitalClock: true,
                  digitalClockColor:darkmode ?Colors.white : Colors.grey,


                ),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: darkmode ?Colors.grey[850] : Colors.grey[300],

                    boxShadow: [
                      BoxShadow(
                        color: darkmode ?Colors.grey.shade900 : Colors.grey.shade500,
                        offset: Offset(5.0,5.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      ),
                      BoxShadow(
                        color: darkmode ?Colors.grey.shade800 : Colors.white,
                        offset: Offset(-5.0,5.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0,
                      ),



                    ]

                ),
              ),





            ],

          ),
        )


      ),
    );
  }
}

