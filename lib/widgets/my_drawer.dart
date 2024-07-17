import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  // const MyDrawer({super.key});

  ListTile listTile(
      BuildContext context, String text, IconData? icon, VoidCallback onTap) {
    return icon == null
        ? ListTile(
            onTap: onTap,
            title: Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          )
        : ListTile(
            onTap: onTap,
            leading: Icon(
              icon,
              color: Color(0xFFFF2B85),
            ),
            title: Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        children: [
          Builder(builder: (c) {
            return DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFFFF2B85),
                border: Border.all(
                  color: Color(0xFFFF2B85),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        "AI",
                        style: TextStyle(
                          color: Color(0xFFFF2B85),
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Arkas Ideas",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            );
          }),
          Column(
            children: [
              listTile(
                context,
                "Vouchers & Offers",
                Icons.local_offer_outlined,
                () {},
              ),
              listTile(
                context,
                "Favourites",
                Icons.favorite_outline_rounded,
                () {},
              ),
              listTile(
                context,
                "Orders & reeordering",
                Icons.my_library_books_outlined,
                () {},
              ),
              listTile(
                context,
                "Addresses",
                Icons.location_on_outlined,
                () {},
              ),
              listTile(
                context,
                "Help center",
                Icons.help_center_outlined,
                () {},
              ),
              listTile(
                context,
                "Invite friends",
                Icons.wallet_giftcard_outlined,
                () {},
              ),
              Divider(),
              listTile(
                context,
                "Settings",
                null,
                () {},
              ),
              listTile(
                context,
                "Terms & Conditions / Privacy",
                null,
                () {},
              ),
              listTile(
                context,
                "Logout",
                null,
                () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
