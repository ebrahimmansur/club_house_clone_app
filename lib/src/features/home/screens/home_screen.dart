import 'package:club_house_clone_app/src/shared/resources/profile_images_resource.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:club_house_clone_app/src/shared/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () => debugPrint('search'),
            icon: const Icon(
              Icons.search,
              size: 28,
            )),
        actions: [
          IconButton(
              onPressed: () => debugPrint('search'),
              icon: const Icon(
                CupertinoIcons.envelope_open,
                size: 26,
              )),
          IconButton(
              onPressed: () => debugPrint('search'),
              icon: const Icon(
                CupertinoIcons.calendar,
                size: 28,
              )),
          IconButton(
              onPressed: () => debugPrint('search'),
              icon: const Icon(
                CupertinoIcons.bell,
                size: 28,
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
            child: UserProfileWidget(
                imageUrl: ProfileImagesResource.p0,
                size: 35,
                onTap: () => debugPrint('prof')),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 12),
        child: ListView(children: [
          UpComingRoomsWidget(),
          SizedBox(
            height: 10,
          ),
          RoomWidget()
        ]),
      ),
    );
  }
}
