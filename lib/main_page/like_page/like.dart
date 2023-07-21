import 'package:flutter/material.dart';

class LikePage extends StatelessWidget {
  const LikePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const SliverAppBar(
                expandedHeight: 195,
                shadowColor: Colors.transparent,
                // pinned: true,
                title: Text("Slivers"),
                leading: Icon(Icons.access_time_filled_outlined),
                // toolbarHeight: 0,
                flexibleSpace: FlexibleSpaceBar(
                  background: Material(
                    color: Colors.blueAccent,
                    child: Column(
                      children: [
                        SizedBox(
                          height: kToolbarHeight,
                        ),
                        SizedBox(
                          height: kToolbarHeight,
                        ),
                        Text('Sliver App Bar')
                      ],
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  color: Colors.red,
                  height: 200,
                ),
              ),
              SliverToBoxAdapter(),
              SliverToBoxAdapter(),
            ];
          },
          body: ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.amber,
                  child: Text('Lesson120'),
                );
              },
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemCount: 16)),
    );
  }
}