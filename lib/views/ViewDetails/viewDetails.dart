import 'dart:math';

import 'package:flutter/material.dart';
import 'package:travelappui/components/rating,.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Globals/VGlobales.dart';
import '../../models/placesModel.dart';

class ViewDetails extends StatefulWidget {
  PlaceModel placeModel;
  ViewDetails({this.placeModel});
  @override
  _ViewDetailsState createState() => _ViewDetailsState();
}

class _ViewDetailsState extends State<ViewDetails> {
  int numberPackage = 0;

  removePackage() {
    setState(() {
      numberPackage--;
      numberPackage = max(numberPackage, 10);
    });
  }

  addPackage() {
    setState(() {
      numberPackage++;
      numberPackage = min(numberPackage, 10);
    });
  }

  @override
  Widget build(BuildContext context) {
    widget.placeModel = IndexGloabl;
    Size size = MediaQuery.of(context).size;
    ThemeData appTheme = Theme.of(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        elevation: 2,
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: size.height * 0.3,
              color: Colors.grey,
              child: Image(
                image: AssetImage(IndexGloabl.imgUrl),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(top: 26, left: 20, right: 20),
                height: size.height * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.placeModel.placeTitle,
                      maxLines: 4,
                      overflow: TextOverflow.fade,
                      style: appTheme.textTheme.headline2,
                    ),
                    SizedBox(height: 4),
                    Row(children: [
                      Icon(
                        Icons.location_pin,
                        size: 14,
                      ),
                      SizedBox(width: 12),
                      Text(
                        "Cam , Phnom Penh",
                        style: appTheme.textTheme.caption,
                      )
                    ]),
                    SizedBox(height: 8),
                    Rating(rating: 4.5, color: Colors.black),
                    SizedBox(height: 18),
                    // Row(
                    //   children: [
                    //     IconButton(
                    //         icon: Icon(
                    //           Icons.remove,
                    //           color: appTheme.colorScheme.secondary,
                    //         ),
                    //         splashColor: appTheme.colorScheme.secondary,
                    //         onPressed: () {
                    //           removePackage();
                    //         }),
                    //     Container(
                    //       padding: EdgeInsets.only(left: 8, right: 8),
                    //       child: Text(
                    //         numberPackage.toString(),
                    //         style: appTheme.textTheme.caption,
                    //       ),
                    //     ),
                    //     IconButton(
                    //         icon: Icon(Icons.add),
                    //         onPressed: () {
                    //           addPackage();
                    //         }),
                    //     SizedBox(width: 12),
                    //     Icon(
                    //       Icons.timer_rounded,
                    //       color: appTheme.colorScheme.secondary,
                    //     ),
                    //     SizedBox(
                    //       width: 8,
                    //     ),
                    //     Text(
                    //       "5 Days",
                    //       style: appTheme.textTheme.caption.merge(
                    //           TextStyle(color: appTheme.colorScheme.secondary)),
                    //     ),
                    //   ],
                    // ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Description",
                      style: appTheme.textTheme.headline3
                          .merge(TextStyle(color: Colors.black)),
                    ),
                    SizedBox(height: 12),
                    Text(
                      widget.placeModel.description,
                      maxLines: 4,
                      overflow: TextOverflow.fade,
                      style: appTheme.textTheme.bodyText1,
                    ),
                    SizedBox(height: size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "\$400",
                                style: TextStyle(
                                    color: appTheme.colorScheme.secondary,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold)),
                          ]),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 185, 7, 31),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)),
                                elevation: 0,
                                textStyle: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'PlayFair',
                                    fontWeight: FontWeight.bold)),
                            onPressed: _launchURLBrowser,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Apply Now",
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }

  _launchURLBrowser() async {
    var url = Uri.parse(
        "https://docs.google.com/forms/d/e/1FAIpQLSdxR8zjdQenNfrYjGXiu29MajwyRjIkIG4_VkQJz3XQEuCp5g/viewform");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
