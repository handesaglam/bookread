
import 'package:bookread/provider/provider_book.dart';
import 'package:bookread/view/detail.dart';

import 'package:bookread/view_model/book_view_model.dart';
import 'package:bookread/view_model/list_view_model.dart';


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';
import '../component/color.dart';
import '../model/mybook.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //  Provider.of<BookProvider>(context, listen: false).getAllBook();
    });
  }

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:AppBar(
        elevation:0.0 ,
        backgroundColor: black,
        leading:  IconButton(
              icon: Icon(Icons.menu), 
              color: white,
              onPressed: () {

      
              }
            ),
         
actions: [
  Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(LineIcons.search), 
              color: white,
              onPressed: () {}
            ),
         //MyBook
         InkWell(
          onTap: (() {
       //  mybook.add(MyBook(id: 1, title: "yghhgh"));



          }),
child:    Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(width: 1, color: white),
                image: DecorationImage(
                  image: NetworkImage("https://www.konhaber.com/sahifeler/2022/06/17/havadis/detay1655470380.jpg"),
                  fit: BoxFit.cover
                ),
              ),
            ),

         )
          ],
        ),
],

      ),


     backgroundColor: black,
      body:

          
ListView(
                children: [

    CarouselSlider(
options: CarouselOptions(
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            viewportFraction: 0.93,
            autoPlay: true,
          ),
items:  List.generate(context.read<JobViewModel>().jobList.length, (index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(context.read<JobViewModel>().jobList[index].image.toString()),
                    fit: BoxFit.cover
                  )
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: black.withOpacity(0.2)
                  ),
                ),
              ),
            );
          }),
               
              ),


  SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
          InkWell(
            onTap: (() {
    
            }),
child:  Text("CONTINUE", style: TextStyle(color: grey),),

          ),
              SizedBox(width: 5),
              Text("READ", style: TextStyle(color: white, fontWeight: FontWeight.w500),),
              SizedBox(width: 8),
              Icon(Icons.arrow_forward_ios_sharp, color: grey, size: 16,)
            ],
          ),
        ),



SizedBox(height: 25),
    SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(context.read<JobViewModel>().jobList.length, (index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? 15 : 10,
                 // right: index == (continueWatchings.length - 1) ? 15 : 0
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
           
         // MovieDetailPage 
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MovieDetailPage(
context.read<JobViewModel>().jobList[index].image.toString(),

context.read<JobViewModel>().jobList[index].title.toString(),
context.read<JobViewModel>().jobList[index].desciption.toString(),
context.read<JobViewModel>().jobList[index].id.toString(),
context.read<JobViewModel>().jobList[index].image.toString(),

context.read<JobViewModel>().jobList[index].gendre.toString()
  )));
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 180,
                        width: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(context.read<JobViewModel>().jobList[index].image.toString()),
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: 125,
                          child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,

                            children: [

                          
                              Column(
                               
                                children: [

                                  Container(

                                  child: Text(context.read<JobViewModel>().jobList[index].title.toString(), style: TextStyle(color: white, fontSize: 14),),

                                  ),
                               Container(

                              child: Text(context.read<JobViewModel>().jobList[index].author.toString(), style: TextStyle(color: white, fontSize: 14),),

                                  ),

  Container(

                                child: Text(context.read<JobViewModel>().jobList[index].published.toString(), style: TextStyle(color: white, fontSize: 14),),

  )
                                
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),


          SizedBox(height: 25),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            children: [
              Text("MY", style: TextStyle(color: grey),),
              SizedBox(width: 5),
              Text("LIST", style: TextStyle(color: white, fontWeight: FontWeight.w500),),
              SizedBox(width: 8),
              Icon(Icons.arrow_forward_ios_sharp, color: grey, size: 16,)
            ],
          ),
        ),


 SizedBox(height: 20),
  SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:  Row(
            children: List.generate(context.read<JobViewModel>().jobList.length, (index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? 15 : 10,
                 // right: index == (continueWatchings.length - 1) ? 15 : 0
                ),
                child: InkWell(
                  borderRadius: BorderRadius.circular(15),
                  onTap: () {
           
         // MovieDetailPage 
  //  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MovieDetailPage(book[index].desciption.toString())));
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 180,
                        width: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: NetworkImage(context.read<JobViewModel>().jobList[index].image.toString()),
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        child: Container(
                          width: 125,
                          child: Column(
                           mainAxisAlignment: MainAxisAlignment.start,

                            children: [

                          
                              Column(
                               
                                children: [

                                  Container(

                                  child: Text(context.read<JobViewModel>().jobList[index].title.toString(), style: TextStyle(color: white, fontSize: 14),),

                                  ),
                               Container(

                              child: Text(context.read<JobViewModel>().jobList[index].author.toString(), style: TextStyle(color: white, fontSize: 14),),

                                  ),

  Container(

                                child: Text(context.read<JobViewModel>().jobList[index].published.toString(), style: TextStyle(color: white, fontSize: 14),),

  )
                                
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),

              
       
          
        ),


        SizedBox(height: 20),
      /*  SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(book.length, (index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: index == 0 ? 15 : 10,
                  right: index == (book.length - 1) ? 15 : 0
                ),
                child: Container(
                  height: 180,
                  width: 125,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(book[index].image.toString()),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
              );
            }),
          ),
        ),*/
                ],



              
          
  )
       
        
      

      
    );
  }
}
 Widget buildListItem(BuildContext context, int index) {
 final job = context.read<JobViewModel>().jobList[index];
 return 
              CarouselSlider(
options: CarouselOptions(
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            viewportFraction: 0.93,
            autoPlay: true,
          ),
items:  List.generate(context.read<JobViewModel>().jobList.length, (index) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(""),
                    fit: BoxFit.cover
                  )
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: black.withOpacity(0.2)
                  ),
                ),
              ),
            );
          }),
               
              );

  }
