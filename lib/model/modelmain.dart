// To parse this JSON data, do
//
//     final npmodel = npmodelFromJson(jsonString);

import 'dart:convert';

Npmodel npmodelFromJson(String str) => Npmodel.fromJson(json.decode(str));

String npmodelToJson(Npmodel data) => json.encode(data.toJson());

class Npmodel {
    List<Result> results;

    Npmodel({
        this.results,
    });

    factory Npmodel.fromJson(Map<String, dynamic> json) => Npmodel(
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
    };
}

class Result {
    String objectId;
    DateTime createdAt;
    DateTime updatedAt;
    List<Detail> details;
    String title;
    int priority;

    Result({
        this.objectId,
        this.createdAt,
        this.updatedAt,
        this.details,
        this.title,
        this.priority,
    });

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        objectId: json["objectId"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        details: List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
        title: json["title"],
        priority: json["priority"],
    );

    Map<String, dynamic> toJson() => {
        "objectId": objectId,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "details": List<dynamic>.from(details.map((x) => x.toJson())),
        "title": title,
        "priority": priority,
    };
}

class Detail {
    String alignment;
    String detailTitle;
    List<DetailBodyItem> detailBodyItems;

    Detail({
        this.alignment,
        this.detailTitle,
        this.detailBodyItems,
    });

    factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        alignment: json["alignment"],
        detailTitle: json["detailTitle"],
        detailBodyItems: List<DetailBodyItem>.from(json["detailBodyItems"].map((x) => DetailBodyItem.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "alignment": alignment,
        "detailTitle": detailTitle,
        "detailBodyItems": List<dynamic>.from(detailBodyItems.map((x) => x.toJson())),
    };
}

class DetailBodyItem {
    String detailBodyItemValue;

    DetailBodyItem({
        this.detailBodyItemValue,
    });

    factory DetailBodyItem.fromJson(Map<String, dynamic> json) => DetailBodyItem(
        detailBodyItemValue: json["detailBodyItemValue"],
    );

    Map<String, dynamic> toJson() => {
        "detailBodyItemValue": detailBodyItemValue,
    };
}
