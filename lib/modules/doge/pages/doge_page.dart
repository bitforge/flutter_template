import 'package:catfacts/catfacts.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class DogePage extends StatefulWidget {
  final BreedsApi breedsApi = BreedsApi(Dio(BaseOptions(
    baseUrl: 'https://catfact.ninja/',
  )));

  DogePage({
    super.key,
  });

  @override
  State<DogePage> createState() => _DogePageState();
}

class _DogePageState extends State<DogePage> {
  late Future<Response<List<Breed>>> _breedsFuture;

  @override
  void initState() {
    super.initState();
    _breedsFuture = widget.breedsApi.getBreeds();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cat Breeds'),
      ),
      body: FutureBuilder<Response<List<Breed>>>(
        future: _breedsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.error_outline,
                    color: Colors.red,
                    size: 60,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Error loading breeds: ${snapshot.error}',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _breedsFuture = widget.breedsApi.getBreeds();
                      });
                    },
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          }

          final breeds = snapshot.data?.data ?? [];

          if (breeds.isEmpty) {
            return const Center(
              child: Text('No breeds found'),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: breeds.length,
            itemBuilder: (context, index) {
              final breed = breeds[index];
              return Card(
                margin: const EdgeInsets.only(bottom: 16),
                child: ListTile(
                  title: Text(
                    breed.breed ?? 'No name available',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  subtitle: Text(breed.origin ?? 'No description available'),
                  onTap: () {
                    //add navigation to a detail page here
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Selected ${breed.breed}'),
                      ),
                    );
                  },
                ),
              );
            },
          );
        },
      ),
    );
  }
}
