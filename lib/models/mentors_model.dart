class MentorsModel {
  String title;
  String subTitle;
  String cardIcon;
  String description;

  MentorsModel(this.title, this.subTitle, this.cardIcon,this.description);
}

List<MentorsModel> mentorsData = mentorsDataList.map(
      (item) => MentorsModel(
    item['title'].toString(),
    item['subTitle'].toString(),
    item['cardIcon'].toString(),
    item['description'].toString(),

  ),
).toList();

var mentorsDataList = [
  {
    "title": "John Christian",
    "subTitle": "Flutter Developer",
    "cardIcon": "assets/mentor1.png",
    "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
  },
  {
    "title": "Moncy James",
    "subTitle": "Laravel Developer",
    "cardIcon": "assets/mentor2.png",
    "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",

  },
  {
    "title": "Jeslon Paul",
    "subTitle": "UI/UX Designer",
    "cardIcon": "assets/mentor3.png",
    "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",

  },

];