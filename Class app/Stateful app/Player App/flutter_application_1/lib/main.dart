import'package:flutter/Material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: "Player App",
      theme: ThemeData( 
        colorScheme:ColorScheme.fromSeed(seedColor:Colors.pink),
        useMaterial3:true,
      ),
      home:PlayersApp(),
    );
  }
}


class PlayersApp extends StatefulWidget{
  const PlayersApp({super.key});

  @override   
  State<PlayersApp> createState()=> _PlayersAppState();
}

class _PlayersAppState extends State<PlayersApp>{
    int _counter=0;
    List<String> playerList=<String>[
      "https://images.mykhel.com/img/2023/02/harmanpreet-kaur-india-women-captain-1677064880.jpg",
      "https://images.indianexpress.com/2021/09/smriti-mandhana-fb.jpg?resize=728",
      "https://images.hindustantimes.com/img/2021/10/08/1600x900/poonam-yadav-jumps-getty_1633681420325_1633681425058.jpg",
      "https://akm-img-a-in.tosshub.com/aajtak/images/photo_gallery/202206/2017_-_gettyimages-820684052.jpg",
      "https://images.herzindagi.info/image/2022/Sep/Jhulan-social.jpg"
    ];



  @override  
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.black,
         appBar: AppBar(   
          title: const Text("Players App"),
          backgroundColor:Colors.blue,
         ),

         body:  Center(
          child:Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children:<Widget> [
              Image.network(playerList[_counter],
              height: 300,
              ),

             ],
          )
         ),

         floatingActionButton: FloatingActionButton(  
          onPressed: (){ 
            setState(() {
              if(_counter<playerList.length-1){
              _counter++;
            }else{
              _counter=0;
            }
              
            });  

          },
          
          tooltip: 'Next Picture',
          child: const Icon(Icons.face),
         ),
    );
  }
}