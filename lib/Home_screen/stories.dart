import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoriesWidget extends StatelessWidget{
  String imageStory;
  String ?imageProfile;
  bool is_user;

  StoriesWidget(
  {
    required this.imageStory,
    this.imageProfile,
    this.is_user=false,
}
      );
  @override
  Widget build(BuildContext context) {
    return is_user?
    Padding(
      padding: const EdgeInsets.only(left:11),
      child: Stack(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset('assets/home_screen/profile.jpg',
                width: 112,
                height: 178,
                fit: BoxFit.fill,
              )),
          Container(
            width: 112,
            height: 59,
            margin: EdgeInsets.only(top: 120),
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(top:140,left:15),
            child: Text("Create a Story",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12,
                color: Color(0xFF242527),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:115,left: 45),
            child: Icon(Icons.add_circle_outlined,
              color: Color(0xFF1877F2),
            ),
          ),

        ],
      ),
    )

        :
      Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
            child: Image.asset(imageStory,
              width: 112,
              height: 178,
              fit: BoxFit.fill,
            )),
        ClipRRect(
    borderRadius: BorderRadiusGeometry.circular(16),
    child: Image.asset('assets/home_screen/profile.jpg',
    width: 43,
    height:43,
    fit: BoxFit.cover,
    ))],
    );


  }

}
/*ListView.builder(
        itemBuilder: (context,index){
          return StoriesWidget(imageStory: imageStory)

        });*/