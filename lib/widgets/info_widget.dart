import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_flutter_bloc/helpers/cached_network_image_helper.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
  final String? imageUrl;
  final String? name;
  final String? username;

  const InfoWidget({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.username,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: imageUrl == null
              ? Container()
              : ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CachedNetworkImage(
                    imageUrl: imageUrl!,
                    fit: BoxFit.cover,
                    width: 30,
                    height: 30,
                    placeholder: (_, __) =>
                        CachedNetworkImageHelper.placeholder(),
                    errorWidget: (_, __, ___) =>
                        CachedNetworkImageHelper.error(),
                  ),
                ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name ?? '',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 13,
              ),
            ),
            Text(
              username ?? '',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 11,
              ),
            )
          ],
        )
      ],
    );
  }
}
