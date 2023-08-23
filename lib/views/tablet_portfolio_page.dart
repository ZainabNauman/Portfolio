import 'package:flutter/material.dart';
import '../models/constantsmodel.dart';
import '../utils/constants.dart';
import '../widgets/contact_widget.dart';
import '../widgets/intro_widget.dart';
import '../widgets/project_card.dart';
import '../widgets/sidebar_data.dart';
import '../widgets/skills_widget.dart';

class TabletLayout extends StatefulWidget {
  const TabletLayout({super.key});

  @override
  State<TabletLayout> createState() => _TabletLayoutState();
}

class _TabletLayoutState extends State<TabletLayout>
    with TickerProviderStateMixin {
  late AnimationController slideController;

  @override
  void initState() {
    super.initState();
    slideController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    slideController.forward();
  }

  @override
  void dispose() {
    slideController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromARGB(60, 80, 83, 95),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 4,
            child: Container(
             color: Colors.transparent,
              child: const Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 40,bottom: 40),
                  child:
                      SideBarData()),
            ),
          ),
          // Main Content
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: mediaQuery.size.height * 0.04),
                  const Intro(),
                  SizedBox(height: mediaQuery.size.height * 0.04),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mediaQuery.size.width * 0.01),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(1, 0),
                              end: Offset.zero,
                            ).animate(CurvedAnimation(
                              parent: slideController,
                              curve: Curves.easeOut,
                            )),
                            child: const SkillsWidget()),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.04),
                        
                        SizedBox(height: mediaQuery.size.height * 0.02),
                        Container(
                           decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                                            padding: const EdgeInsets.all(8),
                          child: Column(children: [
                            Text(
                          StringConstants.projects,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: StringConstants.poppins,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.03,
                              fontWeight: FontWeight.bold),
                        ),
                            GridView.builder(
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: width < 730 &&
                                              width >= 650
                                          ? 0.53
                                          : width < 800 && width >= 730
                                              ? 0.64
                                              : width < 880 && width >= 800
                                                  ? 0.69
                                                  : width < 960 && width >= 880
                                                      ? 0.775
                                                      : width < 1040 &&
                                                              width >= 960
                                                          ? 0.81
                                                          : width < 1100 &&
                                                                  width >= 1040
                                                              ? 0.9
                                                              : 1.4),
                              itemCount: projects.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ProjectCard(projects[index]),
                                );
                              },
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                 
                ContactMe(),
                const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
