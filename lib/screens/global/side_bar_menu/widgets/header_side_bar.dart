import 'package:english_app/services/get_it.dart';
import 'package:english_app/services/repositories/authentication_repository.dart';
import 'package:flutter/material.dart';

class HeaderSideBar extends StatelessWidget {
  final String urlImage;
  final String name;
  final String email;
  final Future? Function() onClick;

  const HeaderSideBar({
    Key? key,
    required this.urlImage,
    required this.name,
    required this.email,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final padding = EdgeInsets.symmetric(horizontal: 20);

    return InkWell(
      onTap: onClick,
      child: Container(
        padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                'https://www2.javerianacali.edu.co/sites/ujc/files/field/image/escudovertical_1.png',
              ),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(height: 4),
                Text(
                  email,
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
              ],
            ),
            Spacer(flex: 2),
            TextButton(
              onPressed: () => getIt.get<AuthenticationRepository>().logOut(),
              child: Icon(
                Icons.logout,
                color: Colors.white,
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
}
