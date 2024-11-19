import 'package:flutter/material.dart';
import 'dashboard_page.dart';

  class LoginPage extends StatelessWidget {
    final TextEditingController usernameController =TextEditingController();
    final TextEditingController passwordContller =TextEditingController();
    final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

    @override
     Widget build (BuildContext context) {
      return Scaffold(
        appBar:AppBar(
        title: Text('halaman login'),  
        ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
         key:_formkey,
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'username',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                {
                  return 'masukan username';
                }
                return null;
              },
            ),
            SizedBox(height:16.0),
            ElevatedButton(
              onPressed: () {
                {
                  
                  Navigator.pushReplacement(
                    context,
                  MaterialPageRoute(builder: (context) => DashboardPage()),
                  );
              }
              },
              child: Text("login"),
            ),
          ],
         ),
         ),//form
         ),
      );
     }
  }
