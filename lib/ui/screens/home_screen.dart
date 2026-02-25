import 'package:flutter/material.dart';

import '../widgets/custom_icon.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/Facebook.png'),
          actions: [
            CustomIcon(imageName: 'Plus'),
            CustomIcon(imageName: 'Search'),
            CustomIcon(imageName: 'Messenger'),
          ],
          bottom: TabBar(
            tabs: [Tab(child: Image.asset('assets/home.png')),
              Tab(child: Image.asset('assets/reels.png')),
              Tab(child: Image.asset('assets/Store.png')),
              Tab(child: Image.asset('assets/Profile.png')),
              Tab(child: Image.asset('assets/Notification.png')),
              Tab(child: Image.asset('assets/user_image.png')),
            ],
          ),
        ),

        body: Column(
            children: [
              Expanded(
                child: TabBarView(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 15,left: 11,top: 18,bottom: 24),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(width: 43,height: 43,fit: BoxFit.fill,'assets/user_image.png'),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'What’s in Your Mind?',
                                contentPadding: EdgeInsets.only(left: 10),
                                border: InputBorder.none
                              ),
                            ),
                          ),
                          Image.asset('assets/Photos.png'),
                        ],
                      ),

                    ),
                   Expanded(child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context,index) {
                        return Stack(
                              children: [
                                Image.asset('assets/Story_Image_1.png'),
                              ],
                            );
                        }
                   )
                        ),
                    // Center(child: Text("It's rainy here")),
                    // Center(child: Text("It's sunny here")),
                    // Center(child: Text("It's cloudy here")),
                    // Center(child: Text("It's rainy here")),
                    // Center(child: Text("It's sunny here")),
                  ],
                ),
              ),
            ],

          ),


      ),
    );
  }
}
