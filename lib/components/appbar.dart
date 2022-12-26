import 'package:flutter/material.dart';
import 'package:travelappui/constants/constants.dart';
import '../routes/routes.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
          child: Text(
        "Kirirom Institue Of Technology",
        style: TextStyle(fontWeight: FontWeight.w900, letterSpacing: 1),
      )),
      leading: PopupMenuButton(
        offset: Offset.fromDirection(2, 40),
        onSelected: (value) {},
        icon: Icon(Icons.menu),
        itemBuilder: (context) {
          return kAppBarMenuOptions
              .map(
                (option) => PopupMenuItem(
                  value: option,
                  child: Container(
                    width: 50,
                    child: Text(
                      option,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              )
              .toList();
        },
      ),
      actions: <Widget>[
        // IconButton(
        //   icon: const Icon(Icons.account_circle),
        //   tooltip: 'Show Snackbar',
        //   iconSize: 40,
        //   onPressed: () {
        //     Navigator.pushNamed(context, AppRoutes.ROUTE_Home);
        //   },
        // ),
        IconButton(
          icon: const Icon(Icons.navigate_next),
          tooltip: 'Go to the next page',
          onPressed: () {},
        ),
      ],
      // actions: [
      //   IconButton(
      //       icon: Icon(
      //         Icons.account_circle,
      //         size: 40,
      //       ),
      //       onPressed: () {})
      // ],
      backgroundColor: Color.fromARGB(255, 202, 10, 10),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

/* void startSearching() {
    setState(() {
      _isSearching = true;
    });
  }
 */
