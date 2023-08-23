import 'package:flutter/material.dart';
import 'package:portfolio/widgets/contact_widget.dart';
import '../models/constantsmodel.dart';
import '../utils/constants.dart';
import '../widgets/intro_widget.dart';
import '../widgets/project_card.dart';
import '../widgets/sidebar_data.dart';
import '../widgets/skills_widget.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout>
    with TickerProviderStateMixin {
  late AnimationController slideControllerMobile;

  @override
  void initState() {
    super.initState();
    slideControllerMobile = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );
    slideControllerMobile.forward();
  }

  @override
  void dispose() {
    if (slideControllerMobile.isAnimating) {
      slideControllerMobile.reset();
      slideControllerMobile.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(60, 80, 83, 95),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: mediaQuery.size.height * 0.08),
                
                const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Align(alignment: Alignment.center, child: SideBarData()),
                ),
                SizedBox(height: mediaQuery.size.height * 0.1),
                const Intro(),
                SizedBox(height: mediaQuery.size.height * 0.04),
                Padding(
                  padding: EdgeInsets.all(mediaQuery.size.width * 0.02),
                  child: SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(1, 0),
                        end: Offset.zero,
                      ).animate(CurvedAnimation(
                        parent: slideControllerMobile,
                        curve: Curves.easeOut,
                      )),
                      child: const SkillsWidget()),
                ),
                SizedBox(height: mediaQuery.size.height * 0.04),
                
                
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: mediaQuery.size.width * 0.02),
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
                          crossAxisCount: 1,
                          childAspectRatio: width > 380 && width < 410
                              ? 0.9
                              : width > 410 && width < 430
                                  ? 1.1
                                  : width > 430 && width < 460
                                      ? 1.2
                                      : width > 460 && width < 490
                                          ? 1.3
                                          : width > 490 && width < 520
                                              ? 1.39
                                              : width > 520 && width < 550
                                                  ? 1.41
                                                  : width >= 550 && width < 580
                                                      ? 1.47
                                                      : width >= 580 &&
                                                              width < 610
                                                          ? 1.52
                                                          : width >= 610 &&
                                                                  width < 630
                                                              ? 1.57
                                                              : width >= 630 &&
                                                                      width < 650
                                                                  ? 1.62
                                                                  : 1.36,
                        ),
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
                const SizedBox(height: 10),
                const ContactMe(),
                const SizedBox(height: 10),
              ],
            ),
          )),
    );
  }
}
