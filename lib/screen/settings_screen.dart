import 'package:attendance/components/gap.dart';
import 'package:attendance/core/util/color_palettes.dart';
import 'package:attendance/core/util/constants.dart';
import 'package:attendance/widgets/settings/settings_tile.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Paddings.screen),
      child: Gap(
        children: [
          const CircleAvatar(
            backgroundColor: ColorPalette.primary,
            radius: 50.0,
            child: Center(
              child: Text(
                "أ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50.0,
                  height: 2,
                ),
              ),
            ),
          ),
          const Text(
            "أحمد وليد",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
          const SizedBox(height: 30.0),
          SettingsTile(
            title: "الخصوصية والأمان",
            iconPath: "assets/SVG/notification_background.svg",
            onTap: () {
              print("Privacy and security");
            },
          ),
          SettingsTile(
            title: "تسجيل الخروج",
            iconPath: "assets/SVG/sign_out_background.svg",
            onTap: () {
              print("Sign out");
            },
          ),
        ],
      ),
    );
  }
}
