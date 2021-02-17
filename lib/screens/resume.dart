import 'package:flutter/material.dart';
import '../utils.dart';
import 'package:url_launcher/url_launcher.dart';

class Resume extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print("orientation : " + MediaQuery.of(context).orientation.toString());
    return SingleChildScrollView(
      child: Center(
        child: Container(
          color: Color(0xffc7e6fb),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(120.0),
                child: Row(
                  mainAxisAlignment:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? MainAxisAlignment.spaceBetween
                          : MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 120.0,
                      width: 120.0,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/imgcv.png"),
                                fit: BoxFit.cover),
                            border: Border.all(
                                color: Color(0xff2c7a6c), width: 3.0),
                            borderRadius: BorderRadius.circular(120),
                            boxShadow: [
                              new BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                blurRadius: 5.0,
                                offset: new Offset(2.0, 2.0),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 90.0, top: 8.0),
                      child: Container(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Ulric Denis",
                              style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xff2c7a6c),
                                  fontSize: 20)),
                          Text(
                            "Dévelopeur\n",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff2c7a6c),
                            ),
                          ),
                          Text(
                            """11b place Victor Mangin\n44200 Nantes\nFrance""",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Color(0xff2c7a6c),
                            ),
                          ),
                        ],
                      )),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 8.0,
                left: 20.0,
                right: 20.0,
              ),
              child: Row(
                mainAxisAlignment:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? MainAxisAlignment.spaceBetween
                        : MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Color(0xff2c7a6c))),
                    color: Color(0xff2c7a6c),
                    onPressed: () async {
                      if (await canLaunch("tel: +33 6 64 82 61 85")) {
                        await launch("tel: +33 6 64 82 61 85");
                      }
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                        Text(
                          "06 64 82 61 85",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Color(0xff2c7a6c))),
                    color: Color(0xff2c7a6c),
                    onPressed: () async {
                      if (await canLaunch("mailto:denis.ulric@gmail.com")) {
                        await launch("mailto:denis.ulric@gmail.com");
                      }
                    },
                    child: Row(
                      children: [
                        Icon(
                          Icons.mail,
                          color: Colors.white,
                        ),
                        Text(
                          "denis.ulric@gmail.com",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    color: Color(0xff2c7a6c),
                    width: MediaQuery.of(context).size.width,
                    height: 60.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0)),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          resume,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
