import 'package:flutter/material.dart';

void main(){
  runApp(HomePage());

}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title:Center(child: Text("Welcome")) ,backgroundColor: const Color.fromARGB(255, 124, 0, 0),),
      body:BodyHome(),
      
      ),
    );
  }
}
class BodyHome extends StatefulWidget {
  const BodyHome({super.key});

  @override
  State<BodyHome> createState() => _BodyHomeState();
}

class _BodyHomeState extends State<BodyHome> {
int x=0;
 int y=0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
          shrinkWrap: true,
        children: [
          
      Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  
                 
                  children: [
                   Expanded(child: TextField(onSubmitted: (value) {
                    setState(() {
                       x=int.parse(value);
                    });
                    
                   },textInputAction:TextInputAction.done,maxLines: 5,decoration: InputDecoration(alignLabelWithHint: true
          ,border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),label: Text("Entre First Number")),)),SizedBox(width: 20,), 
          Expanded(child: TextField(onSubmitted: (value) {
            setState(() {
                y=int.parse(value);
            });
                   
                   },textInputAction: TextInputAction.done,maxLines: 5,decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),alignLabelWithHint: true,label: Text("Entre Second Number")),))
                  
                  
                  ],),
                  SizedBox(height: 50,),
                  Container(width:100,height: 100,decoration: BoxDecoration(color: Color.fromARGB(255, 184, 3, 3),borderRadius: BorderRadius.circular(10)),child: Center(child: Text((x+y).toString()))),
                   SizedBox(height: 50,),
                  InkWell(onTap: (){
                   Navigator.push<void>(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const PageTwo(),
    ),
  );


                  },child: 
                  Container(child: Text("Next Page")),),
                   SizedBox(height: 50,),
                   IconButton(onPressed: (){Navigator.push<void>(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const PageTwo1(),
    ),
  );



                   }, icon: Icon(Icons.abc_outlined))
                 
              ],
            ),
       
           
          
        ],
      ),
    );
  }
}
class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello"),),
    );
  }
}
class PageTwo1 extends StatefulWidget {
  const PageTwo1({super.key});

  @override
  State<PageTwo1> createState() => _PageTwo1State();
}

class _PageTwo1State extends State<PageTwo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}