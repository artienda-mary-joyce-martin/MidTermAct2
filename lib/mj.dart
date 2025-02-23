import 'package:flutter/cupertino.dart';
import 'main.dart';
import 'homepage.dart';

void main(){
  runApp(CupertinoApp(
    theme: CupertinoThemeData(
      brightness: Brightness.light
    ),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApptState();
}

class _MyApptState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Resume',),
        trailing: CupertinoButton(child: Icon(CupertinoIcons.info_circle, size: 20,), 
        onPressed: (){
         
         showCupertinoDialog(context: context, builder:(context){
          return CupertinoAlertDialog(
            title: Text('List of Members'),

            content: Column(
              children:[
                SizedBox(height: 10),
                ClipOval(child: Image.asset('images/mj.jpg', height: 50)),
                Text('Artienda, Mary Joyce M.'),

                SizedBox(height: 10),
                ClipOval(child: Image.asset('images/jhonvianey.jpg', height: 50)),
                Text('Bulanadi, JhonVianey'),

                SizedBox(height: 10),
                ClipOval(child: Image.asset('images/andrea.jpg', height: 50)),
                Text('Culala, Andrea'),

                SizedBox(height: 10),
                ClipOval(child: Image.asset('images/dexter.jpg', height: 50)),
                Text('Gomez, Dexter'),

                SizedBox(height: 10),
                ClipOval(child: Image.asset('images/christian.jpg', height: 50)),
                Text('Timbol, Christian Florence'),
              ],
            ),

            actions:[
              CupertinoButton(child: Text('Close', style: TextStyle(color: CupertinoColors.destructiveRed),), onPressed: (){
                Navigator.pop(context);
              })
            ],
          );
         });

         


        }),
        leading: Icon(CupertinoIcons.chevron_back),
      ),
      
      child: SafeArea(
      child: Column(
      children: [
       
      ],
      ),

      
      
    ));
  }
}