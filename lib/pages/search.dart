import 'package:flutter/material.dart';


class SearchPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _SearchPageState();
  }
}

class _SearchPageState extends State<SearchPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Rechercher un coopérateur',
            textScaleFactor: 0.9,
          ),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15.0),
                child:
                TextField(
                  decoration:
                  InputDecoration(
                    hintText: 'Activité',
                    hintStyle: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                    border: OutlineInputBorder(),
                    icon: Icon(
                      Icons.work,
                      color: Colors.deepPurple,),
                    labelText: 'Recherche par activité',
                    contentPadding: EdgeInsets.all(18.0),
                  ),
                  cursorWidth: 4.0,
                  cursorColor: Colors.deepPurple,
                  keyboardType: TextInputType.text,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}




