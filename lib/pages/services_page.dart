import 'package:delivery_app/blocs/change_layout_bloc.dart';
import 'package:delivery_app/data_set/data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ServicesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final changeLayoutBloc = Provider.of<ChangeLayoutBloc>(context);
    changeLayoutBloc.getLayoutCurrentState();
    return Scaffold(
      appBar: AppBar(
        title: Text('My Services'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                changeLayoutBloc.isGridLayout ? Icons.dashboard : Icons.list,
                color: Colors.white,
              ),
              onPressed: () async {
                await changeLayoutBloc.switchLayout();
              })
        ],
      ),
      body: changeLayoutBloc.isGridLayout
          ? ListView.builder(
            itemCount: services.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Material(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(45),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Image.asset(services[index][3]),
                  ),
                ),
                title: Text(
                  '${services[index][1]}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: Text('${services[index][2]}',
                    style: TextStyle(fontSize: 14, color: Colors.pink)),
              );
            })
          : OrientationBuilder(builder: (context, orientation) {
              return GridView.builder(
                  padding: EdgeInsets.only(left: 8, right: 8),
                  itemCount: services.length,
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount:
                          (orientation == Orientation.portrait) ? 2 : 3),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () async {},
                      child: Container(
                        margin: const EdgeInsets.all(8),
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Material(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(45),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image.asset(services[index][3]),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              '${services[index][1]}',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text('${services[index][2]}',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.pink))
                          ],
                        ),
                      ),
                    );
                  });
            }),
    );
  }
}
