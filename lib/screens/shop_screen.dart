import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodpanda_ui/screens/splash_screen.dart';

import '../widgets/popular_tab.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  //shop
  final List<String> categories = [
    "Popular",
    "Cricket Deals",
    "Strong Pepsi Deals",
    "All New"
  ];

  final List<Map<String, String>> popularItems = [
    {
      "title": "Cricket Deal 2",
      "price": "Rs. 549.00",
      "oldPrice": "Rs. 869.00",
      "image": "assets/images/cricket_deal_2.jpg"
    },
    {
      "title": "Chicken Fajita",
      "price": "from Rs. 785.00",
      "image": "assets/images/chicken_fajita.jpg"
    },
    {
      "title": "Chicken Tikka",
      "price": "from Rs. 785.00",
      "image": "assets/images/chicken_tikka.jpg"
    },
    {
      "title": "Chicken Teriyaki",
      "price": "Rs. 840.00",
      "oldPrice": "Rs. 999.00",
      "image": "assets/images/chicken_teriyaki.jpg"
    },
    {
      "title": "Roasted Chicken Breast",
      "price": "from Rs. 710.00",
      "image": "assets/images/roasted_chicken_breast.jpg"
    },
    {
      "title": "Chicken Tikka Salad",
      "price": "from Rs. 845.00",
      "image": "assets/images/chicken_tikka_salad.png"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: categories.length,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xFFDF1C6E),
            ),
          ),
          centerTitle: false,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Delivery",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Text(
                "15-30 min",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Color(0xFFDF1C6E),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.favorite_border,
                color: Color(0xFFDF1C6E),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share_outlined,
                color: Color(0xFFDF1C6E),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Color(0xFFDF1C6E),
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/subway_logo.jpg', height: 70),
                      SizedBox(width: 8),
                      Text(
                        "Subway",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "1.5km away | Rs. 99.00 Delivery | Rs. 249.00 Minimum Service fee applies",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black54,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          print("MORE INFO");
                        },
                        child: Text(
                          "More info",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFDF1C6E),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.star_outline,
                        color: Color(0xFFDF1C6E),
                        size: 30,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "3.9",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        "1000+ ratings",
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 13,
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          print("SEE REVIEWS");
                        },
                        child: Text(
                          "See Reviews",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFDF1C6E),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        CupertinoIcons.clock,
                        color: Color(0xFFDF1C6E),
                        size: 25,
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Delivery: 15-30",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          print("CHANGE");
                        },
                        child: Text(
                          "Change",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black26,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/voucher_panda.png',
                        height: 25,
                        width: 25,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Available deals",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xFFDF1C6E).withOpacity(0.07),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              "assets/images/percentage_icon.png",
                              height: 20,
                              width: 20,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Rs. 320 off",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFDF1C6E),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Min. order Rs. 320. Valid for selected items.\nAuto-applied.",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  TabBar(
                    unselectedLabelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.tab,
                    isScrollable: true,
                    controller: _tabController,
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    labelColor: Color(0xFFDF1C6E),
                    indicatorColor: Color(0xFFDF1C6E),
                    indicatorWeight: 3,
                    indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
                    tabs: [
                      Tab(text: "Popular"),
                      Tab(text: "Cricket Deals"),
                      Tab(text: "Strong Pepsi Deals"),
                      Tab(text: "All New"),
                    ],
                  ),
                  Center(
                    child: Center(
                      child: [
                        PopularTab(
                          popularItems: popularItems,
                        ),
                        Center(
                          child: Text("Cricket Details Tab"),
                        ),
                        Center(
                          child: Text("Strong Pepsi Deals Tab"),
                        ),
                        Center(
                          child: Text("All New Tab"),
                        ),
                      ][_tabController.index],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
