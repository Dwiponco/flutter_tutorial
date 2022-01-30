import 'package:flutter/material.dart';
import 'package:flutter_tutorial/pages/buttonCustom/button_custom.dart';
import 'package:flutter_tutorial/pages/clipPath/clipt_path.dart';
import 'package:flutter_tutorial/pages/gradientTransparant/gradient_transparant.dart';
import 'package:flutter_tutorial/pages/httpRequest/api_demo.dart';
import 'package:flutter_tutorial/pages/httpRequest/api_demo_get.dart';
import 'package:flutter_tutorial/pages/httpRequest/api_demo_list.dart';
import 'package:flutter_tutorial/pages/qrcode/qr_code.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: AppBar(
              backgroundColor: Colors.green,
              shadowColor: Colors.transparent,
              bottom: TabBar(
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green[800]),
                tabs: [
                  Tab(
                    text: 'Home',
                  ),
                  Tab(
                    text: 'Promos',
                  ),
                  Tab(
                    text: 'Orders',
                  ),
                  Tab(
                    text: 'Chat',
                  ),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                  child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return QrCodePage();
                      }));
                    },
                    child: cardMethod(context, 'Qr Code', Icons.qr_code),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ButtonCustom();
                      }));
                    },
                    child: cardMethod(
                        context, 'Custome Button', Icons.smart_button),
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return GradientTransparantPage();
                        }));
                      },
                      child: cardMethod(
                          context, 'Gradient Transparant', Icons.color_lens)),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ClipPathPage();
                        }));
                      },
                      child:
                          cardMethod(context, 'Clip Path', Icons.call_split)),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ApiDemoPage();
                        }));
                      },
                      child: cardMethod(
                          context, 'API Demo post', Icons.api_outlined)),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ApiDemoGetPage();
                        }));
                      },
                      child: cardMethod(
                          context, 'API Demo get', Icons.api_outlined)),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ApiDemoList();
                        }));
                      },
                      child: cardMethod(
                          context, 'API Demo list', Icons.api_outlined)),
                ],
              )),
              Center(
                child: Text('Tab 2'),
              ),
              Center(
                child: Text('Tab 3'),
              ),
              Center(
                child: Text('Tab 4'),
              ),
            ],
          ),
        ));
  }

  Container cardMethod(BuildContext context, String name, IconData iconData) {
    return Container(
      height: 62,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Icon(
            iconData,
            color: Colors.white,
          ),
          Text(
            name,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
