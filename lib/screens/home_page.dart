import 'package:flutter/material.dart';

import '../services/auth_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final user = AuthService().currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Utama'),
        actions: [
          IconButton(
            onPressed: () async {
              await AuthService().logout();
            },
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.account_circle, size: 80),
            const SizedBox(height: 16),
            const Text('Selamat Datang!', style: TextStyle(fontSize: 24)),
            const SizedBox(height: 8),
            Text(user?.email ?? 'Pengguna'),
            const SizedBox(height: 24),
            const Text('Anda berhasil masuk ke aplikasi.'),
          ],
        ),
      ),
    );
  }
}
