import 'package:delivery_app/pages/services_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  TextEditingController _controller = TextEditingController();
  List bottomItems = [
    [AntDesign.home, 'Home', false],
    [MaterialCommunityIcons.truck_delivery, 'Tracking', false],
    [Icons.history, 'History', false],
    [Ionicons.ios_person, 'Profile', false]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 420,
            child: Stack(
              children: <Widget>[
                Container(
                  height: 270,
                  color: Colors.indigo,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Sunu Bright Etornam',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text('what will you do today?',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white))
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: Colors.indigoAccent,
                                  image: DecorationImage(image: 
                                  ExactAssetImage('assets/avarta.jpg'),fit: BoxFit.contain),
                                  border:
                                      Border.all(color: Colors.white, width: 1),
                                  borderRadius: BorderRadius.circular(45)),
                            )
                          ],
                        ),
                        SizedBox(height: 25),
                        TextField(
                          onTap: () {},
                          controller: _controller,
                          decoration: InputDecoration(
                              fillColor: Colors.white10,
                              filled: true,
                              focusColor: Colors.white10,
                              suffixIcon: Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              hintText: 'Search here...',
                              hintStyle: TextStyle(color: Colors.white),
                              border: InputBorder.none,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white10),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.indigoAccent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)))),
                        )
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(8),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16.0, 10, 16, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Check shipping cost',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      40,
                                  child: TextField(
                                    onTap: () {},
                                    controller: _controller,
                                    decoration: InputDecoration(
                                        fillColor: Colors.white10,
                                        filled: true,
                                        hintText: 'FROM',
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none,
                                        enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.indigoAccent),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)))),
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      40,
                                  child: TextField(
                                    onTap: () {},
                                    controller: _controller,
                                    decoration: InputDecoration(
                                        fillColor: Colors.white10,
                                        filled: true,
                                        focusColor: Colors.indigoAccent,
                                        hintText: 'TO',
                                        hintStyle:
                                            TextStyle(color: Colors.grey),
                                        border: InputBorder.none,
                                        enabledBorder: OutlineInputBorder(
                                            borderSide:
                                                BorderSide(color: Colors.grey),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5))),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.indigoAccent),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(5)))),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 15),
                            Center(
                              child: Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width,
                                child: Center(
                                  child: Text('Check',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.white)),
                                ),
                                decoration: BoxDecoration(
                                    color: Colors.pinkAccent,
                                    borderRadius: BorderRadius.circular(8)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: 90,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(16),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.indigoAccent,
                borderRadius: BorderRadius.circular(8)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Material(
                           borderRadius: BorderRadius.circular(45),
              color: Colors.white.withOpacity(.2),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/happy.png',height: 40,width: 40,),
                  )),
                SizedBox(width: 15),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Congratulations!',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8),
                      Text(
                          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit.''',
                          style: TextStyle(color: Colors.white60, fontSize: 14))
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('My Services',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ServicesPage()),
                    );
                  },
                  child: Text('View All',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.indigoAccent)),
                )
              ],
            ),
          ),
          SizedBox(height: 10),
          buildServicesContainer(
              context: context,
              voidCallback: null,
              title: 'Courier',
              subTitle: '10k courier',
              icon: 'assets/courier.png'),
          buildServicesContainer(
              context: context,
              voidCallback: null,
              title: 'Shipping',
              subTitle: 'save delivery',
              icon: 'assets/package.png'),
          SizedBox(height: 10),
        ],
      ),
      bottomNavigationBar: Material(
        elevation: 4,
        child: Container(
          height: 90,
          width: MediaQuery.of(context).size.width,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    bottomItems[0][2] = true;
                    bottomItems[1][2] = false;
                    bottomItems[2][2] = false;
                    bottomItems[3][2] = false;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(AntDesign.home,
                        color: bottomItems[0][2] ? Colors.black : Colors.grey),
                    Text('Home',
                        style: TextStyle(
                            color:
                                bottomItems[0][2] ? Colors.black : Colors.grey))
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    bottomItems[0][2] = false;
                    bottomItems[1][2] = true;
                    bottomItems[2][2] = false;
                    bottomItems[3][2] = false;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(MaterialCommunityIcons.truck_delivery,
                        color: bottomItems[1][2] ? Colors.black : Colors.grey),
                    Text('Tracking',
                        style: TextStyle(
                            color:
                                bottomItems[1][2] ? Colors.black : Colors.grey))
                  ],
                ),
              ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.pinkAccent,
                ),
                child: Icon(
                  MaterialCommunityIcons.barcode_scan,
                  color: Colors.white,
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    bottomItems[0][2] = false;
                    bottomItems[1][2] = false;
                    bottomItems[2][2] = true;
                    bottomItems[3][2] = false;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.history,
                      color: bottomItems[2][2] ? Colors.black : Colors.grey,
                    ),
                    Text(
                      'History',
                      style: TextStyle(
                          color:
                              bottomItems[2][2] ? Colors.black : Colors.grey),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    bottomItems[0][2] = false;
                    bottomItems[1][2] = false;
                    bottomItems[2][2] = false;
                    bottomItems[3][2] = true;
                  });
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Ionicons.ios_person,
                        color: bottomItems[3][2] ? Colors.black : Colors.grey),
                    Text('Profile',
                        style: TextStyle(
                            color:
                                bottomItems[3][2] ? Colors.black : Colors.grey))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildServicesContainer(
      {BuildContext context,
      String icon,
      String title,
      String subTitle,
      VoidCallback voidCallback}) {
    return Theme(
      data: ThemeData(
          brightness: Brightness.light, applyElevationOverlayColor: true),
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.fromLTRB(16, 5, 16, 6),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Colors.grey.shade200.withOpacity(.5),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Material(
              borderRadius: BorderRadius.circular(45),
              color: Colors.indigoAccent.withOpacity(.3),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(icon),
              )),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '$title',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text('$subTitle',
                      style: TextStyle(color: Colors.pink, fontSize: 14))
                ],
              ),
            ),
            IconButton(
                icon:
                    Icon(Icons.arrow_forward_ios, color: Colors.grey.shade400),
                onPressed: voidCallback)
          ],
        ),
      ),
    );
  }
}
