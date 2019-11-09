class Post {
  String imgUrl;
  String username;
  String active;
  String textdata;
  String like, comment, share;
  String userImg;

  Post({
    this.imgUrl,
    this.username,
    this.active,
    this.textdata,
    this.like,
    this.comment,
    this.share,
    this.userImg,
  });
}

List<Post> post = [
  Post(
      imgUrl: "images/post_1.jpg",
      userImg: "images/user_2.png",
      username: "Himanshu",
      active: "2 min ago",
      textdata: "Looking the beautiful UI",
      like: "1.2K",
      comment: "654",
      share: "1.2K"),
  Post(
      imgUrl: "images/post_2.jpg",
      userImg: "images/user_3.png",
      username: "Riya",
      active: "20 min ago",
      textdata: "Please like and Share",
      like: "152K",
      comment: "64k",
      share: "1.2K"),
  Post(
      imgUrl: "images/post_3.jpg",
      userImg: "images/user_1.png",
      username: "Elin",
      active: "2 min ago",
      textdata: "Looking the beautiful UI",
      like: "1.2K",
      comment: "654",
      share: "1.2K"),
  Post(
      imgUrl: "images/post_4.jpg",
      userImg: "images/user_3.png",
      username: "Seema",
      active: "2 min ago",
      textdata: "Looking the beautiful UI",
      like: "1.2K",
      comment: "654",
      share: "1.2K"),
  Post(
      imgUrl: "images/post_5.jpg",
      userImg: "images/user_4.png",
      username: "Shewta",
      active: "2 min ago",
      textdata: "This is beautiful",
      like: "1.20K",
      comment: "948",
      share: "1.25K"),
];
