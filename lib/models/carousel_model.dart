class CarouselModel {
  late int status;
  late String name;
  late String message;
  late int errorCode;
  late int code;
  late List<Data> data;

  CarouselModel({
    required this.status,
    required this.name,
    required this.message,
    required this.errorCode,
    required this.code,
    required this.data,
  });

  CarouselModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    name = json['name'];
    message = json['message'];
    errorCode = json['error_code'];
    code = json['code'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data.add(Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = status;
    data['name'] = name;
    data['message'] = message;
    data['error_code'] = errorCode;
    data['code'] = code;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  late int idhighlight;
  late String type;
  late int idtype;
  late News? news;
  // late Event? event;
  late Promo? promo;
  late int ordernum;

  Data({
    required this.idhighlight,
    required this.type,
    required this.idtype,
    required this.news,
    // this.event,
    required this.promo,
    required this.ordernum,
  });

  Data.fromJson(Map<String, dynamic> json) {
    idhighlight = json['idhighlight'];
    type = json['type'];
    idtype = json['idtype'];
    news = (json['news'] == null ? null : News.fromJson(json['news']));

    // event = json['event'];
    promo = (json['promo'] == null ? null : Promo.fromJson(json['promo']));
    ordernum = json['ordernum'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['idhighlight'] = idhighlight;
    data['type'] = type;
    data['idtype'] = idtype;
    if (news != null) {
      data['news'] = news!.toJson();
    }
    // data['event'] = this.event;
    if (promo != null) {
      data['promo'] = promo!.toJson();
    }
    data['ordernum'] = ordernum;
    return data;
  }
}

class News {
  late int idnews;
  late String title;
  late String content;
  late String url;
  late String image;
  late String createdTimestamp;

  News({
    required this.idnews,
    required this.title,
    required this.content,
    required this.url,
    required this.image,
    required this.createdTimestamp,
  });

  News.fromJson(Map<String, dynamic> json) {
    idnews = json['idnews'];
    title = json['title'];
    content = json['content'];
    url = json['url'];
    image = json['image'];
    createdTimestamp = json['created_timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['idnews'] = idnews;
    data['title'] = title;
    data['content'] = content;
    data['url'] = url;
    data['image'] = image;
    data['created_timestamp'] = createdTimestamp;
    return data;
  }
}

class Promo {
  late int idpromo;
  late String title;
  late String description;
  late String url;
  late String image;
  late Null createdTimestamp;
  late String startTimestamp;
  late String endTimestamp;

  Promo({
    required this.idpromo,
    required this.title,
    required this.description,
    required this.url,
    required this.image,
    required this.createdTimestamp,
    required this.startTimestamp,
    required this.endTimestamp,
  });

  Promo.fromJson(Map<String, dynamic> json) {
    idpromo = json['idpromo'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    image = json['image'];
    createdTimestamp = json['created_timestamp'];
    startTimestamp = json['start_timestamp'];
    endTimestamp = json['end_timestamp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['idpromo'] = idpromo;
    data['title'] = title;
    data['description'] = description;
    data['url'] = url;
    data['image'] = image;
    data['created_timestamp'] = createdTimestamp;
    data['start_timestamp'] = startTimestamp;
    data['end_timestamp'] = endTimestamp;
    return data;
  }
}
