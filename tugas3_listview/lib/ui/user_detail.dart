import 'package:flutter/material.dart';
import 'package:tugas3_listview/utils/colors.dart'; // Make sure this path matches your project structure

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
      backgroundColor: AppColors.secondaryColor, // Updated color reference
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme:
            IconThemeData(color: AppColors.mainColor), // Updated icon theme
        title: Text(
          'User Detail ${widget.nama}',
          style:
              TextStyle(color: AppColors.mainColor), // Updated color reference
        ),
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
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.mainColor), // Updated color reference
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
                  color: AppColors.textHolder, // Updated color reference
                ),
                ActivityIcon(
                  icon: Icons.email,
                  label: widget.email!,
                  color: AppColors.textHolder, // Updated color reference
                ),
                ActivityIcon(
                  icon: Icons.location_city,
                  label: widget.address!,
                  color: AppColors.textHolder, // Updated color reference
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
            color: AppColors.mainColor, // Updated color reference
          ),
        ),
      ],
    );
  }
}
