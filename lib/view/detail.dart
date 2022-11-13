import 'package:bookread/component/color.dart';
import 'package:bookread/component/menu.dart';
import 'package:bookread/component/shared_prefs.dart';
import 'package:bookread/model/user.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';


class MovieDetailPage extends StatefulWidget {
  String? detail;
  String? id;
  String title;
  String author;
  String image;
  String published;

  MovieDetailPage(this.detail,this.author,this.id,this.image,this.published,this.title);
  @override
  _MovieDetailPageState createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: black,
      body: getBody(size),
    );
  }



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

  

  Widget getBody(size) {
    return Column(
      children: [
        Container(
          height: size.height * 0.42,
          width: size.width,
          child: Stack(
            children: [
              Container(
                height: size.height * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)
                  ),
                  image: DecorationImage(
                    image: NetworkImage("http://placeimg.com/480/640/any"),
                    fit: BoxFit.cover
                  )
                ),
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios, color: white),
                        onPressed: () {
                          Navigator.pop(context);
                        }
                      ),
                      IconButton(
                        icon: Icon(Icons.add, color: white),
                        onPressed: () {
                          print("hgh");
                                 userSave.title=widget.detail.toString();
                                 userSave.author=widget.detail.toString();
    sharedPref.save("user", userSave);


                        }
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Container(
                    height: 58,
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: lightBlack
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: List.generate(menuBars.length, (index) {
                          return GestureDetector(
                            onTap: () {
                      
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(width: 1, color: red)
                                  ),
                                  child: Center(child: menuBars[index]['icon'],),
                                ),
                                SizedBox(height: 5),
                                InkWell(

onTap: (() {
  print("mmmm");
}),
child: Text(menuBars[index]['name'], style: TextStyle(color: lightGrey, fontSize: 11),),

                                )
                              ],
                            ),
                          );
                        }),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
                  child: Column(
                    children: [
                     /* Row(
                        children: [
                          Text(widget.author,
                           style: TextStyle(color: green, fontWeight: FontWeight.bold),),
                          SizedBox(width: 10),
                          Text(widget.published.toString() ,style:TextStyle(color: lightGrey),),
                          SizedBox(width: 10),
                          Container(
                            decoration: BoxDecoration(
                              color: lightGrey,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 3),
                              child: Text("nnn", style: TextStyle(fontSize: 13),),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text("hhh", style: TextStyle(color: lightGrey),)
                        ],
                      ),*/
                      SizedBox(height: 15),
                      Text(
                       widget.author.toString()+" "+widget.title.toString()+" "+widget.detail.toString()+
                       " "+widget.image.toString()+" "+widget.image.toString()+" "+widget.published,
                        maxLines: 8, 
                        overflow: TextOverflow.ellipsis, 
                        style: TextStyle(color: white),
                      ),
                   
                     
                    ],
                  ),
                ),
               
               
             
               
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ],
    );
  }
}