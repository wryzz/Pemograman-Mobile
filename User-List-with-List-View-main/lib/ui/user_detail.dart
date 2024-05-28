import 'package:flutter/material.dart';

class UserDetail extends StatefulWidget {
  final String? nama;
  final String? email;
  final String? image;
  final String? address;

  const UserDetail({Key? key, this.nama, this.email, this.image, this.address})
      : super(key: key);

  @override
  State<UserDetail> createState() => _UserDetailState();
}

class _UserDetailState extends State<UserDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('User Detail ${widget.nama}'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(widget.image!),
          ),
          SizedBox(height: 10),
          Text(
            widget.nama ?? 'No Name',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ActivityIcon(
                  icon: Icons.people,
                  label: widget.nama!,
                  color: Colors.orange,
                ),
                ActivityIcon(
                  icon: Icons.email,
                  label: widget.email!,
                  color: Colors.green,
                ),
                ActivityIcon(
                  icon: Icons.location_city,
                  label: widget.address!,
                  color: Colors.purple,
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class ActivityIcon extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  ActivityIcon({
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: color.withOpacity(0.2),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(
            icon,
            color: color,
            size: 30,
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
