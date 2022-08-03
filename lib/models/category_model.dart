class CategoryModel {
  String title;
  String subTitle;
  String cardIcon;




  CategoryModel(this.title, this.subTitle, this.cardIcon);
}

List<CategoryModel> data = categoryData.map(
      (item) => CategoryModel(
    item['title'].toString(),
    item['subTitle'].toString(),
    item['cardIcon'].toString(),

  ),
).toList();

var categoryData = [
  {
    "title": "STACK",
    "subTitle": "DEVELOPMENT",
    "cardIcon": "assets/stack.png",
  },
  {
    "title": "MOBILE",
    "subTitle": "DEVELOPMENT",
    "cardIcon": "assets/mobile.png",

  },
  {
    "title": "UI/UX",
    "subTitle": "DESIGNING",
    "cardIcon": "assets/uiux.png",

  },
  {
    "title": "WEB",
    "subTitle": "DEVELOPMENT",
    "cardIcon": "assets/web.png",

  },
  {
    "title": "GRAPHIC",
    "subTitle": "DESIGNING",
    "cardIcon": "assets/uiux.png",

  }
];