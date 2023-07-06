import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;
import 'package:fourth_api/models/ProductModel.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  Future<ProductModel> getApi() async {
    final response = await http.get(Uri.parse('https://webhook.site/3e33ed31-f4c2-46a0-86c0-c93d60f8728e'));
    var data=jsonDecode(response.body.toString());
    if(response.statusCode == 200){
      return ProductModel.fromJson(data);

    }
    else
      {
        return ProductModel.fromJson(data);

      }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fourth Api App'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
              future: getApi(),
              builder: (context,snapshot){
                if(snapshot.hasData){
                  return ListView.builder(
                    itemCount: snapshot.data!.data!.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              title: Text(snapshot.data!.data![index].shop!.name.toString()),
                              subtitle: Text(snapshot.data!.data![index].shop!.shopemail.toString()),
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(snapshot.data!.data![index].shop!.image.toString()),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                height: MediaQuery.of(context).size.height*.3,
                                width: MediaQuery.of(context).size.width*1,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: snapshot.data!.data![index].images.length,
                                    itemBuilder: (context,position){
                                  return Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      height: MediaQuery.of(context).size.height*.25,
                                      width: MediaQuery.of(context).size.width*.5,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: NetworkImage(snapshot.data!.data![index].images![position].url.toString())
                                        )
                                      ),
                                    ),
                                  );
                                }),
                              ),

                            ),
                            Icon(snapshot.data!.data![index].inWishlist==true?Icons.favorite:Icons.favorite_outline)

                          ],
                        ),
                      );
                    },
                  );
                }
                else {
                  return Center(
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: CircularProgressIndicator()
                      ,
                    ),
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}