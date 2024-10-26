import 'package:flutter/material.dart';
import 'package:weather_app/featuers/search/presentation/view/widgets/search_appbar.dart';
import 'package:weather_app/featuers/search/presentation/view/widgets/search_body.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const SearchAppbar(),
      ),
      body: const SearchBody(),
    );
  }
}
