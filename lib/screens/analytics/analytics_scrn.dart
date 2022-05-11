import 'package:flutter/material.dart';
import 'package:theme_selection/screens/analytics/components/analytics.dart';
import 'package:theme_selection/screens/eCommerce/ecom_scrn.dart';
import 'package:theme_selection/screens/home/components/body.dart';

class any_scrn extends StatefulWidget {
  const any_scrn({Key? key}) : super(key: key);

  @override
  _any_scrnState createState() => _any_scrnState();
}

class _any_scrnState extends State<any_scrn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        titleSpacing: 0,
        backgroundColor: Colors.white,
        leading: Builder(
          builder: (BuildContext context) {
            return Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context)
                          .openAppDrawerTooltip,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 22),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          color: Colors.grey,
                        )),
                  ),
                ),
              ],
            );
          },
        ),
        actions: <Widget>[
          Image.network('https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/1200px-Flag_of_the_United_States.svg.png',
            height: 50,
            width: 25,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.wb_sunny_outlined,
                color: Colors.grey,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.grey,
              )),
          const CircleAvatar(
            radius: 18.0,
            backgroundColor: Colors.transparent,
            backgroundImage: NetworkImage(
              'http://www.melisendevector.com/images/Image/femme_couronne_fleurs_preview_1371060474.jpg',
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: const Padding(
                padding: EdgeInsets.fromLTRB(14, 40, 0, 10),
                child: Text(
                  'Materio',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 28),
                ),
              ),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.radio_button_off,
                size: 20,
              ),
              title: const Text(
                'CRM',
                style: TextStyle(color: Colors.black54),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const body();
                }));
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.radio_button_off,
                size: 20,
              ),
              title: const Text(
                'Analytics',
                style: TextStyle(color: Colors.black54),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const any_scrn();
                }));
              },
            ),

            ListTile(
              leading: const Icon(
                Icons.radio_button_off,
                size: 20,
              ),
              title: const Text(
                'eCommerce',
                style: TextStyle(color: Colors.black54),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ecom_scrn();
                }));
              },
            ),
          ],
        ),
      ),
      body: analytics(),
    );
  }
}
