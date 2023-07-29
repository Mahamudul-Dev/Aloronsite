import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key, required this.name, required this.designation, required this.areaManage, required this.phone, required this.branch, required this.userPhoto});

  final String name;
  final String userPhoto;
  final String designation;
  final String areaManage;
  final String phone;
  final String branch;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(25)),
        color: Theme.of(context).primaryColor
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 50.w,
            backgroundColor: Theme.of(context).shadowColor,
            backgroundImage: CachedNetworkImageProvider(userPhoto),
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Colors.white),),
              Text('Designation: $designation', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),
              Text('Area Manage: $areaManage', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),
              Text('Branch: $branch', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),),
              Text('Phone: $phone', style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.white),)
            ],
          )
        ],
      ),
    );
  }
}
