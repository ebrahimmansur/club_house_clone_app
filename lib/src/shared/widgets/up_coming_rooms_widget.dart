import 'package:club_house_clone_app/src/shared/resources/color_resource.dart';
import 'package:flutter/material.dart';

class UpComingRoomsWidget extends StatelessWidget {
  const UpComingRoomsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: ColorResource.secondaryBackgroundColor,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildRoomItem(context),
          SizedBox(
            height: 20,
          ),
          _buildRoomItem(context),
          SizedBox(
            height: 8,
          )
        ],
      ),
    );
  }

  Widget _buildRoomItem(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "3:00 PM",
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        SizedBox(width: 9),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  'Flutter 🐔'.toUpperCase(),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Flexible(
                  child: Text(
                "Flutter Engage Recap 🔵",
                overflow: TextOverflow.ellipsis,
              ))
            ],
          ),
        ),
      ],
    );
  }
}
