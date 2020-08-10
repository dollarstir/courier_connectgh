import 'package:flutter/material.dart';


class Sidebar extends StatelessWidget {
  // const name({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
                // alignment: AlignmentDirectional.topCenter,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.blueAccent,
                )),
                child: ListTile(
                  title: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(
                          Icons.close,
                          size: 35, 
                          color: Colors.red,

                          
                        ),
                        
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),



              Container(
                // alignment: AlignmentDirectional.topCenter,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.blueAccent,
                )),
                child: ListTile(
                  title: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.people,
                          size: 25,
                          color: Colors.white,
                        ),
                        Text(
                          "                About",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),

              Container(
                // alignment: AlignmentDirectional.topCenter,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.lightBlue,
                )),
                child: ListTile(
                  title: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.label_important,
                          size: 25,
                          color: Colors.white,
                        ),
                        Text(
                          "           Term of Service",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),

              Container(
                // alignment: AlignmentDirectional.topCenter,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.lightBlue,
                )),
                child: ListTile(
                  title: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.security,
                          size: 25,
                          color: Colors.white,
                        ),
                        Text(
                          "              Privacy ",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),

              Container(
                // alignment: AlignmentDirectional.topCenter,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.lightBlue,
                )),
                child: ListTile(
                  title: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.question_answer,
                          size: 25,
                          color: Colors.white,
                        ),
                        Text(
                          "             FAQ's",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),

              Container(
                // alignment: AlignmentDirectional.topCenter,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.lightBlue,
                )),
                child: ListTile(
                  title: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.accessibility,
                          size: 25,
                          color: Colors.white,
                        ),
                        Text(
                          "         Accessibility",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),

              Container(
                // alignment: AlignmentDirectional.topCenter,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.lightBlue,
                )),
                child: ListTile(
                  title: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.notifications_active,
                          size: 25,
                          color: Colors.white,
                        ),
                        Text(
                          "         Legal Notice",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),

              Container(
                // alignment: AlignmentDirectional.topCenter,
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.lightBlue,
                )),
                child: ListTile(
                  title: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Icon(
                          Icons.notification_important,
                          size: 25,
                          color: Colors.white,
                        ),
                        Text(
                          "        Fraud Awareness",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
      ],
    );
  }
}