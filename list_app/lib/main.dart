import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in a Flutter IDE). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:Center(
        child: MyFirstPage(),

      )
    );
  }
}

class MyFirstPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyFirstPageState(10);
  }
}


class _MyFirstPageState extends State<MyFirstPage>{

  var list = [];


  _MyFirstPageState(int n){
    for(var i = 0; i < n; i++){
      list.add(i);
    }
  }

  Widget renderForChild(){

    var array = <Widget>[];

    return ListView.builder(
        itemCount:this.list.length,
        itemBuilder:(BuildContext context,int index){

          var item = this.list[index];

          return Container(
            height: 150,
            color: (index%2==0)?Color(0xffff00ff):Color(0xff00ffff),
            margin: EdgeInsets.all(5),
            child: Center(
              child:FlatButton(onPressed: (){
                setState((){
                  list[index]+=1;
                  debugPrint("<>>>>>$item,$index");
                });
              },
                child:
                Text.rich(
                    TextSpan(style:TextStyle(color: Color.fromRGBO(100,0,0,1)),
                        text:"box>$item<>$index<>")

                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffffffff),
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text('my first page',style:TextStyle(color: Color(0xff000000))),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.
      body: Container(
        child: this.renderForChild(),
      ),

      resizeToAvoidBottomPadding: true,

    );

//    return Scaffold(
//
//
//      child: Column(
//        mainAxisAlignment: MainAxisAlignment.spaceAround,
//        children: this.renderForChild(),
//      ),
//    );
  }

}

