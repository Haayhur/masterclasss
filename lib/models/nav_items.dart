class NavigationItem {
  String title;

  NavigationItem(this.title);
}

List<NavigationItem> getNavigationItemList() {
  return <NavigationItem>[
    NavigationItem("Home"),
    NavigationItem("group"),
    NavigationItem("search"),
    NavigationItem("profile"),
  ];
}
