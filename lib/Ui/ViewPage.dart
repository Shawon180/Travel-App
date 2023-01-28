import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:lottie/lottie.dart';

import '../ConstColor/Colors.dart';

class ViewPage extends StatefulWidget {
  const ViewPage({Key? key}) : super(key: key);
  @override
  State<ViewPage> createState() => _ViewPageState();
}

class _ViewPageState extends State<ViewPage> {
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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  IconlyLight.arrow_left_circle,
                  color: ConstColor().mainColor,
                ),
              ),
            )),
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Container(
        height: 85,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your Trip Count',
                    style: TextStyle(color: ConstColor().subTitleColor),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '\$250',
                    style: TextStyle(
                        color: ConstColor().titleColor,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  )
                ],
              ),
              Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width / 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ConstColor().mainColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Book Now',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  clipBehavior: Clip.none,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://cdn.pixabay.com/photo/2014/10/07/13/48/mountain-477832__340.jpg'),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  bottom: -40,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 25, right: 25),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        clipBehavior: Clip.none,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Duration',
                                    style: TextStyle(
                                        color: ConstColor().subTitleColor),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    '6 days',
                                    style: TextStyle(
                                        color: ConstColor().titleColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Participant',
                                    style: TextStyle(
                                        color: ConstColor().subTitleColor),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    '30 People',
                                    style: TextStyle(
                                        color: ConstColor().titleColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Landing',
                                    style: TextStyle(
                                        color: ConstColor().subTitleColor),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    '2 Step',
                                    style: TextStyle(
                                        color: ConstColor().titleColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fujinomiya',
                    style: TextStyle(
                        color: ConstColor().titleColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(IconlyLight.location,
                              color: ConstColor().titleColor),
                          Text(
                            ' Japan',
                            style: TextStyle(color: ConstColor().subTitleColor),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Icon(IconlyBold.star, color: ConstColor().mainColor),
                          Text(
                            ' 4.5 (2.220)',
                            style: TextStyle(color: ConstColor().subTitleColor),
                          )
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3,
                    child: ContainedTabBarView(
                      tabs: [
                        Text('About'),
                        Text('Benefit'),
                        Text('Highilghts'),
                      ],
                      tabBarProperties: TabBarProperties(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 32.0,
                          vertical: 8.0,
                        ),
                        indicator: ContainerTabIndicator(
                          radius: BorderRadius.circular(5.0),
                          color: Color(0xffFF7223),
                          borderWidth: double.nan,
                        ),
                        labelColor: Colors.white,
                        unselectedLabelColor: ConstColor().subTitleColor,
                      ),
                      views: [
                        Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Text(
                                  'Momiji Fujimiya thought she was just an ordinary middle school student. One day, she is confronted on her way to school by a cat-eyed man with blue Momiji is intrigued as to why she was referred to as "Kushinada". She discovers that "Kushinada" refers to an ancient princess whose blood holds the power to stop the ancient monsters known as Aragami by sending them to an eternal sleep. Momiji',
                                  style: TextStyle(
                                      color: ConstColor().subTitleColor,
                                      letterSpacing: 1),
                                  maxLines: 4,
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                  child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    IconlyLight.home,
                                    color: ConstColor().titleColor,
                                  ),
                                ),
                                title: Text(
                                  'Hotel',
                                  style: TextStyle(
                                      color: ConstColor().titleColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                subtitle: Text(
                                  'Charme Spagna Boutique Hotel',
                                  style: TextStyle(
                                      color: ConstColor().subTitleColor),
                                ),
                              )),
                              Expanded(
                                  child: ListTile(
                                onTap: () => showDialog<String>(
                                  context: context,
                                  builder: (BuildContext context) =>
                                      AlertDialog(
                                    title: Column(
                                      children: [
                                        ListTile(
                                          title: Text(
                                            'Ticket Details',
                                            style: TextStyle(
                                                color: ConstColor().titleColor,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          subtitle: Text(
                                            'Check The Amount Of Trickets',
                                            style: TextStyle(
                                              color: ConstColor().subTitleColor,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    content: Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              3,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Icon(
                                                        IconlyLight.ticket,
                                                        color: ConstColor()
                                                            .titleColor,
                                                        size: 50,
                                                      ),
                                                      SizedBox(
                                                        width: 10,
                                                      ),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Fujimiya',
                                                            style: TextStyle(
                                                                color: ConstColor()
                                                                    .titleColor,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w700),
                                                          ),
                                                          Text(
                                                            'Japan',
                                                            style: TextStyle(
                                                              color: ConstColor()
                                                                  .subTitleColor,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Icon(IconlyLight.plus),
                                                      SizedBox(
                                                        width: 3,
                                                      ),
                                                      Text(
                                                        '1',
                                                        style: TextStyle(
                                                            color: ConstColor()
                                                                .mainColor),
                                                      ),
                                                      SizedBox(
                                                        width: 3,
                                                      ),
                                                      Icon(IconlyLight.plus)
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                'Ticket Purchases Include The Beniefits obtained According to The information Privide ',
                                                style: TextStyle(
                                                  color: ConstColor()
                                                      .subTitleColor,
                                                ),
                                                maxLines: 3,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              GestureDetector(
                                                  onTap:
                                                      () => showDialog<String>(
                                                            context: context,
                                                            builder: (BuildContext
                                                                    context) =>
                                                                AlertDialog(
                                                              content:
                                                                  Container(
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height /
                                                                    2.3,
                                                                child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Container(
                                                                              height: 190,
                                                                              child: Lottie.network('https://assets7.lottiefiles.com/private_files/lf30_mg5bq9pg.json'),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        SizedBox(
                                                                            height:
                                                                                20),
                                                                        Text(
                                                                          'Payment Sucess',
                                                                          style: TextStyle(
                                                                              color: ConstColor().mainColor,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 20),
                                                                        ),
                                                                        SizedBox(
                                                                          height:
                                                                              10,
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(8.0),
                                                                          child:
                                                                              Text(
                                                                            'Your Payment Has Been Confirmed You Can  Check Your Ticket Now ',
                                                                            style:
                                                                                TextStyle(
                                                                              color: ConstColor().subTitleColor,
                                                                            ),
                                                                            maxLines:
                                                                                3,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Center(
                                                                      child:
                                                                          Container(
                                                                        width: MediaQuery.of(context)
                                                                            .size
                                                                            .width,
                                                                        decoration: BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(10),
                                                                            color: ConstColor().mainColor),
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Padding(
                                                                              padding: const EdgeInsets.all(10.0),
                                                                              child: Text(
                                                                                'Check You Ticket',
                                                                                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                  child: Text(
                                                    'Payment Via',
                                                    style: TextStyle(
                                                        color: ConstColor()
                                                            .titleColor,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 20),
                                                  )),
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    border: Border.all(
                                                        width: 1,
                                                        color: Colors.black12)),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Visa',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                          SizedBox(
                                                            width: 10,
                                                          ),
                                                          Column(
                                                            children: [
                                                              Icon(
                                                                IconlyLight
                                                                    .arrow_up_2,
                                                                color: ConstColor()
                                                                    .titleColor,
                                                                size: 15,
                                                              ),
                                                              Icon(
                                                                IconlyLight
                                                                    .arrow_down_2,
                                                                color: ConstColor()
                                                                    .titleColor,
                                                                size: 15,
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                leading: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    IconlyLight.ticket,
                                    color: ConstColor().titleColor,
                                  ),
                                ),
                                title: Text(
                                  'Ticket',
                                  style: TextStyle(
                                      color: ConstColor().titleColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                subtitle: Text(
                                  '1 Ticket For One trip Home And Away',
                                  style: TextStyle(
                                      color: ConstColor().subTitleColor),
                                ),
                              )),
                              Expanded(
                                  child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.white,
                                  child: Icon(
                                    IconlyLight.star,
                                    color: ConstColor().titleColor,
                                  ),
                                ),
                                title: Text(
                                  'The Best Food',
                                  style: TextStyle(
                                      color: ConstColor().titleColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                subtitle: Text(
                                  'Daily Mwals For Each Vacation',
                                  style: TextStyle(
                                      color: ConstColor().subTitleColor),
                                ),
                              )),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                  child: ListTile(
                                leading: Container(
                                  height: 40,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://cdn.pixabay.com/photo/2020/04/16/11/41/waterfall-5050298__340.jpg'),
                                          fit: BoxFit.cover)),
                                ),
                                title: Text(
                                  'Shiraito Falls',
                                  style: TextStyle(
                                      color: ConstColor().titleColor,
                                      fontWeight: FontWeight.w700),
                                ),
                                subtitle: Text(
                                  '3 km',
                                  style: TextStyle(
                                      color: ConstColor().subTitleColor),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: ConstColor().titleColor,
                                ),
                              )),
                              Expanded(
                                  child: ListTile(
                                leading: Container(
                                  height: 40,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://cdn.pixabay.com/photo/2018/03/20/14/00/sea-3243357__340.jpg'),
                                          fit: BoxFit.cover)),
                                ),
                                title: Text(
                                  'Cox,s Bazar',
                                  style: TextStyle(
                                      color: ConstColor().titleColor,
                                      fontWeight: FontWeight.w700),
                                ),
                                subtitle: Text(
                                  '3 km',
                                  style: TextStyle(
                                      color: ConstColor().subTitleColor),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: ConstColor().titleColor,
                                ),
                              )),
                              Expanded(
                                  child: ListTile(
                                leading: Container(
                                  height: 40,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://cdn.pixabay.com/photo/2019/04/07/07/52/taj-mahal-4109110_960_720.jpg'),
                                          fit: BoxFit.cover)),
                                ),
                                title: Text(
                                  'Taj Mohal',
                                  style: TextStyle(
                                      color: ConstColor().titleColor,
                                      fontWeight: FontWeight.w700),
                                ),
                                subtitle: Text(
                                  '3.7 km',
                                  style: TextStyle(
                                      color: ConstColor().subTitleColor),
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  color: ConstColor().titleColor,
                                ),
                              )),
                            ],
                          ),
                        ),
                      ],
                      onChange: (index) => print(index),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
