import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListBusPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListBusPageState();
  }
}

class _ListBusPageState extends State<ListBusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Nama Halte'),
        titleTextStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(16),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => ListBusPage()),
                        // );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(bottom: 10),
                        color: Theme.of(context).primaryColor.withOpacity(0.1),
                        child: ListTile(
                          leading: SvgPicture.asset('images/ic_bus.svg', width: 40, height: 40,),
                          title: Text('Bus $index'),
                          titleTextStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
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
