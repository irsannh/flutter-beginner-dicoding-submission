import 'dart:ui';

import 'package:dicoding_submission_app_irsan/model/football_news.dart';
import 'package:dicoding_submission_app_irsan/page/news.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  final String name;
  const HomePage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff003152),
        title: Row(
          children: [
            const Icon(Icons.sports_soccer, color: Colors.white,),
            const SizedBox(width: 8,),
            const Text('Football News App', style: TextStyle(
              color: Colors.white, fontFamily: 'PlusJakartaSans', fontSize: 18, fontWeight: FontWeight.bold
            ),),
          ],
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.logout, color: Colors.white,))
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Welcome,', style: const TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),),
                const SizedBox(height: 8,),
                Text(name, style: const TextStyle(
                  fontFamily: 'PlusJakartaSans',
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),),
                const SizedBox(height: 16,),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => SizedBox(height: 8,),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: footballNewsList.length, itemBuilder: (context, index){
                    final news = footballNewsList[index];
                    return InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NewsPage(news: news)));
                      },
                      child: Card(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 1,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
                                  child: Container(
                                      height: 130,
                                      child: Image.asset(news.image, fit: BoxFit.cover,))),
                            ),
                            Expanded(
                                flex: 2,
                                child: Padding(padding: const EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(news.title, style: TextStyle(
                                      fontFamily: 'PlusJakartaSans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),),
                                    const SizedBox(height: 12,),
                                    Row(
                                      children: [
                                        Icon(Icons.calendar_today, color: Color(0xff003152),),
                                        const SizedBox(width: 8,),
                                        Text(news.date, style: TextStyle(
                                          fontFamily: 'PlusJakartaSans',
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12,
                                        ),)
                                      ],
                                    )
                                  ],
                                ),))
                          ],
                        ),
                      ),
                    );
                }),
              ],
            ),
          ),
        ),
      )
    );
  }
}
