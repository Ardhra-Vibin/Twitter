import 'package:flutter/material.dart';
import 'package:twitter_application/CONSTANTS/colors.dart';
import 'package:twitter_application/CONSTANTS/styles.dart';
import 'package:twitter_application/WIDGETS/decoration.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = "home_screen";

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        elevation: .5,
        centerTitle: true,
        title: Image.asset(
          "assets/twitter.png",
          height: 25,
        ),
        leading: IconButton(onPressed: (){},icon: Image.asset(
          'assets/user2.png',
          height: 30,
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: IconButton(onPressed: (){},icon: Image.asset(
              'assets/christmas-stars.png',
              height: 26,
            ),),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Text(
                  "Let's get you set up",
                  style: Styles()
                      .normalS(fontS: 18, fontW: FontWeight.bold, color: black),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 135,width: w,
                child: ListView.builder(
                    itemCount: 10,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: w / 2,
                              height: 100,
                              decoration: DecorationWidget().gradientDecoration(),
                              child: Center(
                                child: Image.asset(
                                  'assets/add-user.png',
                                  height: 30,
                                  color: white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Complete your profile",
                              style: Styles().normalS(
                                  fontS: 14,
                                  fontW: FontWeight.bold,
                                  color: black),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              const SizedBox(
                height: 15,
              ),
              ListView.builder(
                  itemCount: 20,physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, index) {
                    return Column(
                      children: [
                        const Divider(
                          color: Colors.grey,
                        ),
                        Row( crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, top: 15,bottom: 15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 45,
                                    width: 45,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                        index % 2 == 0
                                            ? 'assets/profile1.jpg'
                                            : 'assets/profile2.jpg',
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  SizedBox(
                                    width: w - 110,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RichText(
                                            text: TextSpan(
                                                text: "Argentina",
                                                style: Styles().normalS(
                                                    fontS: 14,
                                                    fontW: FontWeight.w500,
                                                    color: g6),
                                                children: [
                                              TextSpan(text: " • "),
                                              TextSpan(
                                                text: "Follow Topic",
                                                style: Styles().normalS(
                                                    fontS: 14,
                                                    fontW: FontWeight.w600,
                                                    color: primary),
                                              )
                                            ])),
                                        const SizedBox(
                                          height: 3,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Xabhi ',
                                              style: Styles().normalS(
                                                  fontS: 16,
                                                  fontW: FontWeight.bold,
                                                  color: black),
                                            ),
                                            const Icon(
                                              Icons.stars_rounded,
                                              size: 20,
                                            ),
                                            Text(
                                              " @FCB_Lad_ 8th",
                                              style: Styles().normalS(
                                                fontS: 13,
                                                fontW: FontWeight.w600,
                                                color: blue,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                            "Total Christiano guy said the only way he'll ever accept Messi as the goat is if he wins the worldcup.",
                                            style: Styles().normalS(
                                                fontS: 14,
                                                fontW: FontWeight.normal,
                                                color: black)),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/speech-bubble.png",
                                                  height: 17,
                                                  color: g5,
                                                ),
                                                const SizedBox(
                                                  width: 3,
                                                ),
                                                Text("98",
                                                    style: Styles().normalS(
                                                        fontS: 13,
                                                        fontW:
                                                            FontWeight.normal,
                                                        color: g7))
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/swap.png",
                                                  height: 18,color: g6,
                                                ),
                                                const SizedBox(
                                                  width: 3,
                                                ),
                                                Text("1,222",
                                                    style: Styles().normalS(
                                                        fontS: 13,
                                                        fontW:
                                                            FontWeight.normal,
                                                        color: g7))
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Row(
                                              children: [
                                                Image.asset(
                                                  "assets/heart.png",
                                                  height: 15,color: g6,
                                                ),
                                                const SizedBox(
                                                  width: 3,
                                                ),
                                                Text("17.2K",
                                                    style: Styles().normalS(
                                                        fontS: 13,
                                                        fontW:
                                                            FontWeight.normal,
                                                        color: g7))
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            Image.asset(
                                              "assets/share (1).png",
                                              height: 16,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),

                                ],
                              ),
                            ),
                            SizedBox(
                                height: 40,width: 40,
                                child: IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: (){}, icon: const Icon(Icons.more_vert,size: 16,)))
                          ],
                        ),
                      ],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
