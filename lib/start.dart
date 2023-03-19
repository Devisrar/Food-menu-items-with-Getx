import 'package:flutter/material.dart';
import 'package:get/get.dart';

class start extends StatefulWidget {
  const start({Key? key}) : super(key: key);

  @override
  State<start> createState() => _startState();
}

class _startState extends State<start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.add_card_sharp),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.add_alert),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.whatsapp_rounded),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.search_off_outlined),
          SizedBox(
            width: 20,
          )
        ],
        backgroundColor: Colors.teal,
        title: Center(child: Text('CocaSea Menu')),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: ListTile(
                title: Text('Family Deals with CocaSea '),
                subtitle: Text('Order or cancel '),
                onTap: () {
                  Get.defaultDialog(
                    title: "Confirm Deal",
                    contentPadding: EdgeInsets.all(20),
                    titlePadding: EdgeInsets.only(top: 20),
                    middleText: "Click on below to confirm or cancel",
                    // textConfirm: 'yes',
                    // textCancel: 'cancel',
                    confirm: TextButton(onPressed: (){
                      // Navigator.pop(context);
                      Get.back();
                    }, child: Text('ok')),

                    cancel: TextButton(onPressed: (){
                      Get.back();
                    }, child: Text('cancel')),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Cofee/Tea'),
                subtitle: Text('Order  '),
                onTap: (){},
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Lunch '),
                subtitle: Text('Deals'),
                onTap: (){
                  Get.bottomSheet(Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('light mode'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark mode'),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.settings),
                          title: Text('setting'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.wifi),
                          title: Text('Connect'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.bluetooth),
                          title: Text('Bluetooth'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.flash_auto),
                          title: Text('Flashlight'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.calculate),
                          title: Text('calculator'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        )
                      ],
                    ),
                  ));
  },
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Fast Food'),
                subtitle: Text('Apply card '),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Heatlh '),
                subtitle: Text('Hire a Doctor'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Sports'),
                subtitle: Text('cric/Football/Tenis'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Social services'),
                subtitle: Text('Tv/laptops '),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Rooms '),
                subtitle: Text('Luxry/Middle/high'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Resturant '),
                subtitle: Text('Order or cancel '),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Resturant '),
                subtitle: Text('Order or cancel '),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Resturant '),
                subtitle: Text('Order or cancel '),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orangeAccent,
          child: Icon(
            Icons.ads_click_outlined,
            color: Colors.white,
          ),
          onPressed: () {
            Get.snackbar('Deal confirmed', 'Rider on the way ',
                snackPosition: SnackPosition.TOP, backgroundColor: Colors.grey);
            Icon(Icons.ads_click_outlined);
          }),
    );
  }
}
