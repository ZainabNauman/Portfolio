import 'package:flutter/material.dart';
import '../models/constantsmodel.dart';
import '../utils/constants.dart';

class ProjectCard extends StatefulWidget {
  final Project project;

  const ProjectCard(this.project, {super.key});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard>
    with TickerProviderStateMixin {
  late final AnimationController controller =
      AnimationController(duration: const Duration(seconds: 2), vsync: this)
        ..repeat(reverse: true);
  late final Animation<Offset> offsetAnimation = Tween<Offset>(
          begin: Offset.zero, end: const Offset(0, 0.05))
      .animate(CurvedAnimation(parent: controller, curve: Curves.elasticIn));

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double cardHeight = constraints.maxHeight.isFinite
            ? constraints.maxHeight * 0.3
            : 200.0;

        return Container(
          margin: EdgeInsets.only(bottom: cardHeight * 0.02),
          padding: EdgeInsets.all(constraints.maxWidth * 0.02),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    color: Colors.black54,
                    offset: Offset(6, 6),
                    blurRadius: 15,
                    spreadRadius: 1),
                BoxShadow(
                    color: Colors.grey,
                    offset: Offset(-6, -6),
                    blurRadius: 15,
                    spreadRadius: 1),
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SlideTransition(
                position: offsetAnimation,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    widget.project.imageUrl,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: cardHeight * 0.1),
              Text(
                widget.project.title,
                style:  TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: StringConstants.poppins,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: cardHeight * 0.1),
              Expanded(
                child: Text(
                  widget.project.description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style:  TextStyle(
                      color: Colors.grey.shade600, fontFamily: StringConstants.poppins),
                ),
              ),
              SizedBox(height: cardHeight * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 174, 200, 248),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20), // Adjust the radius as needed
                      ),
                    ),
                    onPressed: () {
                      // Open project's GitHub repository
                    },
                    child: Text(
                      StringConstants.github,
                      style: TextStyle(fontFamily: StringConstants.poppins,color: Colors.black),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 174, 200, 248),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20), // Adjust the radius as needed
                      ),
                    ),
                    onPressed: () {
                      // Open project's demo
                    },
                    child: Text(
                      StringConstants.demo,
                      style: TextStyle(fontFamily:StringConstants.poppins,color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
