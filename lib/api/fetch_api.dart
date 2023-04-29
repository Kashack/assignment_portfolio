import 'dart:convert';

import 'package:flutter/services.dart';

import '../constants/globals.dart';
import '../model/fetch_resume.dart';

class ResumeApi{
  Future<List<FetchResumeModel>> readJson() async {
    final response = await rootBundle.loadString(Globals.myResume);
    final data = json.decode(response) as  List<dynamic>;
    return data.map<FetchResumeModel>((json) => FetchResumeModel.fromJson(json)).toList();
  }
}