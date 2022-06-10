import 'package:flutter/material.dart';

class UserProfileWidget extends StatelessWidget {
  final String imageUrl;
  final double size;
  final void Function() onTap;
  const UserProfileWidget({
    Key? key,
    required this.imageUrl,
    required this.onTap,
    this.size = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: size,
        height: size,
        child: Container(
          decoration: BoxDecoration(
            image:
                DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.cover),
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
