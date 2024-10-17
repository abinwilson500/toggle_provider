import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:togglescreen/toggleprovider.dart';

class Togglescreen extends StatefulWidget {
  @override 
  State<Togglescreen>createState()=>_Togglescreenstate();
}
class _Togglescreenstate extends State<Togglescreen> {

    @override
    Widget build(BuildContext context) {
      final  toggleProvider = Provider.of<Toggleprovider>(context);
      return Scaffold(
        appBar: AppBar(
          title: Text('toggle button example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                toggleProvider.isOn?'On':'OFF',
                 style: TextStyle(fontSize:40),
                 ),
                SizedBox(height: 20),
                ElevatedButton(onPressed: toggleProvider.toggleswitch,
                 child: Text(toggleProvider.isOn?'turn OFF':'turn ON'),
                ),
            ],
          ),
        ),
      );
    }
}