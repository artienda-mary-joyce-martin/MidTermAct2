import 'package:flutter/cupertino.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(

      navigationBar: CupertinoNavigationBar(
        middle: Text('MidTermAct2',),
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


        })
      ),

      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SafeArea(child: Column(
          children: [
            Text("Welcome to Resume")
          ],
        )),
      ),
    );
  }
}