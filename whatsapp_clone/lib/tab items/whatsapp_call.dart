import 'package:flutter/material.dart';

class WhatsAppCall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(height * 0.02),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: width * 0.055,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: width * 0.07,
                  ),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Container(
                  height: height * 0.06,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: width * 0.02),
                        child: Text(
                          "labbak",
                          style: TextStyle(
                            fontSize: width * 0.04,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_downward,
                            color: Colors.red,
                            size: width * 0.05,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: width * 0.02),
                            child: Text(
                              "May 23, 21:50",
                              style: TextStyle(
                                fontSize: width * 0.04,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: width * 0.44,
                  height: height * 0.06,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.call,
                        color: Color(0xff075E54),
                        size: width * 0.08,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(height * 0.02),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: width * 0.055,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: width * 0.07,
                  ),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Container(
                  height: height * 0.06,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(left: width * 0.02),
                        child: Text(
                          "labbak",
                          style: TextStyle(
                            fontSize: width * 0.04,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.arrow_upward,
                            color: Color(0xff25D366),
                            size: width * 0.05,
                          ),
                          Container(
                            padding: EdgeInsets.only(left: width * 0.02),
                            child: Text(
                              "May 23, 21:50",
                              style: TextStyle(
                                fontSize: width * 0.04,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: width * 0.44,
                  height: height * 0.06,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.video_call,
                        color: Color(0xff075E54),
                        size: width * 0.08,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
