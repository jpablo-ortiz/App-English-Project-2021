import 'package:english_app/generated/l10n.dart';
import 'package:english_app/screens/global/side_bar_menu/widgets/header_side_bar.dart';
import 'package:english_app/shared/widgets/menu_item_side_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

class SideBarMenu extends StatelessWidget {
  final padding = EdgeInsets.symmetric(horizontal: 20);

  final name = "Javeriana";
  final email = "English Class";
  final urlImage = "https://images.unsplash.com/photo-1518991669955-9c7e78ec80ca?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: context.theme.primaryColor,
        child: SafeArea(
          child: Scrollbar(
            child: ListView(
              children: <Widget>[
                HeaderSideBar(
                  urlImage: urlImage,
                  name: name,
                  email: email,
                  onClick: () => Get.toNamed(
                    '/profile',
                    arguments: {'name': name, 'urlImage': urlImage},
                  ),
                ),
                Container(
                  padding: padding,
                  child: Column(
                    children: <Widget>[
                      MenuItemSideBar(
                        text: S.of(context).settings,
                        icon: Icons.settings_outlined,
                        onClicked: () => openScreen(name: '/settings'),
                      ),
                      SizedBox(height: 8),
                      Divider(color: Colors.white),
                      SizedBox(height: 8),
                      MenuItemSideBar(
                        text: "Home",
                        icon: Icons.home,
                        onClicked: () => openScreen(name: '/home'),
                      ),
                      MenuItemSideBar(
                        text: "Some advice for your relationship",
                        icon: Icons.family_restroom,
                        onClicked: () => openScreen(name: '/advice'),
                      ),
                      MenuItemSideBar(
                        text: "Opinion and reflection",
                        icon: Icons.filter_drama,
                        onClicked: () => openScreen(name: '/opinion'),
                      ),
                      MenuItemSideBar(
                        text: "Conclusions",
                        icon: Icons.my_location,
                        onClicked: () => openScreen(name: '/conclusions'),
                      ),
                      MenuItemSideBar(
                        text: "References",
                        icon: Icons.menu_book,
                        onClicked: () => openScreen(name: '/references'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void openScreen({required String name}) {
    Get.back();
    if (Get.currentRoute != name) Get.toNamed(name);
  }
}
