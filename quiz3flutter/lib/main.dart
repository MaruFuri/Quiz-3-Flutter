// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:provider/provider.dart';

// import 'Usaha.dart';
// import 'ProviderUsaha.dart';
// import 'ListUsaha.dart';
// import 'event.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';

// void main() {
//   runApp(
//     BlocProvider(
//       create: (context) => ProviderUsaha(),
//       child: MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'UMKM List',
//       home: BlocProvider<ProviderUsaha>(
//         create: (context) => ProviderUsaha(),
//         child: Scaffold(
//           appBar: AppBar(
//             title: const Text('UMKM List'),
//           ),
//           body: Column(
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   context.read<ProviderUsaha>().add(FetchDataEvent());
//                 },
//                 child: Text('Fetch Data'),
//               ),
//               SizedBox(height: 16),
//               Expanded(child: ListUsaha()),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int currentIndex = 0;
  List<Tab> myTab = [
    Tab(
      text: "Following",
    ),
    Tab(
      text: "Downloads",
    ),
    Tab(
      text: "Following",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz Flutter',
      home: DefaultTabController(
        length: myTab.length,
        child: Scaffold(
          appBar: AppBar(
              leading: FlutterLogo(),
              backgroundColor: Colors.blueGrey,
              title: Text('Quiz Flutter'),
              bottom: TabBar(
                indicatorColor: Colors.black,
                indicatorWeight: 3,
                indicatorPadding: EdgeInsets.all(8),
                indicator: BoxDecoration(
                  color: Colors.red,
                ),
                tabs: myTab,
              ),
              actions: <Widget>[ButtonNamaKelompok(), ButtonPerjanjian()]),
          body: ListView(
            children: [
              Divider(color: Colors.black),
              ListTile(
                onTap: () {},
                leading: Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                trailing: const Icon(Icons.more_vert),
                title: const Text('Video 1'),
                subtitle: Text('Delete'),
              ),
              Divider(color: Colors.black),
              ListTile(
                onTap: () {},
                leading: Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                trailing: const Icon(Icons.more_vert),
                title: const Text('Video 2'),
                subtitle: Text('Delete'),
              ),
              Divider(color: Colors.black),
              ListTile(
                onTap: () {},
                leading: Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                trailing: const Icon(Icons.more_vert),
                title: const Text('Video 3'),
                subtitle: Text('Delete'),
              ),
              Divider(color: Colors.black),
              ListTile(
                onTap: () {},
                leading: Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                trailing: const Icon(Icons.more_vert),
                title: const Text('Video 4'),
                subtitle: Text('Delete'),
              ),
              Divider(color: Colors.black),
              ListTile(
                onTap: () {},
                leading: Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                trailing: const Icon(Icons.more_vert),
                title: const Text('Video 5'),
                subtitle: Text('Delete'),
              ),
              Divider(color: Colors.black),
              ListTile(
                onTap: () {},
                leading: Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                trailing: const Icon(Icons.more_vert),
                title: const Text('Video 6'),
                subtitle: Text('Delete'),
              ),
              Divider(color: Colors.black),
              ListTile(
                onTap: () {},
                leading: Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                trailing: const Icon(Icons.more_vert),
                title: const Text('Video 7'),
                subtitle: Text('Delete'),
              ),
              Divider(color: Colors.black),
              ListTile(
                onTap: () {},
                leading: Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                trailing: const Icon(Icons.more_vert),
                title: const Text('Video 8'),
                subtitle: Text('Delete'),
              ),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Program',
                icon: Icon(Icons.list_sharp),
              ),
              BottomNavigationBarItem(
                label: 'My Learning',
                icon: Icon(Icons.account_circle),
              )
            ],
            currentIndex: currentIndex,
            selectedItemColor: Colors.red,
            onTap: (int index) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}

class ButtonNamaKelompok extends StatelessWidget {
  const ButtonNamaKelompok({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.account_circle_rounded),
      onPressed: () {
        // icon account di tap
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Kelompok Salman & Zul'),
            content: const Text(
                'Akmal Zulkifli (akmalzulkifli29@upi.edu) ; M. Salman Kesuma (salmankesuma28@upi.edu)'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ButtonPerjanjian extends StatelessWidget {
  const ButtonPerjanjian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.access_alarm_rounded),
      onPressed: () {
        // icon setting ditap
        const snackBar = SnackBar(
          duration: Duration(seconds: 20),
          content: Text(
              'Kami berjanji  tidak akan berbuat curang dan atau membantu kelompok lain berbuat curang'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}
