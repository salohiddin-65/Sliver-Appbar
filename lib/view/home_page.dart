import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            floating: true,
            snap: true,
            pinned: false,
            stretch: true,
            // toolbarHeight: 140.0 + kToolbarHeight,
            title: const Text("Sliver Appbar"),
            expandedHeight: MediaQuery.of(context).size.height * 0.3,
            flexibleSpace: FlexibleSpaceBar(
              background: PageView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://img.freepik.com/premium-photo/fantasy-landscape-abstract-sunset-mountains-background_798986-490.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Image.network(
                      "https://static.wixstatic.com/media/80f082_0e39fcf1e6c6465c9c92ded5dd48125a~mv2.gif",
                      fit: BoxFit.fill,
                    ),
                  );
                },
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((context, index) {
            return ListTile(
              title: Text("Hello $index"),
              subtitle: Text("Bye $index"),
            );
          }))
        ],
      ),
    );
  }
}
