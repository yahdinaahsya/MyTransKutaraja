import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../list_bus/list_bus.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Image.asset(
          'images/logo_tkr.png',
          fit: BoxFit.contain,
          height: 60,
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SearchBar(),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  child: const Text(
                    'Lokasi Anda',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Darussalam, Syiah Kuala, Banda Aceh',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.only(left: 16, bottom: 10),
            child: const Text(
              'Halte Terdekat',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Expanded(
            child: Container(
              margin: const EdgeInsets.only(left: 16, right: 16),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListBusPage()),
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      color: Theme.of(context).colorScheme.secondary,
                      child: ListTile(
                        leading: SvgPicture.asset('images/ic_bus_stop.svg', width: 40, height: 40,),
                        title: Text('Halte $index'),
                        titleTextStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                        subtitle: Text('Alamat Halte'),
                        subtitleTextStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                        ),
                        trailing: Text('18.00 WIB'),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 10,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: TextField(
          decoration: InputDecoration(
           fillColor: Colors.white,
            hintText: 'Cari Halte',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            prefixIcon: Icon(Icons.search),
          ),

        ),
      )
    );
  }
}

