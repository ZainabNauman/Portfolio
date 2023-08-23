import 'package:flutter/material.dart';
import '../models/constantsmodel.dart';
import '../utils/constants.dart';
import '../widgets/contact_widget.dart';
import '../widgets/intro_widget.dart';
import '../widgets/project_card.dart';
import '../widgets/sidebar_data.dart';
import '../widgets/skills_widget.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout>
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
      backgroundColor:  const Color.fromARGB(60, 80, 83, 95),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Expanded(
            flex: 3,
            child: Container(
             color: Colors.transparent,
              child: const Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, top: 70,bottom: 50),
                  child:
                      SideBarData()),
            ),
          ),
          // Main Content
          Expanded(
            flex: 7,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: mediaQuery.size.height * 0.04),
                  const Intro(),
                  //SizedBox(height: mediaQuery.size.height * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mediaQuery.size.width * 0.01),
                    child: SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(1, 0),
                          end: Offset.zero,
                        ).animate(CurvedAnimation(
                          parent: slideController,
                          curve: Curves.easeOut,
                        )),
                        child: const SkillsWidget()),
                  ),
                  SizedBox(height: mediaQuery.size.height * 0.07),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: mediaQuery.size.width * 0.01),
                    child: Container(
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
                      padding: const EdgeInsets.all(8),
                      child: Column(children: [
                        SizedBox(height: width*0.03),
                        Text(
                      StringConstants.projects,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.height * 0.03,
                          fontFamily: StringConstants.poppins,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: width*0.03),
                        GridView.builder(
                          shrinkWrap: true,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              childAspectRatio: width < 1160 && width >= 1100
                                  ? 0.63
                                  : width < 1200 && width >= 1160
                                      ? 0.67
                                      : width < 1260 && width >= 1200
                                          ? 0.7
                                          : width < 1320 && width >= 1260
                                              ? 0.73
                                              : width < 1380 && width >= 1320
                                                  ? 0.75
                                                  : width < 1430 && width >= 1380
                                                      ? 0.78
                                                      : width < 1490 &&
                                                              width >= 1430
                                                          ? 0.82
                                                          : width < 1540 &&
                                                                  width >= 1490
                                                              ? 0.86
                                                              : width < 1590 &&
                                                                      width >=
                                                                          1540
                                                                  ? 1.03
                                                                  : 1.05),
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
                  ),
                  SizedBox(height: mediaQuery.size.height * 0.07),
                ContactMe(),
               SizedBox(height: mediaQuery.size.height * 0.07),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
