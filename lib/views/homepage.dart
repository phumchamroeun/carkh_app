

import 'package:carkh_app/models/post.dart';
import 'package:carkh_app/services/remote_service.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Welcome>?posts;
  var isLoaded = false;
   
   @override
  void initState() {
    // TODO: implement initState
    getData();
  }

  getData()async{
     posts = await RemoteService().getPosts();
    if(posts !=null){
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("apione"),
      ),
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: posts?.length,
            itemBuilder: (context, index){
              return Container(
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20)

                      ),
                    ),
                    SizedBox(width: 16,),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(posts![index].name,
                            maxLines: 2,overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                           Text(posts![index].email,
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(posts![index].body??'',
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
        ),
        replacement: const Center(child: CircularProgressIndicator(),),
      ),
    );
  }
}