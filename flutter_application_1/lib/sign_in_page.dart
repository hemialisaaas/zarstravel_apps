// lib/sign_in_page.dart
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assetsbackground.mp4')
      ..initialize().then((_) {
        _controller.setLooping(true);
        _controller.play();
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Video
          SizedBox.expand(
            child: _controller.value.isInitialized
                ? VideoPlayer(_controller)
                : Container(color: Colors.black),
          ),
          // Gradient Overlay
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black.withOpacity(0.6),
                  Colors.black.withOpacity(0.3),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          // Sign In Form
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Username',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.white70,
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      // Handle sign in logic
                    },
                    child: const Text('Sign In'),
                  ),
                  const SizedBox(height: 16),
                  _buildSettingsSection(context),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Settings',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        ListTile(
          title: const Text('Account', style: TextStyle(color: Colors.white)),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AccountSettingsPage()),
            );
          },
        ),
        ListTile(
          title: const Text('Privacy', style: TextStyle(color: Colors.white)),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PrivacySettingsPage()),
            );
          },
        ),
        ListTile(
          title: const Text('Notifications', style: TextStyle(color: Colors.white)),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NotificationSettingsPage()),
            );
          },
        ),
        ListTile(
          title: const Text('Chat Settings', style: TextStyle(color: Colors.white)),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ChatSettingsPage()),
            );
          },
        ),
        ListTile(
          title: const Text('Data and Storage', style: TextStyle(color: Colors.white)),
          trailing: const Icon(Icons.arrow_forward_ios, color: Colors.white),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DataStorageSettingsPage()),
            );
          },
        ),
      ],
    );
  }
}

class AccountSettingsPage extends StatefulWidget {
  const AccountSettingsPage({super.key});

  @override
  _AccountSettingsPageState createState() => _AccountSettingsPageState();
}

class _AccountSettingsPageState extends State<AccountSettingsPage> {
  bool isTwoFactorEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const ListTile(
            title: Text('Change Username'),
          ),
          const ListTile(
            title: Text('Change Password'),
          ),
          SwitchListTile(
            title: const Text('Two-Factor Authentication'),
            value: isTwoFactorEnabled,
            onChanged: (bool value) {
              setState(() {
                isTwoFactorEnabled = value;
              });
            },
          ),
          const ListTile(
            title: Text('Manage Devices'),
          ),
          const ListTile(
            title: Text('Delete Account'),
          ),
          // Add more account settings as needed
        ],
      ),
    );
  }
}

class PrivacySettingsPage extends StatefulWidget {
  const PrivacySettingsPage({super.key});

  @override
  _PrivacySettingsPageState createState() => _PrivacySettingsPageState();
}

class _PrivacySettingsPageState extends State<PrivacySettingsPage> {
  bool isLastSeenVisible = true;
  bool isProfilePhotoVisible = true;
  bool isReadReceiptsEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Privacy Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const ListTile(
            title: Text('Blocked Contacts'),
          ),
          SwitchListTile(
            title: const Text('Last Seen'),
            value: isLastSeenVisible,
            onChanged: (bool value) {
              setState(() {
                isLastSeenVisible = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Profile Photo'),
            value: isProfilePhotoVisible,
            onChanged: (bool value) {
              setState(() {
                isProfilePhotoVisible = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Read Receipts'),
            value: isReadReceiptsEnabled,
            onChanged: (bool value) {
              setState(() {
                isReadReceiptsEnabled = value;
              });
            },
          ),
          const ListTile(
            title: Text('About'),
          ),
          // Add more privacy settings as needed
        ],
      ),
    );
  }
}

class NotificationSettingsPage extends StatefulWidget {
  const NotificationSettingsPage({super.key});

  @override
  _NotificationSettingsPageState createState() => _NotificationSettingsPageState();
}

class _NotificationSettingsPageState extends State<NotificationSettingsPage> {
  bool isMessageNotificationEnabled = true;
  bool isGroupNotificationEnabled = true;
  bool isInAppNotificationEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          SwitchListTile(
            title: const Text('Message Notifications'),
            value: isMessageNotificationEnabled,
            onChanged: (bool value) {
              setState(() {
                isMessageNotificationEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Group Notifications'),
            value: isGroupNotificationEnabled,
            onChanged: (bool value) {
              setState(() {
                isGroupNotificationEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('In-App Notifications'),
            value: isInAppNotificationEnabled,
            onChanged: (bool value) {
              setState(() {
                isInAppNotificationEnabled = value;
              });
            },
          ),
          const ListTile(
            title: Text('Notification Tone'),
          ),
          const ListTile(
            title: Text('Vibration'),
          ),
          const ListTile(
            title: Text('Popup Notification'),
          ),
          // Add more notification settings as needed
        ],
      ),
    );
  }
}

class ChatSettingsPage extends StatefulWidget {
  const ChatSettingsPage({super.key});

  @override
  _ChatSettingsPageState createState() => _ChatSettingsPageState();
}

class _ChatSettingsPageState extends State<ChatSettingsPage> {
  bool isChatBackupEnabled = true;
  bool isChatHistoryCleared = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          SwitchListTile(
            title: const Text('Chat Backup'),
            value: isChatBackupEnabled,
            onChanged: (bool value) {
              setState(() {
                isChatBackupEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Clear Chat History'),
            value: isChatHistoryCleared,
            onChanged: (bool value) {
              setState(() {
                isChatHistoryCleared = value;
              });
            },
          ),
          const ListTile(
            title: Text('Wallpaper'),
          ),
          const ListTile(
            title: Text('Font Size'),
          ),
          // Add more chat settings as needed
        ],
      ),
    );
  }
}

class DataStorageSettingsPage extends StatefulWidget {
  const DataStorageSettingsPage({super.key});

  @override
  _DataStorageSettingsPageState createState() => _DataStorageSettingsPageState();
}

class _DataStorageSettingsPageState extends State<DataStorageSettingsPage> {
  bool isDataSavingModeEnabled = false;
  bool isAutoDownloadMediaEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data and Storage Settings'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          SwitchListTile(
            title: const Text('Data Saving Mode'),
            value: isDataSavingModeEnabled,
            onChanged: (bool value) {
              setState(() {
                isDataSavingModeEnabled = value;
              });
            },
          ),
          SwitchListTile(
            title: const Text('Auto Download Media'),
            value: isAutoDownloadMediaEnabled,
            onChanged: (bool value) {
              setState(() {
                isAutoDownloadMediaEnabled = value;
              });
            },
          ),
          const ListTile(
            title: Text('Network Usage'),
          ),
          const ListTile(
            title: Text('Storage Usage'),
          ),
          // Add more data and storage settings as needed
        ],
      ),
    );
  }
}
