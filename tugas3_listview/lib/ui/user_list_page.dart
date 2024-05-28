import 'package:flutter/material.dart';
import 'package:tugas3_listview/utils/data.dart';
import 'package:tugas3_listview/ui/user_detail.dart';
import 'package:tugas3_listview/utils/colors.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('User List'),
      ),
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: PeopleItems(
              nama: people[index].nama,
              email: people[index].email,
              image: people[index].image,
              address: people[index].address,
            ),
          );
        },
        physics: AlwaysScrollableScrollPhysics(),
      ),
    );
  }
}

class PeopleItems extends StatelessWidget {
  final String nama;
  final String email;
  final String image;
  final String address;

  const PeopleItems({
    Key? key,
    required this.nama,
    required this.email,
    required this.image,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        color: AppColors.secondaryColor,
        child: Padding(
          padding: EdgeInsets.all(0),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: CircleAvatar(
                  backgroundImage: AssetImage(image),
                  radius: 30,
                ),
              ),
              Expanded(
                child: ListTile(
                  contentPadding: EdgeInsets.only(left: 8),
                  title: Text(
                    nama,
                    style: TextStyle(
                      color: AppColors.textHolder,
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                    ),
                  ),
                  subtitle: Text(
                    email,
                    style: TextStyle(
                      color: AppColors.textGrey,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => UserDetail(
              nama: nama,
              email: email,
              image: image,
              address: address,
            ),
          ),
        );
      },
    );
  }
}
