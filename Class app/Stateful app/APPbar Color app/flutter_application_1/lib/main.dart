import'package:flutter/Material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
 Widget build(BuildContext context){
    return MaterialApp(
      title: "Container Color App",
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink ),
        useMaterial3: true,
        ),
      home:const ContainerColorApp(),
      );
}

}

class ContainerColorApp extends StatefulWidget{
  const ContainerColorApp({super.key});
  
  @ override
  State<ContainerColorApp> createState()=>_ContainerColorAppState();
}

 class _ContainerColorAppState extends State<ContainerColorApp>{
  bool colorChange=true;

  @override  
  Widget build(BuildContext context){
    
    return Scaffold(
        appBar:AppBar(
          title: const Text("Container Color Change"),
          centerTitle: true,
          backgroundColor:(colorChange)?Colors.pink:Colors.purple,
        ),
        body:Center(
          child: Container(
            height: 300,
            width:300,
            color:(colorChange)?Colors.pink:Colors.purple,
          ),
        ),
        floatingActionButton:FloatingActionButton(
          onPressed:(){
            if(colorChange){
              colorChange=false;
            }else{
              colorChange=true;
            }
            setState(() {    });

          },
          child: const Icon(Icons.face),
        )
      
    );
  }
 }
