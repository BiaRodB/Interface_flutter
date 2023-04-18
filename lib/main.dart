// ignore: depend_on_referenced_packages
import 'package:device_preview/device_preview.dart';
// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(
  
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),
 
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      title: 'Jogos',
      home: MyHomePage(title: 'Jogos'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State createState() => _MyHomePageState();
}

class _MyHomePageState extends State {
   bool _isVisible = false;
   var mostrar = Container();
   bool m = false;
   var altura=580.00;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.deepOrange,
        titleTextStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
              ),
        elevation: 0,
        // ignore: prefer_const_constructors
        title: Row(
          children: [
            const Text("Olá! Beatriz "),
            const Icon(Icons.person), 
            const SizedBox(width: 100),
            Image.asset('imagens/download4.jpg',  width: 50.0, height: 50.0,),
          ],
          ) 
      ),
      body:Container(
      color: Colors.deepOrange,      
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  color: Colors.white,
                  ),
          child: ListView(
          scrollDirection: Axis.vertical,
          children:[
          Container(
            decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white,
                  ),
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            height: 70.0,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
        
                Container(
                  width: 70.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.orange,
                  ),
                  child: TextButton(
                      onPressed: () {
                          setState(() {
                         mostrar =     Container( 
            decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                  ),
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            height: 80.00,
            width: 800.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Stack(children: [Image.asset('imagens/download.jpg'),
                const Text('Free Fire',style: TextStyle(color: Colors.white), )],),
              const SizedBox(width: 20,), 
              Image.asset('imagens/download.png'),
              const SizedBox(width: 20,), 
              Image.asset('imagens/download1.jpg'),
              const SizedBox(width: 20,),
              Image.asset('imagens/download1.png'),
              const SizedBox(width: 20,),
          ])
                         );
                        });
                       },
                        
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.gamepad,color: Colors.white, size: 20,),
                          Text('FPS',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,),),
                         ],
                      )
                      )
                   
                ),
                const SizedBox(width: 20,),
                Container(
                  width: 70.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.orange,
                  ),
                  child: TextButton(
                      onPressed: () { 
                         setState(() {
                _isVisible = !_isVisible;
              });
                      },
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.gamepad,color: Colors.white, size: 20,),
                          Text('Ação', style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold, // negrito
                         )
                         )
                         ],
                      ) 
                          
              )
              
              ),
        
                const SizedBox(width: 20,),
                Container(
                  width: 70.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.orange,
                  ),
                  child: TextButton(
                      onPressed: () { },
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.gamepad,color: Colors.white, size: 20,),
                          Text('Corrida', style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold, // negrito
                         ))],
                      )
                ),
                ),
                const SizedBox(width: 20,),
                Container(
                  width: 70.0,
                   decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.orange,
                  ),
                  child: TextButton(
                      onPressed: () { setState(() {
                              _isVisible = !_isVisible;
                             });
                         },
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.gamepad,color: Colors.white, size: 20,),
                          Text('Puzzel',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold, // negrito
                         ))],
                  
                      ),    
                ),
                ),
                const SizedBox(width: 20,),
                Container(
                  width: 70.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.orange,
                  ),
                  child: TextButton(
                      onPressed: () { },
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.gamepad,color: Colors.white, size: 20,),
                          Text('Estratégia',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold, // negrito
                         ))],
                      )
                  ),    
                ),
                const SizedBox(width: 20,),
                Container(
                width: 70.0,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.orange,
                  ),
                  child: TextButton(
                      onPressed: () { setState(() {
                       _isVisible = !_isVisible;
                      });
                      },
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.gamepad,color: Colors.white, size: 20,),
                          Text('RPG',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold, // negrito
                         ))],
                      ),
                      )
                ),
                ],
            ),
          ),
        
        mostrar, 
      
                  Container(
                     decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0),
                           color: Colors.white,
                           ),
                     margin: const EdgeInsets.symmetric(vertical: 20.0),
                     height: altura,
                     child: ListView(
                       // This next line does the trick.
                       scrollDirection: Axis.vertical,
                       children: <Widget>[
                         const Text('Todos os Jogos',style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold,)),
                         const SizedBox(height: 10,),
                         Container(
                           width: 70.0,
                           height: 60.0,
                           decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0),
                           color: const Color.fromARGB(255, 212, 204, 204),
                           ),
                           child: TextButton(
                               onPressed: () { },
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Image.asset('imagens/download.jpg'),
                                   const Column( 
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                   Text('Garena Free Fire',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   Text('FPS',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   Row( children:[
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star_half,color: Colors.yellow, size: 20,),
                                   SizedBox(width: 80,),
                                   Text('Ver mais...',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   ]
                                   ),
                                 ])]
                               ),
                               ),
                         ),
                         const SizedBox(height: 10,),
                         Container(
                           width: 70.0,
                           height: 60.0,
                           decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0),
                           color: const Color.fromARGB(255, 212, 204, 204),
                           ),
                           child: TextButton(
                               onPressed: () { },
                               child: Row(
                                 //mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Image.asset('imagens/download.png'),
                                   const Column( 
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                   Text('Amoung Us',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   Text('Estratégia',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   Row( children:[
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star_half,color: Colors.yellow, size: 20,),
                                   SizedBox(width: 80,),
                                   Text('Ver mais...',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   ]
                                   ),
                                 ])
                                 ]
                               ),
                               ),
                         ),
                         const SizedBox(height: 10,),
                       Container(
                           width: 70.0,
                           height: 60.0,
                          decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0),
                           color: const Color.fromARGB(255, 212, 204, 204),
                           ),
                           child: TextButton(
                               onPressed: () { },
                               child: Row(
                                 //mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Image.asset('imagens/download1.jpg'),
                                   const Column( 
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                   Text('Genshin Impact',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   Text('RPG',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   Row( children:[
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star_half,color: Colors.yellow, size: 20,),
                                   SizedBox(width: 80,),
                                   Text('Ver mais...',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   ]
                                   ),
                                 ])
                                 ]
                               ),
                               ),
                         ),
                         const SizedBox(height: 10,),
                       Container(
                           width: 70.0,
                           height: 60.0,
                           decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0),
                           color: const Color.fromARGB(255, 212, 204, 204),
                           ),
                           child: TextButton(
                               onPressed: () { },
                               child: Row(
                                 //mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Image.asset('imagens/download3.jpg'),
                                   const Column( 
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                   Text('Pokémon GO',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   Text('Puzzel',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   Row( children:[
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star_half,color: Colors.yellow, size: 20,),
                                   SizedBox(width: 80,),
                                   Text('Ver mais...',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   ]
                                   ),
                                 ])
                                 ]
                               ),
                               ),
                         ),
                         const SizedBox(height: 10,),
                          Container(
                           width: 70.0,
                           height: 60.0,
                           decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0),
                           color: const Color.fromARGB(255, 212, 204, 204),
                           ),
                           child: TextButton(
                               onPressed: () { },
                               child: Row(
                                 //mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Image.asset('imagens/download4.jpg'),
                                   const Column( 
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                   Text('PUBG Mobile',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   Text('FPS',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   Row( children:[
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star_half,color: Colors.yellow, size: 20,),
                                   SizedBox(width: 80,),
                                   Text('Ver mais...',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   ]
                                  ),
                                 ])
                                 ]
                               ),
                               ),
                         ),
                        const SizedBox(height: 10,),
                         Container(
                           width: 70.0,
                           height: 60.0,
                          decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0),
                           color: const Color.fromARGB(255, 212, 204, 204),
                           ),
                           child: TextButton(
                               onPressed: () { },
                               child: Row(
                                 //mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Image.asset('imagens/download5.jpg'),
                                  const Column( 
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [         
                                   Text('Minecraft Pocket Edition',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   Text('Estratégia',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   Row( children:[
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star_half,color: Colors.yellow, size: 20,),
                                   SizedBox(width: 80,),
                                   Text('Ver mais...',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   ]
                                   ),
                                 ])
                                 ]
                               ),
                               ),
                         ),
                         const SizedBox(height: 10,),
                          Container(
                           width: 70.0,
                           height: 60.0,
                           decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0),
                           color: const Color.fromARGB(255, 212, 204, 204),
                           ),
                           child: TextButton(
                               onPressed: () { },
                               child: Row(
                                 //mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Image.asset('imagens/download1.png'),
                                   const Column( 
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [         
                                   Text('Brawl Stars',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   Text('Puzzel',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   Row( children:[
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star_half,color: Colors.yellow, size: 20,),
                                   SizedBox(width: 80,),
                                   Text('Ver mais...',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   ]
                                  ),
                                ])
                                 ]
                               ),
                               ),
                         ),
                         const SizedBox(height: 10,),
                         Container(
                           width: 70.0,
                           height: 60.0,
                           decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0),
                           color: const Color.fromARGB(255, 212, 204, 204),
                           ),
                           child: TextButton(
                               onPressed: () { },
                               child: Row(
                                 //mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Image.asset('imagens/download6.jpg'),
                                  const Column( 
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                   Text('ROBLOX',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   Text('Ação',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   Row( children:[
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star_half,color: Colors.yellow, size: 20,),
                                   SizedBox(width: 80,),
                                   Text('Ver mais...',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   ]
                                   ),
                                 ])
                                 ]
                             ),
                               ),
                         ),
                         const SizedBox(height: 10,),
                          Container(
                           width: 70.0,
                           height: 60.0,
                           decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10.0),
                           color: const Color.fromARGB(255, 212, 204, 204),
                           ),
                           child: TextButton(
                               onPressed: () { },
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.start,
                                 children: [
                                   Image.asset('imagens/download2.jpg'),
                                  const Column( 
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                   Text('Subway Surfers',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   Text('Corrida',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   Row( children:[
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star,color: Colors.yellow, size: 20,),
                                   Icon(Icons.star_half,color: Colors.yellow, size: 20,),
                                   SizedBox(width: 80,),
                                   Text('Ver mais...',style: TextStyle(color: Colors.black, fontSize: 16.0,fontWeight: FontWeight.bold,)),
                                   ]
                                   ),
                                 ])
                                 ]
                               ),
                               ),
                         ),
                         const SizedBox(height: 10,), 
                       ]
                     )
                   ),       
               ],
            ),
          ),
        ), 
     );
  }
}