import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

class desain extends StatelessWidget {
  final String phoneNumber = '+62851720000366';
  final String email = '220103179@mhs.udb.ac.id';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 5, 0, 97), // Dark blue
                Color.fromARGB(255, 47, 1, 72) // Dark purple
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('img/logo.png'),
              ),
              Text(
                'Web & Mobile Programmer',
                style: GoogleFonts.outfit(
                  fontSize: 23.0,
                  letterSpacing: 1,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Irfan Nur Sofiyanto',
                style: GoogleFonts.allura(
                  color: Color.fromARGB(255, 88, 249, 255),
                  fontSize: 25.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10.0,
                width: 200.0,
                child: Divider(
                  color: Color.fromARGB(255, 59, 151, 255),
                ),
              ),
              InfoCard(
                text: phoneNumber,
                icon: Icons.phone,
                onPressed: () => launch('tel:$phoneNumber'),
              ),
              InfoCard(
                text: email,
                icon: Icons.email,
                onPressed: () => launch('mailto:$email'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  const InfoCard({
    Key? key,
    required this.text,
    required this.icon,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Color.fromARGB(255, 1, 80, 130),
        ),
        title: Text(
          text,
          style: GoogleFonts.outfit(
            color: Color.fromARGB(255, 11, 48, 42),
            fontSize: 20.0,
          ),
        ),
        onTap: onPressed,
      ),
    );
  }
}
