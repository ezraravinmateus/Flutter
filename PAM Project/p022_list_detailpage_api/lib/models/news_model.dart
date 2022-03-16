class NewsModel {
  final String id;
  final String title;
  final String content;
  final String imageUrl;
  final double price;
  final double indicator;
  final String indicatorTitle;

  const NewsModel({
    required this.id,
    required this.title,
    required this.content,
    required this.imageUrl,
    required this.price,
    required this.indicator,
    required this.indicatorTitle,
  });

  factory NewsModel.fromJSON(Map<String, dynamic> json) => NewsModel(
        id: json['id'],
        title: json['title'],
        content: json['content'],
        imageUrl: json['img'],
        price: double.tryParse(json['price']) ?? 0,
        indicator: double.tryParse(json['ib']) ?? 0,
        indicatorTitle: json['it'],
      );
}
