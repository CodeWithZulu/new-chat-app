class People {
  String name;
  String profilepicture;
  int id;
  bool isOffline;

  People({
    required this.name,
    required this.profilepicture,
    required this.id,
    required this.isOffline,
  });
}

People currentUser = People(
  name: " kay",
  profilepicture: "assets/1.jpg",
  id: 0,
  isOffline: true,
);
People user2 = People(
  name: " bash",
  profilepicture: "assets/2.jpg",
  id: 1,
  isOffline: false,
);
People user3 = People(
  name: " Teejay",
  profilepicture: "assets/3.jpg",
  id: 2,
  isOffline: false,
);
People user4 = People(
  name: " jay",
  profilepicture: "assets/5.jpg",
  id: 3,
  isOffline: true,
);
People user5 =
    People(name: "Tee", profilepicture: "assets/4.jpg", id: 4, isOffline: true);
