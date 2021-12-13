import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new CardProfile(),
    routes:<String, WidgetBuilder>{
      '/CardProfile':(BuildContext context)=> new CardProfile(),
      '/AboutMe':(BuildContext context)=> new AboutMe(),
    }
  ));
}

// void main() => runApp(CardProfile());


class CardProfile extends StatelessWidget {
  const CardProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('assets/img/dede.jpg'),
              ),
              Text("Dede Nugroho",
               style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
              Text("FLUTTER DEVELOPER",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing:2.5,
                  fontWeight:FontWeight.bold
                ),
              ),
              SizedBox(
                height: 50.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                )
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical:10.0, horizontal: 25.0),
                child:ListTile(
                  leading:Icon(
                    Icons.phone,
                    color:Colors.teal,
                  ),
                  title: Text("+62 856 5120 4274",
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Roboto',
                      fontSize: 20.0,
                    )
                  ),
                )
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child:ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text("this.nugroho@gmail.com",
                    style: TextStyle(
                      color:Colors.teal.shade900,
                      fontFamily: 'Roboto',
                      fontSize:20.0,
                    )
                  ),
                )
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 25.0),
                child:ListTile(
                  leading: Icon(
                    Icons.people,
                    color: Colors.teal,
                  ),
                  title: Text("About me",
                    style: TextStyle(
                      color:Colors.teal.shade900,
                      fontFamily: 'Roboto',
                      fontSize:20.0,
                    ),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/AboutMe');
                  },
                )
              )
            ],
          )
        ),
      )
    );
  }
}

class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Hallo nama saya Dede Nugroho, sekarang saya sedang menempuh pendidikan S1 Jurusan Sistem Informasi di Universitas Islam Kalimantan Selatan",
                style: TextStyle(
                  fontFamily: "Roboto",
                  fontSize: 17.0,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 30.0, horizontal: 25.0),
                child:ListTile(
                  title: Text("Kembali",
                    style: TextStyle(
                      color:Colors.teal.shade900,
                      fontFamily: 'Roboto',
                      fontSize:20.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/CardProfile');
                  },
                )
              )
            ],
          )
        )
      )
    );
  }
}