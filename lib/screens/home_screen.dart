import 'package:facebook_assignment/core/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Widget> stories = [
    Image.asset('assets/images/story.png'),
    Image.asset('assets/images/story (2).png'),
    Image.asset('assets/images/story (3).png'),
    Image.asset('assets/images/story (4).png'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            indicatorColor: AppColors.blue,
            indicatorWeight: 3,
            tabs: [
              Tab(child: Image.asset('assets/images/home.png')),
              Tab(child: Image.asset('assets/images/videos.png')),
              Tab(child: Image.asset('assets/images/Store.png')),
              Tab(child: Image.asset('assets/images/Profile.png')),
              Tab(child: Image.asset('assets/images/Notification.png')),
              Tab(child: Image.asset('assets/images/Ellipse 1.png')),
            ],
          ),
          title: Text(
            'Facebook',
            style: TextStyle(
              color: AppColors.blue,
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          actions: [
            Image.asset('assets/images/Plus.png'),
            SizedBox(width: 12),
            Image.asset('assets/images/Search.png'),
            SizedBox(width: 12),
            Image.asset('assets/images/Messenger.png'),
            SizedBox(width: 12),
          ],
        ),
        body: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/images/Ellipse 2.png',width: 30,height: 40,),
                            Text(
                              'What’s in Your Mind?',
                              style: TextStyle(
                                color: AppColors.gray,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Spacer(),
                            Image.asset('assets/images/Photos.png'),
                          ],
                        ),
                      ),
                      Divider(color: AppColors.gray, thickness: 1),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                        child: SizedBox(
                          height: 150,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,

                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Image.asset('assets/images/story.png'),
                                  Image.asset('assets/images/story (2).png'),
                                  Image.asset('assets/images/story (3).png'),
                                  Image.asset('assets/images/story (4).png'),

                                ],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 10);
                            },
                            itemCount: 220,
                          ),
                        ),
                      ),
                      Divider(color: AppColors.gray, thickness: 1),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                        child: Row(
                          children: [
                            Image.asset('assets/images/Ellipse 6.png'),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Text('Route',style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),),
                                Image.asset('assets/images/Frame 3 (1).png'),


                              ],

                            ),
                            Spacer(),
                            Image.asset('assets/images/Group 10.png'),

                          ],
                        ),
                      ),
                      Image.asset('assets/images/Rectangle 10.png'),
                      SizedBox(
                        height: 7,

                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/heart-2.png'),
                          Image.asset('assets/images/Vector.png'),
                          Image.asset('assets/images/Paper_Plane.png'),
                          Spacer() ,
                          Image.asset('assets/images/Bookmark.png')

                        ],
                      )

                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/images/Ellipse 2.png',width: 30,height: 40,),
                            Text(
                              'What’s in Your Mind?',
                              style: TextStyle(
                                color: AppColors.gray,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Spacer(),
                            Image.asset('assets/images/Photos.png'),
                          ],
                        ),
                      ),
                      Divider(color: AppColors.gray, thickness: 1),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                        child: SizedBox(
                          height: 150,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,

                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Image.asset('assets/images/story.png'),
                                  Image.asset('assets/images/story (2).png'),
                                  Image.asset('assets/images/story (3).png'),
                                  Image.asset('assets/images/story (4).png'),

                                ],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 10);
                            },
                            itemCount: 220,
                          ),
                        ),
                      ),
                      Divider(color: AppColors.gray, thickness: 1),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                        child: Row(
                          children: [
                            Image.asset('assets/images/Ellipse 6.png'),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Text('Route',style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),),
                                Image.asset('assets/images/Frame 3 (1).png'),


                              ],

                            ),
                            Spacer(),
                            Image.asset('assets/images/Group 10.png'),

                          ],
                        ),
                      ),
                      Image.asset('assets/images/Rectangle 10.png'),
                      SizedBox(
                        height: 7,

                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/heart-2.png'),
                          Image.asset('assets/images/Vector.png'),
                          Image.asset('assets/images/Paper_Plane.png'),
                          Spacer() ,
                          Image.asset('assets/images/Bookmark.png')

                        ],
                      )

                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/images/Ellipse 2.png',width: 30,height: 40,),
                            Text(
                              'What’s in Your Mind?',
                              style: TextStyle(
                                color: AppColors.gray,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Spacer(),
                            Image.asset('assets/images/Photos.png'),
                          ],
                        ),
                      ),
                      Divider(color: AppColors.gray, thickness: 1),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                        child: SizedBox(
                          height: 150,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,

                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Image.asset('assets/images/story.png'),
                                  Image.asset('assets/images/story (2).png'),
                                  Image.asset('assets/images/story (3).png'),
                                  Image.asset('assets/images/story (4).png'),

                                ],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 10);
                            },
                            itemCount: 220,
                          ),
                        ),
                      ),
                      Divider(color: AppColors.gray, thickness: 1),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                        child: Row(
                          children: [
                            Image.asset('assets/images/Ellipse 6.png'),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Text('Route',style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),),
                                Image.asset('assets/images/Frame 3 (1).png'),


                              ],

                            ),
                            Spacer(),
                            Image.asset('assets/images/Group 10.png'),

                          ],
                        ),
                      ),
                      Image.asset('assets/images/Rectangle 10.png'),
                      SizedBox(
                        height: 7,

                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/heart-2.png'),
                          Image.asset('assets/images/Vector.png'),
                          Image.asset('assets/images/Paper_Plane.png'),
                          Spacer() ,
                          Image.asset('assets/images/Bookmark.png')

                        ],
                      )

                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/images/Ellipse 2.png',width: 30,height: 40,),
                            Text(
                              'What’s in Your Mind?',
                              style: TextStyle(
                                color: AppColors.gray,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Spacer(),
                            Image.asset('assets/images/Photos.png'),
                          ],
                        ),
                      ),
                      Divider(color: AppColors.gray, thickness: 1),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                        child: SizedBox(
                          height: 150,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,

                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Image.asset('assets/images/story.png'),
                                  Image.asset('assets/images/story (2).png'),
                                  Image.asset('assets/images/story (3).png'),
                                  Image.asset('assets/images/story (4).png'),

                                ],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 10);
                            },
                            itemCount: 220,
                          ),
                        ),
                      ),
                      Divider(color: AppColors.gray, thickness: 1),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                        child: Row(
                          children: [
                            Image.asset('assets/images/Ellipse 6.png'),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Text('Route',style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),),
                                Image.asset('assets/images/Frame 3 (1).png'),


                              ],

                            ),
                            Spacer(),
                            Image.asset('assets/images/Group 10.png'),

                          ],
                        ),
                      ),
                      Image.asset('assets/images/Rectangle 10.png'),
                      SizedBox(
                        height: 7,

                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/heart-2.png'),
                          Image.asset('assets/images/Vector.png'),
                          Image.asset('assets/images/Paper_Plane.png'),
                          Spacer() ,
                          Image.asset('assets/images/Bookmark.png')

                        ],
                      )

                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/images/Ellipse 2.png',width: 30,height: 40,),
                            Text(
                              'What’s in Your Mind?',
                              style: TextStyle(
                                color: AppColors.gray,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Spacer(),
                            Image.asset('assets/images/Photos.png'),
                          ],
                        ),
                      ),
                      Divider(color: AppColors.gray, thickness: 1),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                        child: SizedBox(
                          height: 150,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,

                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Image.asset('assets/images/story.png'),
                                  Image.asset('assets/images/story (2).png'),
                                  Image.asset('assets/images/story (3).png'),
                                  Image.asset('assets/images/story (4).png'),

                                ],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 10);
                            },
                            itemCount: 220,
                          ),
                        ),
                      ),
                      Divider(color: AppColors.gray, thickness: 1),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                        child: Row(
                          children: [
                            Image.asset('assets/images/Ellipse 6.png'),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Text('Route',style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),),
                                Image.asset('assets/images/Frame 3 (1).png'),


                              ],

                            ),
                            Spacer(),
                            Image.asset('assets/images/Group 10.png'),

                          ],
                        ),
                      ),
                      Image.asset('assets/images/Rectangle 10.png'),
                      SizedBox(
                        height: 7,

                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/heart-2.png'),
                          Image.asset('assets/images/Vector.png'),
                          Image.asset('assets/images/Paper_Plane.png'),
                          Spacer() ,
                          Image.asset('assets/images/Bookmark.png')

                        ],
                      )

                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset('assets/images/Ellipse 2.png',width: 30,height: 40,),
                            Text(
                              'What’s in Your Mind?',
                              style: TextStyle(
                                color: AppColors.gray,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 100,
                            ),
                            Spacer(),
                            Image.asset('assets/images/Photos.png'),
                          ],
                        ),
                      ),
                      Divider(color: AppColors.gray, thickness: 1),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                        child: SizedBox(
                          height: 150,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,

                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Image.asset('assets/images/story.png'),
                                  Image.asset('assets/images/story (2).png'),
                                  Image.asset('assets/images/story (3).png'),
                                  Image.asset('assets/images/story (4).png'),

                                ],
                              );
                            },
                            separatorBuilder: (context, index) {
                              return SizedBox(width: 10);
                            },
                            itemCount: 220,
                          ),
                        ),
                      ),
                      Divider(color: AppColors.gray, thickness: 1),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
                        child: Row(
                          children: [
                            Image.asset('assets/images/Ellipse 6.png'),
                            SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                Text('Route',style: TextStyle(
                                  color: AppColors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),),
                                Image.asset('assets/images/Frame 3 (1).png'),


                              ],

                            ),
                            Spacer(),
                            Image.asset('assets/images/Group 10.png'),

                          ],
                        ),
                      ),
                      Image.asset('assets/images/Rectangle 10.png'),
                      SizedBox(
                        height: 7,

                      ),
                      Row(
                        children: [
                          Image.asset('assets/images/heart-2.png'),
                          Image.asset('assets/images/Vector.png'),
                          Image.asset('assets/images/Paper_Plane.png'),
                          Spacer() ,
                          Image.asset('assets/images/Bookmark.png')

                        ],
                      )

                    ],
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
