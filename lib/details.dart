import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Details'),
      ),
      body: Center(
        child: Container(

          height: 500,
          child: Column(
            children: [
              Image.network(
                'https://th.bing.com/th/id/R.343b1e920642781f81911a979bcf1a34?rik=u1fmMUtss5Yq3g&pid=ImgRaw&r=0',
                height: 300,

              ),
              const Text('Theodosia',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

              const SizedBox(height: 15,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Icon(Icons.phone),
                      Text('Call'),
                    ],
                  ),

                  Column(
                    children: const [
                      Icon(Icons.message),
                      Text('Text'),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.video_call_outlined),
                      Text('Video call'),
                    ],
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
