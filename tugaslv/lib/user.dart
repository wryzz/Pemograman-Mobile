class User {
  final String name;
  final String email;
  final String imageUrl;

  User({required this.name, required this.email, required this.imageUrl});
}

List<User> users = [
  User(
      name: "Orcha",
      email: "orcha@gmail.com",
      imageUrl: "https://cdn.umpan.com.my/2019/07/orca5-18_26_158024.jpg"),
  User(
      name: "Singa Putih",
      email: "singa.putih@gmail.com",
      imageUrl:
          "https://th.bing.com/th/id/R.a6324c92c7931a4956762389cbf1e6c1?rik=y1sE4Ez0X4IWrw&riu=http%3a%2f%2f3.bp.blogspot.com%2f-VUDNCwc1k8o%2fTu2kChG0p3I%2fAAAAAAAADjA%2fGyfRXbTqSA0%2fs1600%2fsinga%2bputih%2b-%2bgosipgambar%25255Bdot%25255Dblogspot%25255Bdot%25255Dcom%2b1.jpeg&ehk=Qsf%2fnd97Kp6z9PusLgOS8mhUfXACIajk%2bnuR%2bPMqX6c%3d&risl=&pid=ImgRaw&r=0"),
  User(
      name: "Kuda Hitam",
      email: "kuda.hitam@gmail.com",
      imageUrl:
          "https://photorator.com/photos/images/black-percheron-horse--9366.jpg"),
];
