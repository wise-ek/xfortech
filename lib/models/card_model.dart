class CardModel {
  String title;
  String subTitle;
  String cardIcon;
  int cardBackground;
  String video;
  String file;
  String exercise;
  String lesson;
  String time;



  CardModel(this.title, this.subTitle,
      this.cardIcon,this.cardBackground,this.video,this.file,this.exercise,this.lesson,this.time);
}

List<CardModel> cards = cardData.map(
      (item) => CardModel(
    item['title'].toString(),
    item['subTitle'].toString(),
    item['cardIcon'].toString(),
    int.parse( item['cardBackground'].toString()),
        item['video'].toString(),
        item['file'].toString(),
        item['exercise'].toString(),
        item['lesson'].toString(),
        item['time'].toString(),



      ),
).toList();

var cardData = [
  {
    "title": "Flutter",
    "subTitle": "How to implement a statefull widget",
    "cardBackground": 0xff042449,
    "cardIcon": "assets/flutterio-icon.png",
    "video": "12 video",
    "file": "08 Files",
    "exercise": "18 Exercise",
    "lesson": "Lesson 05",
    "time": "10 Min Left",

  },
  {
    "title": "Laravel",
    "subTitle": "Laravel is a PHP framework",
    "cardIcon": "assets/laravel.png",
    "cardBackground": 0xff262626,
    "video": "12 video",
    "file": "08 Files",
    "exercise": "18 Exercise",
    "lesson": "Lesson 05",
    "time": "10 Min Left",

  }
];