

import 'package:bookread/component/color.dart';
import 'package:bookread/component/shared_prefs.dart';
import 'package:bookread/model/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
class Demo extends StatefulWidget {
  Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  SharedPref sharedPref = SharedPref();
  User userSave = User();
  User userLoad = User();

  loadSharedPrefs() async {
    try {
      User user = User.fromJson(await sharedPref.read("user"));
      
      setState(() {
        userLoad = user;
      });
    } catch (Excepetion) {
     
    }
  }


  deletedata(){
 sharedPref.remove("user");
 setState(() {
                    userLoad = User();
                  });



  }


@override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadSharedPrefs();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: black,
 leading:  IconButton(
              icon: Icon(Icons.arrow_back), 
              color: white,
              onPressed: () {
                Navigator.pop(context);
              }
            ),

      ),
      backgroundColor: black,
body: ListView(
      children: <Widget>[
        SizedBox(height: 20,),

        if(userLoad.title==null)...[
SizedBox(height: MediaQuery.of(context).size.height/3,),
      Icon(Icons.search,
color: Colors.white,
          )


        ]else...[
Column(
children: [
Card(
    color: Colors.black54,
     child: ListTile(
                leading: Icon(Icons.book_sharp,color: Colors.white,),
                title: Text(userLoad.title.toString(),

                style: TextStyle(color: Colors.white,fontSize: 8),
                ),
              trailing: InkWell(
                onTap: (() {
                  deletedata();
                }),
                child: Icon(Icons.delete,color: Colors.white,),
              )
            ),
          ),


],


)



 /*
 Card(
        color: Colors.black54,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListTile(
          title: Text(userLoad.author.toString(),
             style: TextStyle(color: Colors.white),
          ),
          leading: Text(userLoad.title.toString(),
          style: TextStyle(color: Colors.white),
          ),
          trailing:InkWell(
            onTap: (() {
            
              deletedata();
            }),
child: Icon(Icons.delete,
          color: Colors.white,
          ),

          )
        )
      ),
    
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    ),
  */

        ],
        /*
    Expanded(
    child: Card(
        color: Colors.black54,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListTile(
          title: Text(userLoad.name.toString(),
             style: TextStyle(color: Colors.white),
          ),
          leading: Text(userLoad.age.toString(),
          style: TextStyle(color: Colors.white),
          ),
          trailing:InkWell(
            onTap: (() {
              print("mmmmmm");
              deletedata();
            }),
child: Icon(Icons.delete,
          color: Colors.white,
          ),

          )
        )
      ),
    
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    ),
  ),*/
                  SizedBox(
                    width: 6.0,
                  ),
        
      ],
    )

    );
  } }

