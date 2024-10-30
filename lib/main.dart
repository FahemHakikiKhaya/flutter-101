import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      home: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: const Text('Fahem Khakiki Khaya'),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.contact_mail),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                      content: Text('Contact me at hakikihaya@gmail.com')),
                );
              },
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        ),
        body: Stack(
          fit: StackFit.expand,
          children: [
            // Main content with a dark overlay
            Container(
              color: Colors.black.withOpacity(0.9),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                        'assets/profile.jpg'), // Add your profile picture
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Fahem Khakiki Khaya',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Full Stack Web Developer',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.grey[300],
                        ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Level Kegantengan Fahem: $count',
                    style: const TextStyle(fontSize: 26, color: Colors.white),
                  ),
                  const Divider(
                      color: Colors.greenAccent, height: 30, thickness: 2),
                  const SizedBox(height: 8),
                  // About Section
                  const Text(
                    'About Me',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'I am a passionate full-stack web developer experienced in building efficient and scalable web applications.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.white70),
                  ),
                  const SizedBox(height: 16),
                  // Skills Section
                  const Text(
                    'Skills',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      const Chip(label: Text('JavaScript')),
                      const Chip(label: Text('TypeScript')),
                      const Chip(label: Text('React.js')),
                      const Chip(label: Text('Node.js')),
                      const Chip(label: Text('Express.js')),
                      const Chip(label: Text('MongoDB')),
                      const Chip(label: Text('Next.js')),
                      const Chip(label: Text('Nest.js')),
                      const Chip(label: Text('Prisma')),
                    ]
                        .map((chip) => Chip(
                              label: chip.label,
                              backgroundColor:
                                  Colors.greenAccent.withOpacity(0.2),
                              labelStyle: const TextStyle(color: Colors.black),
                            ))
                        .toList(),
                  ),
                  const SizedBox(height: 24),
                  // Button to Connect
                  ElevatedButton.icon(
                    icon: const Icon(Icons.contact_phone, color: Colors.white),
                    label: const Text('Connect with Me'),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content:
                                Text('Let’s connect! 📧 hakikihaya@gmail.com')),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      // primary: Colors.green,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
