import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0XFF5D6952), Color(0XFF2A2C27)])),
          child: ListView(
            children: [
              AppBarRow(),
              Container(
                margin: EdgeInsets.only(
                  bottom: 40,
                  left: 20,
                  right: 20,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.9,
                child: Image.asset("assets/images/image.jpeg"),
              ),
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          "Other People",
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )),
                    Container(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          "LP",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        )),
                  ]),
              Container(
                margin:
                    EdgeInsets.only(left: 30, right: 30, bottom: 20, top: 20),
                height: 3,
                color: Colors.white,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 30,
                  ),
                  Icon(
                    Icons.skip_previous,
                    color: Colors.white,
                    size: 60,
                  ),
                  Icon(
                    Icons.pause_circle_filled,
                    color: Colors.white,
                    size: 90,
                  ),
                  Icon(
                    Icons.skip_next,
                    color: Colors.white,
                    size: 60,
                  ),
                  Icon(
                    Icons.do_disturb_on_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.phonelink,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.3,
                    ),
                    Icon(
                      Icons.share,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

class AppBarRow extends StatelessWidget {
  const AppBarRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, top: 10, right: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.expand_more_sharp,
            size: 40,
            color: Colors.white,
          ),
          Text(
            "ŞARKI ÇALINIYOR",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
