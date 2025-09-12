import 'dart:convert' show jsonDecode, jsonEncode;

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List post = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    var response = await http.get(url);
    final xyz = await http.delete(
      url,
      headers: {"authentication": "jwt"},
      body: jsonEncode("pass any onject"),
    );
    var data = jsonDecode(response.body);
    setState(() {
      post = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: post.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: post.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(post[index]['title']),
                  subtitle: Text(post[index]['body']),
                );
              },
            ),
    );
  }
}

final Map<String, dynamic> xyz = {
  "name": "Aditya",
  "relationship": "boyfriend",
  "soon_to_be": "husband",
  "love": true,
  "money_snached": 1000,
};

class SampleWidget extends StatefulWidget {
  const SampleWidget({super.key});

  @override
  State<SampleWidget> createState() => _SampleWidgetState();
}

class _SampleWidgetState extends State<SampleWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didUpdateWidget(covariant SampleWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
