import 'package:flutter/material.dart';

// stfull

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       body: SafeArea(child: _body),
     );
  }

  Widget get _body {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _header(),
          const SizedBox(height: 16),
          _searchBar(),
          const SizedBox(height: 16),
          _banner(),
          const SizedBox(height: 21),
          _iconRow(),
          const SizedBox(height: 16),
          _categorySection("សិល្បៈ និងការរចនា", [
            "assets/images/design1.png",
            "assets/images/design2.png",
            "assets/images/design3.png",
          ]),
          const SizedBox(height: 16),
          _categorySection("បច្ចេកវិទ្យាព័ត៌មាន", [
            "assets/images/it1.png",
            "assets/images/it2.png",
            "assets/images/it3.png",
          ]),
        ],
      ),
    );
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi ,Kay Kang",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text("Here is your activity today,"),
          ],
        ),
        Stack(
          children: [
            const Icon(Icons.notifications_none, size: 28),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  '10',
                  style: TextStyle(fontSize: 10, color: Colors.white),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  // TODO: Search Bar
  Widget _searchBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'ស្វែងរក...',
          border: InputBorder.none,
          icon: Icon(Icons.search),
        ),
      ),
    );
  }

  // TODO: School Banner
  Widget _banner() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(
            'assets/images/slide.png',
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
        ],
      ),
    );
  }

  Widget _iconRow() {
    // Array on icon
    final items = [
      {'icon': Icons.school, 'label': 'Faculty'},
      {'icon': Icons.book, 'label': 'Subject'},
      {'icon': Icons.person, 'label': 'Student'},
      {'icon': Icons.badge, 'label': 'Teacher'},
      {'icon': Icons.group, 'label': 'Alumni'},
    ];

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: items.map(
            (item) {
          return Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: const BoxDecoration(
                  color: Color(0xFFE3F2FD), // light blue background
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  item['icon'] as IconData,
                  size: 30,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                item['label'] as String,
                style: const TextStyle(fontSize: 12),
              ),
            ],
          );
        },
      ).toList(),
    );
  }


  Widget _categorySection(String title, List<String> images) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        SizedBox(
          height: 120,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            separatorBuilder: (context, _) => const SizedBox(width: 12),
            itemBuilder: (context, index) => Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    images[index],
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  top: 8,
                  right: 8,
                  child: Icon(Icons.star, color: Colors.red),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }




}
