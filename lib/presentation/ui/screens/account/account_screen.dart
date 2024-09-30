import 'package:daily_greens/presentation/ui/screens/account/profile_appbar.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100), // Custom height for the AppBar
        child: ProfileAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildContent(),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: ElevatedButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Icon(Icons.logout),
                        SizedBox(width: 100,),
                        Text("Log Out")
                      ],
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _menuItem('Orders', Icons.account_balance_wallet),
          _menuItem('My Details', Icons.favorite_border),
          _menuItem('Delivery Address', Icons.save_alt),
          _menuItem('Payment Method', Icons.payment),
          _menuItem('Promo Card', Icons.lock),
          _menuItem('Notification', Icons.notifications),
          _menuItem('Help', Icons.notifications),
          _menuItem('About', Icons.lock),
        ],
      ),
    );
  }

  Widget _menuItem(String title, IconData icon) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: _boxDecoration(),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey, size: 24),
          const SizedBox(width: 16),
          Expanded(child: Text(title, style: _menuItemTextStyle())),
          const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 24),
        ],
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(14),
      boxShadow: const [
        BoxShadow(
          color: Color(0x19000000),
          blurRadius: 24,
          offset: Offset(0, 2),
        )
      ],
    );
  }

  TextStyle _menuItemTextStyle() {
    return TextStyle(
      color: Color(0xFF404040),
      fontSize: 16,
    );
  }
}
