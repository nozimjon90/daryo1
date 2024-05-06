import 'package:flutter/material.dart';
import 'package:ones/photo_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.search, size: 28,),
          SizedBox(width: 10),
        ],
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Text('Master NNU'),
      ),
      drawer: appDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 20),
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 70,
              child: ClipOval(
                child: SizedBox.fromSize(
                  size: Size.fromRadius(68),
                  child: Image.asset(
                    'images/kastyum.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Text(
              'Nozimjon Nuraliyev',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Flutter developer',
              style: TextStyle(color: Colors.black87, fontSize: 20),
            ),
            SizedBox(
              width: 130,
              height: 10,
              child: Divider(color: Colors.blue),
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoPage(),),);
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.blue),
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  child: Text(
                    'Photo Pagega kirish',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget appDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Master NNU',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 18),
                    Text(
                      'Ob Xavo',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Icon(
                      Icons.cloudy_snowing,
                      color: Colors.yellow,
                      size: 35,
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: Divider(
                    color: Colors.black54,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('USD'),
                        Text('12350.35'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('RUB'),
                        Text('135.12'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('EUR'),
                        Text('15250.87'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.contact_page,
              size: 28,
            ),
            title: Text(
              'Contacts',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.phone,
              size: 28,
            ),
            title: Text(
              '+99891 660 01 09',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(
              Icons.mail,
              size: 28,
            ),
            title: Text(
              'bynnu1990@gmail.com',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Divider(
              color: Colors.black54,
            ),
          ),
          ListTile(
            title: Text(
              'Social Network',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              'Instagram',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            leading: Container(
              width: 25,
              child: Image.asset('icons/instagram.png'),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              'Telegram',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            leading: Container(
              width: 25,
              child: Image.asset('icons/telegram.png'),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              'Facebook',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            leading: Container(
              width: 25,
              child: Image.asset('icons/facebook.png'),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              'Linkedin',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            leading: Container(
              width: 25,
              child: Image.asset('icons/linkedin.png'),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              'Twitter',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            leading: Container(
              width: 25,
              child: Image.asset('icons/twitter.png'),
            ),
          ),
          ListTile(
            onTap: () {},
            title: Text(
              'Whatsapp',
              style: TextStyle(color: Colors.black, fontSize: 22),
            ),
            leading: Container(
              width: 25,
              child: Image.asset('icons/whatsapp.png'),
            ),
          ),
          SizedBox(height: 15),
          Center(
            child: Text(
              'official app',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Center(
            child: Text(
              'Nuraliyev Nozimjon Umidjonovich',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
