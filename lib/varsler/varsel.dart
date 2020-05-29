
class Varsel {
  String title;
  String subtitle;
  String timestamp;
  String icon;
  String color;
  bool userHasRead = false;

  Varsel({
    this.title,
    this.subtitle,
    this.timestamp,
    this.icon,
    this.color,
  });
    factory Varsel.fromJson(Map<String, dynamic> json) {
    return Varsel(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      timestamp: json['timeStamp'] as String,
    );
}
}
