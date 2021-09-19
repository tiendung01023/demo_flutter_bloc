import 'package:cached_network_image/cached_network_image.dart';
import 'package:demo_flutter_bloc/helpers/cached_network_image_helper.dart';
import 'package:flutter/material.dart';
import 'package:demo_flutter_bloc/extensions/responsive_extension.dart';

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
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            right: 8.responsive(),
          ),
          child: imageUrl == null
              ? Container()
              : ClipRRect(
                  borderRadius: BorderRadius.circular(
                    15.responsive(),
                  ),
                  child: CachedNetworkImage(
                    imageUrl: imageUrl!,
                    fit: BoxFit.cover,
                    width: 30.responsive(),
                    height: 30.responsive(),
                    placeholder: (_, __) =>
                        CachedNetworkImageHelper.placeholder(),
                    errorWidget: (_, __, dynamic ___) =>
                        CachedNetworkImageHelper.error(),
                  ),
                ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              name ?? '',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w700,
                fontSize: 13.responsive(),
              ),
            ),
            Text(
              username ?? '',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.w400,
                fontSize: 11.responsive(),
              ),
            )
          ],
        )
      ],
    );
  }
}
