import 'package:ecommerce_app/controller/settings_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:ecommerce_app/core/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    // bool _darkSwitch = false;
    MyServices myServices = Get.find();
    SettingsController settingdController = SettingsController();
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.arrow_back_ios_new)),
                  Text(
                    "Profile",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.black87, fontSize: 24),
                  ),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (BuildContext) =>

                                // AboutDialog(
                                //       applicationIcon: Text('applicationIcon'),
                                //       applicationLegalese: 'applicationLegalese',
                                //       applicationName: 'applicationName',
                                //       applicationVersion: 'applicationVersion',
                                //       children: [],
                                //     )
                                AlertDialog(
                                  content: Text(
                                    "logout",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyLarge!
                                        .copyWith(
                                            color: AppColor.blackMatte,
                                            fontSize: 20),
                                  ),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),

                                  actions: [
                                    ElevatedButton(
                                        onPressed: () {
                                          Get.back();
                                        },
                                        child: const Text('Cancel')),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                AppColor.blackMatte),
                                        onPressed: () {
                                          settingdController.logout();
                                        },
                                        child: const Text('Exit')),
                                    const SizedBox(width: 5)
                                  ],
                                  contentPadding: const EdgeInsets.all(30),
                                  // clipBehavior: BorderRadius.circular(30),
                                ));
                      },
                      icon: const Icon(
                        Icons.logout_outlined,
                        size: 28,
                      )),
                  const SizedBox(width: 10)
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, bottom: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.network(
                    // https://avatars.githubusercontent.com/u/3511384?v=4
                    "https://png.pngtree.com/png-clipart/20221207/ourmid/pngtree-old-man-cartoon-png-image_6514608.png",
                    height: 100),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    " ${myServices.sharedPreferences.getString('username')}",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: AppColor.blackMatte, fontSize: 24),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    " ${myServices.sharedPreferences.getString('useremail')}",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: AppColor.greytitle, fontSize: 14),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1.2,
          indent: 15,
          endIndent: 15,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, top: 6, bottom: 10),
          child: Text(
            "Settings",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: AppColor.blackMatte, fontSize: 20),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(right: 25, left: 15, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.manage_accounts_outlined,
                    color: AppColor.greytitle,
                    size: 28,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Manage Account",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.black87, fontSize: 14),
                  ),
                ],
              ),
              const Icon(
                Icons.chevron_right,
                size: 26,
                color: AppColor.greycold,
              ),
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(right: 25, left: 15, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.key_outlined,
                    color: AppColor.greytitle,
                    size: 28,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Password",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.black87, fontSize: 14),
                  ),
                ],
              ),
              const Icon(
                Icons.chevron_right,
                size: 26,
                color: AppColor.greycold,
              ),
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(right: 25, left: 15, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.shield_outlined,
                    color: AppColor.greytitle,
                    size: 28,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Privacy",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.black87, fontSize: 14),
                  ),
                ],
              ),
              const Icon(
                Icons.chevron_right,
                color: AppColor.greycold,
                size: 26,
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1.2,
          indent: 15,
          endIndent: 15,
        ),
        Padding(
          padding:
              const EdgeInsets.only(right: 25, left: 15, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.notifications_none_outlined,
                    color: AppColor.greytitle,
                    size: 28,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Notifications",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.black87, fontSize: 14),
                  ),
                ],
              ),
              Switch(value: true, onChanged: (state) {})
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(right: 25, left: 15, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.dark_mode_outlined,
                    color: AppColor.greytitle,
                    size: 28,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Dark Mode",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.black87, fontSize: 14),
                  ),
                ],
              ),
              Switch(value: false, onChanged: (state) {})
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(right: 25, left: 15, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.translate_outlined,
                    color: AppColor.greytitle,
                    size: 28,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Language",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.black87, fontSize: 14),
                  ),
                ],
              ),
              const Icon(
                Icons.chevron_right,
                color: AppColor.greycold,
                size: 26,
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1.2,
          indent: 15,
          endIndent: 15,
        ),
        Padding(
          padding:
              const EdgeInsets.only(right: 25, left: 15, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.done,
                    color: AppColor.greytitle,
                    size: 28,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    "App Permissions",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.black87, fontSize: 14),
                  ),
                ],
              ),
              const Icon(
                Icons.chevron_right,
                color: AppColor.greycold,
                size: 26,
              ),
            ],
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(right: 25, left: 15, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Icon(
                    Icons.headset_mic_outlined,
                    color: AppColor.greytitle,
                    size: 28,
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Help",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.black87, fontSize: 14),
                  ),
                ],
              ),
              const Icon(
                Icons.chevron_right,
                color: AppColor.greycold,
                size: 26,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
//Image.network("https://avatars.githubusercontent.com/u/3511384?v=4"),