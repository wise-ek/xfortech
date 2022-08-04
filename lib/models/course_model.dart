class CourseModel {
  String title;
  String subTitle;
  String cardIcon;
  String starRAte;

  CourseModel(this.title, this.subTitle, this.cardIcon,this.starRAte);
}

List<CourseModel> courseData = courseDataList.map(
      (item) => CourseModel(
    item['title'].toString(),
    item['subTitle'].toString(),
    item['cardIcon'].toString(),
    item['starRAte'].toString(),

  ),
).toList();

var courseDataList = [
  {
    "title": "Android Development",
    "subTitle": "From Zero to Hero",
    "cardIcon": "assets/course1.png",
    "starRAte": "(8)",
  },
  {
    "title": "UI/UX Complete",
    "subTitle": "Guide",
    "cardIcon": "assets/course2.png",
    "starRAte": "(12)",

  },
  {
    "title": "Laravel",
    "subTitle": "PHP Framework",
    "cardIcon": "assets/course3.png",
    "starRAte": "(8)",

  },

];