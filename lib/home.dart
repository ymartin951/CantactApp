import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';

import 'details.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'My Contacts',
          style: TextStyle(
              fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
        ),
        actions: const  [
          Center(
              child: Padding(
            padding:  EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://th.bing.com/th/id/R.343b1e920642781f81911a979bcf1a34?rik=u1fmMUtss5Yq3g&pid=ImgRaw&r=0'),
              backgroundColor: Colors.amber,
            ),
          ))
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(78),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  hintText: "Search my contact",
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  )),
            ),
          ),
        ),
      ),
      body: ListView(
        padding: const  EdgeInsets.all(16),
        children: [
          const Text('Recent'),
          ListView.separated(
            shrinkWrap: true,
              itemBuilder: (context, index) {
                return  ListTile(
                  onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (c){
                     return DetailsPage();
                   }));
                  },
                  title: const Text('My name'),
                  subtitle: const Text('0542224630'),
                  trailing: const IconButton(onPressed:null,icon: Icon(Icons.menu),),
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage('https://th.bing.com/th/id/R.343b1e920642781f81911a979bcf1a34?rik=u1fmMUtss5Yq3g&pid=ImgRaw&r=0'),
                    backgroundColor: Colors.redAccent,
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider(
                  indent: 5,
                  thickness: 2,
                );
              },
              itemCount: 10),

        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: const Icon(Icons.add),),
    );
  }
}
