import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../ConstColor/Colors.dart';
import '../Ui/ViewPage.dart';


class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List<String> placeNames = [
    'Japan',
    'Bangladesh',
    'Africa',
    'Canada',
    'India',
  ];

  List<String> placeImages = [
    'https://cdn.pixabay.com/photo/2014/10/07/13/48/mountain-477832__340.jpg',
    'https://cdn.pixabay.com/photo/2018/03/20/14/00/sea-3243357__340.jpg',
    'https://cdn.pixabay.com/photo/2020/05/05/23/08/africa-5135407__340.jpg',
    'https://cdn.pixabay.com/photo/2020/04/16/11/41/waterfall-5050298__340.jpg',
    'https://cdn.pixabay.com/photo/2019/04/07/07/52/taj-mahal-4109110_960_720.jpg',
  ];
  List<String> placenames = [
    'Fujinomaiya',
    'Cox,s Bazar',
    'CapTown',
    'Nagara Folls',
    'Taj Mohol',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  color: ConstColor().containerColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                child: SafeArea(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hei, Jhon Willy',
                              style:
                                  TextStyle(color: ConstColor().subTitleColor),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Discover Your Distination For Holiday',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 4, color: Colors.white),
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://cdn.pixabay.com/photo/2017/11/06/13/45/cap-2923682__340.jpg'),
                                        fit: BoxFit.cover)),
                              ),
                            ],
                          ))
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: -20,
                  child: Container(
                    clipBehavior: Clip.none,
                    padding: EdgeInsets.only(left: 25, right: 25),
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          hintText: 'Search Location...',
                          helperStyle: TextStyle(
                              color: ConstColor().subTitleColor,
                              letterSpacing: 1),
                          filled: true,
                          suffixIcon: Icon(
                            IconlyBroken.search,
                            color: ConstColor().mainColor,
                          ),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none)),
                    ),
                  ))
            ],
          ),
          SizedBox(
            height: 35,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                      color: ConstColor().titleColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      letterSpacing: 1),
                )
              ],
            ),
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
                itemCount: placeNames.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                        placeImages[index],
                                      ),
                                      fit: BoxFit.cover,)
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(placeNames[index],style: TextStyle(fontWeight: FontWeight.w500,color: Colors.black),),
                          ],
                        )),
                  );
                }),
          ),

          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 300,
              width: double.infinity,
              child: ContainedTabBarView(
                tabs: [
                  Column(
                    children: [
                      Text('Upcoming',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                    ],
                  ),
                  Text('Recent',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20)),
                ],
                tabBarProperties: TabBarProperties(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 8.0,
                  ),
                  indicator: ContainerTabIndicator(

                    color: Colors.transparent,
                    borderWidth: double.nan,

                  ),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey[400],
                ),
                views: [
                 Container(
                   height:350,
                   child: ListView.builder(
                       itemCount: placeImages.length,
                       scrollDirection: Axis.horizontal,
                       itemBuilder: (_,index){

                     return GestureDetector(
                       onTap: (){
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => const ViewPage()),
                         );
                       },
                       child: Padding(padding: EdgeInsets.all(5),


                       child:  Container(
                         height: 330,
                         width: 160,
                         decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),
                             color: Colors.white,
                           boxShadow: [
                             BoxShadow(
                               color: Colors.black12,
                               offset: const Offset(
                                 2.0,
                                 2.0,
                               ),
                               blurRadius: 5.0,
                               spreadRadius: 2.0,
                             ), //BoxShadow
                             BoxShadow(
                               color: Colors.white,
                               offset: const Offset(0.0, 0.0),
                               blurRadius: 0.0,
                               spreadRadius: 0.0,
                             ), //BoxShadow
                           ],
                         ),

                         child:Column(
                           mainAxisAlignment: MainAxisAlignment.start,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [

                             Padding(
                               padding: const EdgeInsets.all(5.0),
                               child: Center(
                                 child: ClipRRect(
                                     borderRadius: BorderRadius.circular(15),
                                     child: Image.network(placeImages[index],width: 180,height: 150,fit: BoxFit.cover,)),

                               ),
                             ),
                             SizedBox(height: 4,),
                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   Text(placenames[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                                   SizedBox(height: 8 ,),
                                   Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                     children: [
                                       Text(placeNames[index]),
                                       Text('\$250',style: TextStyle(color: ConstColor().mainColor),)
                                     ],
                                   ),
                                 ],
                               ),
                             )
                           ],
                         ) ,
                       ),),
                     );


                   })
                 ),
                  Container(
                    height: 290,
                      color: Colors.green),
                ],
                onChange: (index) => print(index),
              ),
            ),
          ),









        ],
      ),
    ));
  }
}
