import 'package:dicoding_submission_app_irsan/model/football_news.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  final FootballNews news;
  const NewsPage({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: const Color(0xff003152),
        title:  const Text('News', style: TextStyle(
            color: Colors.white, fontFamily: 'PlusJakartaSans', fontSize: 18, fontWeight: FontWeight.bold
        ),),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
              children: [
                Image.asset(news.image),
                const SizedBox(height: 20,),
                Text(news.title, style: TextStyle(
                    color: Color(0xff003152),
                  fontFamily: 'PlusJakartaSans',
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.center,),
                const SizedBox(height: 12,),
                Padding(padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.calendar_today, color: Color(0xff003152),),
                        const SizedBox(width: 8,),
                        Text(news.date, style: TextStyle(
                            color: Color(0xff003152),
                          fontFamily: 'PlusJakartaSans',
                          fontWeight: FontWeight.normal,
                          fontSize: 16
                        ),),
                      ],
                    ),
                    const SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(Icons.access_time, color: Color(0xff003152),),
                        const SizedBox(width: 8,),
                        Text(news.time, style: TextStyle(
                            color: Color(0xff003152),
                            fontFamily: 'PlusJakartaSans',
                            fontWeight: FontWeight.normal,
                            fontSize: 16
                        ),),
                      ],
                    ),
                    const SizedBox(height: 8,),
                    Row(
                      children: [
                        Icon(Icons.person, color: Color(0xff003152),),
                        const SizedBox(width: 8,),
                        Text(news.contributor, style: TextStyle(
                            color: Color(0xff003152),
                            fontFamily: 'PlusJakartaSans',
                            fontWeight: FontWeight.normal,
                            fontSize: 16
                        ),),
                      ],
                    ),
                    const SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 16, 16),
                      child: Text(news.content, style: TextStyle(
                        color: Color(0xff003152),
                        fontSize: 16,
                        fontFamily: 'PlusJakartaSans',
                        fontWeight: FontWeight.normal
                      ),
                      textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),),
              ],
            )
        ),
      ),
    );
  }
}
