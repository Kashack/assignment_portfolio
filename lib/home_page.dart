import 'package:assignment_portfolio/api/fetch_api.dart';
import 'package:assignment_portfolio/model/fetch_resume.dart';
import 'package:flutter/material.dart';

import 'bio_section.dart';
import 'experience_section.dart';
import 'portfolio_section.dart';
import 'reusable_card.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: FutureBuilder(
          future: ResumeApi().readJson(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(child: Text("${snapshot.error}"));
            } else if (snapshot.hasData) {
              var items = snapshot.data as List<FetchResumeModel>;
              return LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth > 700) {
                    return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Row(
                              children: [
                                Expanded(
                                  child: ExperienceSection(
                                    experienceNo: items[0].experience,
                                    clientsNo: items[0].clients,
                                    projectNo: items[0].project,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                  child: BioSection(
                                      name: items[0].name,
                                      location: items[0].city,
                                      image: items[0].image),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Expanded(
                            child: PortfolioSection(
                              aboutMe: items.first.about,
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  return  SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 300,
                            child: ExperienceSection(
                              experienceNo: items[0].experience,
                              clientsNo: items[0].clients,
                              projectNo: items[0].project,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          BioSection(
                              name: items[0].name,
                              location: items[0].city,
                              image: items[0].image,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          PortfolioSection(
                            aboutMe: items.first.about,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
