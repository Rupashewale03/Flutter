import'package:flutter/Material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
   const MyApp({super.key});

   @override
   Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: const Text("Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),

        body: Center(
          child: Column(
            children: [
              const SizedBox(
                    height: 200,
              ),
              Container(
                height: 50,
                width: 400,
                color: Colors.orange,
              ),
               Container(
                height: 50,
                width: 400,
                color: Colors.white,
                child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/1024px-Ashoka_Chakra.svg.png"),
              ),
               Container(
                height: 50,
                width: 400,
                color: Colors.green,
              )
            ],
          ),
        ),
      )
    );
   }
}


