import 'package:consumer/Pages/login_screen.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});
  static String idd = "account";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60.0,
            ),
            // Profile Info
            const Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage(
                      'assets/images/Logo.jpg'), // Replace with your image asset
                ),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Adish Jain', // Replace with the user's name
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      'adish@gmail.com', // Replace with the user's email
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(),
            // Sections
            Expanded(
              child: ListView(
                children: [
                  _buildProfileSection(
                    icon: Icons.shopping_bag,
                    text: 'Orders',
                    onTap: () {},
                  ),
                  _buildProfileSection(
                    icon: Icons.person,
                    text: 'My Details',
                    onTap: () {},
                  ),
                  _buildProfileSection(
                    icon: Icons.location_on,
                    text: 'Delivery Address',
                    onTap: () {},
                  ),
                  _buildProfileSection(
                    icon: Icons.payment,
                    text: 'Payment Methods',
                    onTap: () {},
                  ),
                  _buildProfileSection(
                    icon: Icons.card_giftcard,
                    text: 'Promo Card',
                    onTap: () {},
                  ),
                  _buildProfileSection(
                    icon: Icons.notifications,
                    text: 'Notifications',
                    onTap: () {},
                  ),
                  _buildProfileSection(
                    icon: Icons.help,
                    text: 'Help',
                    onTap: () {},
                  ),
                  _buildProfileSection(
                    icon: Icons.info,
                    text: 'About',
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),

            // Log Out Button
            Container(
              margin: const EdgeInsets.only(left: 12.0, right: 12.0),
              height: 54.0,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, LoginScreen.id);
                },
                icon: const Icon(Icons.logout, color: Colors.green),
                label: const Text(
                  'Log Out',
                  // textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileSection(
      {required IconData icon,
      required String text,
      required VoidCallback onTap}) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: Colors.black),
          title: Text(text,
              style:
                  const TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500)),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16.0),
          onTap: onTap,
        ),
        const Divider(),
      ],
    );
  }
}
