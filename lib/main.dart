import 'package:flutter/cupertino.dart';
import 'homepage.dart';


void main(){
  runApp(CupertinoApp(
    theme: CupertinoThemeData(
      brightness: Brightness.dark
    ),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State <MyApp> createState() => _MyAppState();
}

class _MyAppState extends State <MyApp> {

  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool hidePassword = true;
  String error = "";
  bool isLogin(String username, String password){
    print(username);
    print(password);
    if(username == "admin" && password == "123"){
      return true;
    }else{
      return false;
    }
  }

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
        SizedBox(height: 200,),
        Row(
          children: [
            Text('Log In', style: TextStyle(color: CupertinoColors.systemBlue, fontWeight: FontWeight.bold, fontSize: 25),),
          ],
        ),
        SizedBox(height: 20,),
        CupertinoTextField(
          placeholder: "Username",
          controller: _username,
          padding: EdgeInsets.all(13),
          prefix: Icon(CupertinoIcons.person),
        ),

          SizedBox(height: 5,),
          CupertinoTextField(
          placeholder: "Password",
          controller: _password,
          padding: EdgeInsets.all(10),
          obscureText: hidePassword,
          prefix: Icon(CupertinoIcons.lock),
          suffix: CupertinoButton(child: Icon(hidePassword? CupertinoIcons.eye : CupertinoIcons.eye_slash, size: 20,), onPressed:(){
            setState(() {
              hidePassword = !hidePassword;            
           });
          }),
        ),

        SizedBox(height: 20,),
        Container(
          width: 200,
          decoration: BoxDecoration(
            color: CupertinoColors.activeBlue
          ),
          child: CupertinoButton(child: Text('LogIn', style: TextStyle(color: CupertinoColors.white),), onPressed: (){
            isLogin(_username.text, _password.text) ?

            Navigator.pushReplacement(context, CupertinoPageRoute(builder: (context)=> Homepage()))

           : setState((){
              _password.text = "";
              error = "Incorrect Username or Password";
            });
        }),
        ),

        SizedBox(height: 10,),
        Text("$error", style: TextStyle(color: CupertinoColors.destructiveRed)),
      ],
    )),
    ));
  }
}