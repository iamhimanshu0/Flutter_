class Story {
  String imgUrl;
  String name;

  Story({
    this.imgUrl,
    this.name,
  });
}

List<Story> stories = [
  Story(imgUrl: "images/user_2.png", name: "Add to story"),
  Story(imgUrl: "images/user_1.png", name: "elis"),
  Story(imgUrl: "images/user_3.png", name: "John Doe"),
  Story(imgUrl: "images/user_4.png", name: "Flutter Web"),
];
