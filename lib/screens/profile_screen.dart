import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundImage(),
          Column(
            children: [
              const SizedBox(height: 60),
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('lib/images/profile_pict.jpg'),
              ),
              const SizedBox(height: 20),
              Text(
                'Bala Putra',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'balaputra20@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
              const SizedBox(height: 20),
              InfoTile(
                  icon: Icons.calendar_today,
                  title: 'Tanggal Lahir',
                  value: '23 Februari 2003'),
              InfoTile(icon: Icons.star, title: 'Points', value: '255'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
               
                },
                child: const Text('Edit Profile'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("lib/images/dark_leaf.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const InfoTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 20),
          Text(
            '$title: ',
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
          Text(
            value,
            style: const TextStyle(
                fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
