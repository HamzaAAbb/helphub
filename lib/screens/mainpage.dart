import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../utilities/event.dart';

EventEngine newEventEngine = EventEngine();


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final _auth = FirebaseAuth.instance;

  void getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user !=null) {

        print(user.email);
      }
    }
    catch (e) {
      print (e);
    }
  }


  final int numberOfEvents = newEventEngine.numberOfEvents();

  List<Widget> getList() {
    List<Widget> res = [];
    for (int i = 0; i < numberOfEvents; i++) {
      res.add(EventContainer(i));
    }
    return res;
  }


  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('HelpHub'),
        backgroundColor: const Color(0xFF1F8894),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
             DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xFF1F8894),
              ),
              child: Column(
                children: const [
                  Text(
                    'Menu',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 12),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Login page'),
              onTap: () async{
                Navigator.pushNamed(context, '/loginpage');
                await _auth.signOut();
              },
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month),
              title: const Text('Ajoutter un évenment'),
              onTap: () {
                Navigator.pushNamed(context, '/loginpage');
              },
            ),
            ListTile(
              leading: const Icon(Icons.work_history_outlined),
              title: const Text('Espave organisateur'),
              onTap: () {
                Navigator.pushNamed(context, '/loginpage');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Paramètres'),
              onTap: () {
                Navigator.pushNamed(context, '/loginpage');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: ListView(
          children: getList(),
        ),
      ),
    );
  }
}


