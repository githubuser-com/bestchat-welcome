import 'package:flutter/material.dart';

void main() {
  runApp(BestchatApp());
}

class BestchatApp extends StatefulWidget {
  @override
  _BestchatAppState createState() => _BestchatAppState();
}

class _BestchatAppState extends State<BestchatApp> {
  bool? _isDarkMode;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bestchat',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _isDarkMode == null
          ? ThemeMode.system
          : (_isDarkMode! ? ThemeMode.dark : ThemeMode.light),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Bestchat'),
        ),
        body: _isDarkMode == null ? _buildThemeChoice() : _buildWelcome(),
      ),
    );
  }

  Widget _buildThemeChoice() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Choose your theme:', style: TextStyle(fontSize: 22)),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => setState(() => _isDarkMode = false),
            child: Text('Light Mode ☀️'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => setState(() => _isDarkMode = true),
            child: Text('Dark Mode 🌙'),
          ),
        ],
      ),
    );
  }

  Widget _buildWelcome() {
    return Center(
      child: Text(
        'Welcome to Bestchat!\\nGoing to Login...',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}import 'package:flutter/material.dart';

void main() {
  runApp(BestchatApp());
}

class BestchatApp extends StatefulWidget {
  @override
  _BestchatAppState createState() => _BestchatAppState();
}

class _BestchatAppState extends State<BestchatApp> {
  bool? _isDarkMode;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bestchat',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: _isDarkMode == null
          ? ThemeMode.system
          : (_isDarkMode! ? ThemeMode.dark : ThemeMode.light),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Bestchat'),
        ),
        body: _isDarkMode == null ? _buildThemeChoice() : _buildWelcome(),
      ),
    );
  }

  Widget _buildThemeChoice() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Choose your theme:', style: TextStyle(fontSize: 22)),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => setState(() => _isDarkMode = false),
            child: Text('Light Mode ☀️'),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => setState(() => _isDarkMode = true),
            child: Text('Dark Mode 🌙'),
          ),
        ],
      ),
    );
  }

  Widget _buildWelcome() {
    return Center(
      child: Text(
        'Welcome to Bestchat!\\nGoing to Login...',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
