import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '/core.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: Colors.grey[200],
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                _buildHeader(),
                const SizedBox(height: 20),
                _buildList(
                  const [
                    CustomListTile(
                      title: 'Email',
                      iconData: Icons.mail_outline,
                      subtitle: 'miziad2000@gmail.com',
                    ),
                    Divider(),
                    CustomListTile(
                      title: 'Phone',
                      iconData: LineIcons.phone,
                      subtitle: '(970) 59 983 8964',
                    ),
                    Divider(),
                    CustomListTile(
                      title: 'Birth of Date',
                      iconData: LineIcons.calendar,
                      subtitle: 'Thursday, 11 May 2000',
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                _buildList(
                  const [
                    CustomListTile(
                      title: 'Invite Friends',
                      iconData: LineIcons.gift,
                      isTrailing: true,
                    ),
                    Divider(),
                    CustomListTile(
                      title: 'User Agreement',
                      iconData: LineIcons.userLock,
                      isTrailing: true,
                    ),
                    Divider(),
                    CustomListTile(
                      title: 'Settings',
                      iconData: Icons.settings_outlined,
                      isTrailing: true,
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Get.dialog(AlertDialog(
                      content: const Text(
                        'Are you sure to sign out?',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      actions: [
                        GestureDetector(
                          onTap: () => Get.back(),
                          child: Container(
                            width: 120,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.grey[300]!,
                                width: 1,
                              ),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              'Cancel',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Get.offNamed(Routes.signin),
                          child: Container(
                            width: 120,
                            height: 50,
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            alignment: Alignment.center,
                            child: const Text(
                              'Yes',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ));
                  },
                  child: Container(
                    height: 60,
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.red[400],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          LineIcons.arrowCircleLeft,
                          size: 28,
                          color: Colors.white,
                        ),
                        SizedBox(width: 6),
                        Text(
                          'Sign Out',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildList(List<Widget> children) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      child: ListView(shrinkWrap: true, children: children),
    );
  }

  Widget _buildHeader() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: ImageProfileWidget(),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Motasem Abu Nema',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                ),
              ),
              Row(
                children: const [
                  Icon(
                    LineIcons.wallet,
                    color: Colors.black,
                  ),
                  SizedBox(width: 2),
                  Text(
                    'IDR',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(width: 2),
                  Text(
                    '17,7jt',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          Container(
            width: 45,
            height: 45,
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              border: Border.all(color: Colors.grey[300]!, width: 1),
            ),
            child: const Icon(
              LineIcons.userEdit,
              color: Colors.black,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}
