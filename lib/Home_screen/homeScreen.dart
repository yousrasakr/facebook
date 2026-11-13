import 'package:facebook/Home_screen/posts.dart';
import 'package:facebook/Home_screen/stories.dart';
import 'package:facebook/data_model/postModel.dart';
import 'package:facebook/data_model/storiesModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routingName = "home_screen";
  List<dataStories> storiesList = [];
  List<dataPosts> postsList = [];
  List<String> profileImages=[
    'assets/home_screen/profile_story_1.jpg',
    'assets/home_screen/profile_story_2.jpg',
    'assets/home_screen/profile_story_3.jpg',

  ];
  List<String> storiesImages=[
    'assets/home_screen/story_1.jpg',
    'assets/home_screen/story_2.png',
    'assets/home_screen/story_3.jpg',


  ];

  void addStory() {
    for (int i = 0; i < profileImages.length; i++) {
      storiesList.add(
        dataStories(
          imageStory: storiesImages[i],
          imageProfile: profileImages[i],
        ),
      );
    }
  }

  void addPost() {
    for (int i = 1; i <= 100; i++) {
      postsList.add(
        dataPosts(
          name: 'Route',
          profileImage: 'assets/home_screen/route.jpg',
          postImage: 'assets/home_screen/route_post.jpg',
        ),
      );
    }
  }

  HomeScreen() {
    addStory();
    addPost();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: false,
            title: Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Text(
                'Facebook',
                style: TextStyle(
                  color: Color(0xFF1877F2),
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.add_circle_outlined)),
              IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              IconButton(onPressed: () {}, icon: Icon(Icons.message)),
            ],
          ),

          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.home_filled)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.ondemand_video_rounded)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.person_2_outlined)),
                  ],
                ),
                Divider(color: Color(0xFF898F9C), thickness: 1),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        spacing: 8,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              'assets/home_screen/profile.jpg',
                              width: 43,
                              height: 43,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            "What's in Your Mind?",
                            style: TextStyle(
                              color: Color(0xFF898F9C),
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {},
                        style: IconButton.styleFrom(foregroundColor: Color(0xFF0DE571)),
                        icon: Icon(Icons.photo),
                      ),
                    ],
                  ),
                ),
                Divider(color: Color(0xFF898F9C), thickness: 1),
                SizedBox(
                  height: 210,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: storiesList.length,
                    separatorBuilder: (context, index) => SizedBox(width: 12),
                    itemBuilder: (BuildContext context, index) {
                      bool isUserCard = (index == 0);
                      return StoriesWidget(
                        imageStory: isUserCard ? '' : storiesList[index].imageStory,
                        imageProfile: storiesList[index].imageProfile,
                        is_user: isUserCard,
                      );
                    },
                  ),
                ),
                Divider(color: Color(0xFF898F9C), thickness: 1),
              ],
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return postsWidget(
                  name: postsList[index].name,
                  profileImage: postsList[index].profileImage,
                  postImage: postsList[index].postImage,
                );
              },
              childCount: postsList.length,
            ),
          ),
        ],
      ),
    );
  }
}
