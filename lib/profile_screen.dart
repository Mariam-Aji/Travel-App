import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    return Container(
        child: Stack(children: [
      Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          Color(0xff64CCC5),
          Color(0xff001C30),
        ], begin: Alignment.topCenter, end: Alignment.center)),
      ),
      Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            child: Stack(children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: _height / 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: _height / 9.6,
                        backgroundColor: Color(0xff001C30),
                        child: CircleAvatar(
                          child: Stack(
                            children: [
                              Positioned(
                                  left: 134,
                                  top: 120,
                                  child: Icon(
                                    Icons.edit,
                                    color: Color(0xff64CCC5),
                                    size: 23,
                                  ))
                            ],
                          ),
                          backgroundImage: AssetImage('image/m(3).jpg'),
                          radius: _height / 10,
                        ),
                      ),
                      SizedBox(
                        height: _height / 30,
                      ),
                      Text(
                        'Mariam Aji ',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Color(0xff001C30),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: _height / 2.2),
                child: Container(
                  color: Colors.white,
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(
                      top: _height / 2.5,
                      left: _width / 10,
                      right: _width / 10),
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black45,
                                blurRadius: 2.0,
                                offset: Offset(0.0, 2.0))
                          ]),
                      child: Padding(
                        padding: EdgeInsets.all(_width / 30),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "image/money.jpeg",
                                width: 50,
                                height: 50,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "300",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "K2D",
                                    color: Color(0xff64CCC5)),
                              )
                            ]),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: _height / 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 8.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: _width / 18,
                                ),
                                Icon(
                                  Icons.person,
                                  color: Color(0xff001C30),
                                  size: 36.0,
                                ),
                                SizedBox(
                                  width: _width / 13,
                                ),
                                Text(
                                  "Mariam Nooraldeen Aji",
                                  style: TextStyle(
                                    color: Color(0xFF176BB7),
                                    fontFamily: "K2D",
                                    fontSize: 18,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.edit,
                                    color: Color(0xff64CCC5),
                                    size: 23,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: _height / 20),
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 8.0),
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        width: _width / 18,
                                      ),
                                      Icon(
                                        Icons.email,
                                        color: Color(0xff001C30),
                                        size: 36.0,
                                      ),
                                      SizedBox(
                                        width: _width / 13,
                                      ),
                                      Text(
                                        'ooog@gmail.com',
                                        style: TextStyle(
                                          color: Color(0xFF176BB7),
                                          fontFamily: "K2D",
                                          fontSize: 18,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: _height / 20),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(bottom: 8.0),
                                        child: Row(
                                          children: [
                                            SizedBox(
                                              width: _width / 18,
                                            ),
                                            Icon(
                                              Icons.call,
                                              color: Color(0xff001C30),
                                              size: 36.0,
                                            ),
                                            SizedBox(
                                              width: _width / 13,
                                            ),
                                            Text(
                                              '+9639876544532',
                                              style: TextStyle(
                                                color: Color(0xFF176BB7),
                                                fontFamily: "K2D",
                                                fontSize: 18,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: Icon(
                                                Icons.edit,
                                                color: Color(0xff64CCC5),
                                                size: 23,
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: _height / 30),
                                        child: Container(
                                          width: _width / 3,
                                          height: _height / 20,
                                          decoration: BoxDecoration(
                                              color: const Color(0xff64CCC5),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(
                                                      _height / 40)),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black87,
                                                    blurRadius: 2.0,
                                                    offset: Offset(0.0, 1.0))
                                              ]),
                                          child: Center(
                                            child: Text('Change Password',
                                                style: TextStyle(
                                                    fontSize: 14.0,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ])),
            ]),
          ))
    ]));
  }
}
