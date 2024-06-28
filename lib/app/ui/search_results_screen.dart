import 'package:flutter/material.dart';
import 'package:rick_and_morty/app/model/character.dart';
import 'package:rick_and_morty/app/widgets/character_widget.dart';

class SearchResultsScreen extends StatelessWidget {
  final List<Character> displayedCharacters;

  const SearchResultsScreen({
    Key? key,
    required this.displayedCharacters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search Results"),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: displayedCharacters
                        .map((character) => CharacterWidget(character: character))
                        .toList(),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
