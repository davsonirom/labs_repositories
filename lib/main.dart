import 'package:flutter/material.dart';
import 'package:labs_repositories/api_services.dart';

void main() {
  runApp(const MiaSoftware());
}

class MiaSoftware extends StatelessWidget {
  const MiaSoftware({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Usando API',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: _RepositoriosPage(),
    );
  }
}

class _RepositoriosPage extends StatefulWidget {
  @override
  State<_RepositoriosPage> createState() => __RepositoriosPageState();
}

class __RepositoriosPageState extends State<_RepositoriosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white.withAlpha(240),
        appBar: AppBar(
          title: const Text('Labs Repositórios'),
        ),
        body: _repositorioLista());
  }
}

Widget _repositorioLista() {
  return FutureBuilder(
      future: ApiServices.pegarRepositorios(),
      builder: (context, appData) {
        if (appData.connectionState == ConnectionState.done) {
          var repositorios = appData;
          return ListView.separated(
            itemCount: repositorios.data.length,
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
            itemBuilder: (context, index) {
              var repositorio = repositorios.data[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  dense: true,
                  title: Text(
                    repositorio!.name.toString(),
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(repositorio!.description.toString()),
                  leading: CircleAvatar(
                    radius: 48.0,
                    backgroundImage: NetworkImage(repositorio?.avatar),
                  ),
                ),
              );
            },
          );
        } else {
          return const Center(
            child: LinearProgressIndicator(),
          );
        }
      });
}
