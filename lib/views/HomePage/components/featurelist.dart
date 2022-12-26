import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelappui/theme.dart';
import 'package:travelappui/views/HomePage/state/homepageStateProvider.dart';

class TopFeaturedList extends StatefulWidget {
  @override
  _TopFeaturedListState createState() => _TopFeaturedListState();
}

class _TopFeaturedListState extends State<TopFeaturedList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.all(4),
      padding: EdgeInsets.only(left: 12, right: 12, top: 8),
      height: 60,
      width: size.width,
      child: Consumer<HomePageStateProvider>(
        builder: (context, state, s) {
          return ListView.builder(
              itemCount: state.kTopListLink.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              // ignore: missing_return
              itemBuilder: (context, index) {
                if (index == 0)
                  return Container(
                      margin: EdgeInsets.only(right: 6),
                      child: TextButton(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4, right: 6),
                          child: Text(
                            state.kTopListLink[index],
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                // backgroundColor: Colors.red,
                                color: Colors.white),
                          ),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 202, 10, 10))),
                        onPressed: () {
                          // if (index == 0)
                          Navigator.pushNamed(context, "/profile");
                          // else if (index == 1)
                          //   Navigator.pushNamed(context, "/view");
                          // else if (index == 2)
                          //   Navigator.pushNamed(context, "/view");
                        },
                      ));
                else if (index == 1)
                  return Container(
                      margin: EdgeInsets.only(right: 6),
                      child: TextButton(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4, right: 4),
                          child: Text(state.kTopListLink[index],
                              style: TextStyle(color: Colors.white)),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 202, 10, 10))),
                        onPressed: () {
                          Navigator.pushNamed(context, "/admission");
                        },
                      ));
                else if (index == 2)
                  return Container(
                      margin: EdgeInsets.only(right: 6),
                      child: TextButton(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 4, right: 4),
                          child: Text(state.kTopListLink[index],
                              style: TextStyle(color: Colors.white)),
                        ),
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color.fromARGB(255, 202, 10, 10))),
                        onPressed: () {
                          Navigator.pushNamed(context, "/internship");
                        },
                      ));
              });
        },
      ),
    );
  }
}
