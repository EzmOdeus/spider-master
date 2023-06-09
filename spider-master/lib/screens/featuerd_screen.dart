import 'package:education_app/constants/color.dart';
import 'package:education_app/constants/size.dart';
import 'package:education_app/models/category.dart';
import 'package:education_app/screens/course_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:ui';
import 'details_screen.dart';
import 'details_screen2.dart';
import 'details_screen3.dart';
import 'details_screen4.dart';

import '../widgets/search_testfield.dart';

class FeaturedScreen extends StatefulWidget {
  const FeaturedScreen({Key? key}) : super(key: key);

  @override
  _FeaturedScreenState createState() => _FeaturedScreenState();
}

class _FeaturedScreenState extends State<FeaturedScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Column(
          children: const [
            AppBar(),
            Body(),
          ],
        ),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CourseScreen(),
                    ),
                  );
                },
                child: Text(
                  "...المـزيـد",
                  style: TextStyle(
                    fontFamily: "Cairo",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ).copyWith(color: kPrimaryColor),
                ),
              ),
              Text("الدروس",
                  style: TextStyle(
                    fontFamily: "Cairo",
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 20,
            mainAxisSpacing: 24,
          ),
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categoryList[index],
            );
          },
          itemCount: categoryList.length,
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        switch (category.name) {
          case "الدرس الأول":
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsScreen()),
            );
            break;
          case "الدرس الثاني":
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsScreen2()),
            );
            break;
          case "الدرس الثالث":
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailsScreen3(
                      // title: 'LESSON 3',
                      )),
            );
            break;
          case "الدرس الرابع":
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DetailsScreen4()),
            );
            break;
        }
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 4.0,
              spreadRadius: .05,
            ), //BoxShadow
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  category.thumbnail,
                  height: kCategoryCardImageSize,
                ),
              ),
            ),
            // add more widgets as needed

            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Text(category.name,
                  style: TextStyle(
                    fontFamily: "Cairo",
                  )),
            ),

            Align(
              alignment: Alignment.topCenter,
              child: Text(
                "${category.lessonName.toString()} ",
                style: TextStyle(fontFamily: "Cairo", fontSize: 10),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppBar extends StatelessWidget {
  const AppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.1, 0.5],
          colors: [
            Colors.blueAccent,
            Color.fromARGB(255, 39, 7, 184),
          ],
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                // "Welcome,\nTo My App",
                "مرحبا بك فى برنامج الوراثة الجزيئية",

                style: TextStyle(
                  fontFamily: "Cairo",
                  letterSpacing: 1,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              //   CircleButton(
              //     icon: Icons.notifications,
              //     onPressed: () {},
              //   ),
            ],
          ),
          const SizedBox(
            height: 0,
          ),
          const SearchTextField()
        ],
      ),
    );
  }
}
