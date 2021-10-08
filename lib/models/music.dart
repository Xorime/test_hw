import 'package:equatable/equatable.dart';

class Music {
  late int status;
  late String name;
  late String message;
  late int errorCode;
  late int code;
  late List<Data> data;
  late Pagination pagination;

  Music({required this.status, required this.name, required this.message, required this.errorCode, required this.code, required this.data, required this.pagination});

  Music.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    name = json['name'];
    message = json['message'];
    errorCode = json['error_code'];
    code = json['code'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
    if (json['pagination'] != null) {
      pagination = Pagination.fromJson(json['pagination']);
    } else {
      pagination = Pagination.fromJson(json['pagination']);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['name'] = this.name;
    data['message'] = this.message;
    data['error_code'] = this.errorCode;
    data['code'] = this.code;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    if (this.pagination != null) {
      data['pagination'] = this.pagination.toJson();
    }
    return data;
  }
}

class Data {
  late int idsong;
  late int totalHits;
  late Song song;

  Data({required this.idsong, required this.totalHits, required this.song});

  Data.fromJson(Map<String, dynamic> json) {
    idsong = json['idsong'];
    totalHits = json['total_hits'];
    song = (json['song'] != null ? new Song.fromJson(json['song']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idsong'] = this.idsong;
    data['total_hits'] = this.totalHits;
    if (this.song != null) {
      data['song'] = this.song.toJson();
    }
    return data;
  }
}

class Song {
  late String title;
  late Originalartist originalartist;
  late String url;
  late String image;
  late Null externalUrlSpotify;
  late Null externalUrlApplemusic;
  late Null externalUrlStreamlink;
  late Null externalUrlLink;

  Song(
      {required this.title,
      required this.originalartist,
      required this.url,
      required this.image,
      this.externalUrlSpotify,
      this.externalUrlApplemusic,
      this.externalUrlStreamlink,
      this.externalUrlLink});

  Song.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    originalartist = (json['originalartist'] != null ? new Originalartist.fromJson(json['originalartist']) : null)!;
    url = json['url'];
    image = json['image'];
    externalUrlSpotify = json['external_url_spotify'];
    externalUrlApplemusic = json['external_url_applemusic'];
    externalUrlStreamlink = json['external_url_streamlink'];
    externalUrlLink = json['external_url_link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    if (this.originalartist != null) {
      data['originalartist'] = this.originalartist.toJson();
    }
    data['url'] = this.url;
    data['image'] = this.image;
    data['external_url_spotify'] = this.externalUrlSpotify;
    data['external_url_applemusic'] = this.externalUrlApplemusic;
    data['external_url_streamlink'] = this.externalUrlStreamlink;
    data['external_url_link'] = this.externalUrlLink;
    return data;
  }
}

class Originalartist {
  late int idartist;
  late String name;
  late String image;

  Originalartist({required this.idartist, required this.name, required this.image});

  Originalartist.fromJson(Map<String, dynamic> json) {
    idartist = json['idartist'];
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['idartist'] = this.idartist;
    data['name'] = this.name;
    data['image'] = this.image;
    return data;
  }
}

class Pagination {
  late int currentPage;
  late int totalEntries;
  late int contentPerPage;
  late int maxPage;

  Pagination({required this.currentPage, required this.totalEntries, required this.contentPerPage, required this.maxPage});

  Pagination.fromJson(Map<String, dynamic> json) {
    currentPage = json['current_page'];
    totalEntries = json['total_entries'];
    contentPerPage = json['content_per_page'];
    maxPage = json['max_page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['current_page'] = this.currentPage;
    data['total_entries'] = this.totalEntries;
    data['content_per_page'] = this.contentPerPage;
    data['max_page'] = this.maxPage;
    return data;
  }
}
