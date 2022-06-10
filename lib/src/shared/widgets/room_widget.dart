import 'package:club_house_clone_app/src/shared/resources/color_resource.dart';
import 'package:club_house_clone_app/src/shared/resources/profile_images_resource.dart';
import 'package:club_house_clone_app/src/shared/widgets/user_profile_icon_widget.dart';
import 'package:flutter/material.dart';

class RoomWidget extends StatelessWidget {
  const RoomWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: ColorResource.whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("social socifty 🤕".toUpperCase()),
          SizedBox(
            height: 5,
          ),
          Text(
            'Welcome to Clubehoyse 🎉 (Walkthrough with q&a)',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              _buildStackAvator(context),
              _buildRoomDetails(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildStackAvator(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: Stack(
        children: [
          Align(
              alignment: FractionalOffset(0.5, 0.45),
              child: UserProfileWidget(
                  imageUrl: ProfileImagesResource.p0, onTap: () {})),
          Align(
              alignment: FractionalOffset(0.1, 0.2),
              child: UserProfileWidget(
                  imageUrl: ProfileImagesResource.p2, onTap: () {})),
        ],
      ),
    );
  }

  Widget _buildRoomDetails(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Ebrahim Mansur 💬"),
        SizedBox(
          height: 3,
        ),
        Text("Ebrahim Mansur 💬"),
        SizedBox(
          height: 3,
        ),
        Text("Ebrahim Mansur 💬"),
        SizedBox(
          height: 5,
        ),
        Text('14👤 / 3🗣️')
      ],
    );
  }
}
