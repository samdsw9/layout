import 'package:flutter/material.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Center',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('https://media.istockphoto.com/id/1332100919/vector/man-icon-black-icon-person-symbol.jpg?s=612x612&w=0&k=20&c=AVVJkvxQQCuBhawHrUhDRTCeNQ3Jgt0K1tXjJsFy1eg='), 
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mausam Rayamajhi',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'A trendsetter',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Column(
                        children: [
                          Text('846', style: _statTextStyle()),
                          Text('Collect', style: _statLabelStyle()),
                        ],
                      ),
                      SizedBox(width: 16),
                      Column(
                        children: [
                          Text('51', style: _statTextStyle()),
                          Text('Attention', style: _statLabelStyle()),
                        ],
                      ),
                      SizedBox(width: 16),
                      Column(
                        children: [
                          Text('267', style: _statTextStyle()),
                          Text('Track', style: _statLabelStyle()),
                        ],
                      ),
                      SizedBox(width: 16),
                      Column(
                        children: [
                          Text('39', style: _statTextStyle()),
                          Text('Coupons', style: _statLabelStyle()),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildIcon(Icons.account_balance_wallet, 'Wallet'),
                  _buildIcon(Icons.local_shipping, 'Delivery'),
                  _buildIcon(Icons.message, 'Message'),
                  _buildIcon(Icons.support_agent, 'Service'),
                ],
              ),
            ),
            SizedBox(height: 16),
            _buildSettingsList(),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon(IconData icon, String label) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          child: Icon(icon, color: Colors.black),
        ),
        SizedBox(height: 8),
        Text(label),
      ],
    );
  }

  Widget _buildSettingsList() {
    return Column(
      children: [
        _buildSettingsItem(Icons.location_on, 'Address',
            'Ensure your harvesting address'),
        _buildSettingsItem(Icons.privacy_tip, 'Privacy',
            'System permission change'),
        _buildSettingsItem(Icons.settings, 'General',
            'Basic functional settings'),
        _buildSettingsItem(Icons.notifications, 'Notification',
            'Take over the news in time'),
      ],
    );
  }

  Widget _buildSettingsItem(IconData icon, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 3,
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blueAccent.shade100,
            child: Icon(icon, color: Colors.white),
          ),
          title: Text(title),
          subtitle: Text(subtitle),
          trailing: Icon(Icons.arrow_forward_ios, size: 16),
        ),
      ),
    );
  }

  TextStyle _statTextStyle() {
    return TextStyle(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    );
  }

  TextStyle _statLabelStyle() {
    return TextStyle(
      color: Colors.white70,
      fontSize: 12,
    );
  }
}
