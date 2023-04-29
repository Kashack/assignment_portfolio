import 'dart:convert';

import 'package:assignment_portfolio/constants/globals.dart';
import 'package:flutter/services.dart';

class FetchResumeModel {
  final String name;
  final String experience;
  final String project;
  final String clients;
  final String image;
  final String about;
  final String city;

  FetchResumeModel({
    required this.name,
    required this.experience,
    required this.project,
    required this.clients,
    required this.image,
    required this.about,
    required this.city,
  });

  factory FetchResumeModel.fromJson(Map<String, dynamic> json) {
    return FetchResumeModel(
      name: json['name'] as String,
      experience: json['experience'] as String,
      project: json['project'] as String,
      clients: json['clients'] as String,
      image: json['image'] as String,
      about: json['about'] as String,
      city: json['location']['city'] as String,
    );
  }
}
