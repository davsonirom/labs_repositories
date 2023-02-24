<!-- ![logo](https://user-images.githubusercontent.com/37612961/190645988-160f46df-da18-4fc8-84bb-e4b87a10ed7c.png) -->
<p align="center">
<img src=https://user-images.githubusercontent.com/37612961/208954235-32b1cf78-9f45-4b07-80bf-a14ef566587f.png />
</p>


## consumindo API
# Labs_repositories

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white) ![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white) ![Badge](https://img.shields.io/badge/cross-platform-%237159c1?style=for-the-badge&logo=ghost) ![Android](https://img.shields.io/badge/Android-3DDC84?style=for-the-badge&logo=android&logoColor=white) ![iOS](https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white) ![Windows](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white) ![Linux](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black) ![macOS](https://img.shields.io/badge/mac%20os-000000?style=for-the-badge&logo=macos&logoColor=F0F0F0)

![Safari](https://img.shields.io/badge/Safari-000000?style=for-the-badge&logo=Safari&logoColor=white) ![YouTube Music](https://img.shields.io/badge/YouTube_Music-FF0000?style=for-the-badge&logo=youtube-music&logoColor=white)

<!-- estado do estudo -->
[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

<!-- o que  pode ser feito com este aplicativo? -->
## <span style="color:rgb(99,202,227)">Tema do estudo dirigido</span>
- Chamada à API

<!-- Seu objetivo -->
>O objetivo primordial é promover a prática no consumo de dados a partir de API externas. O aplicativo consome uma API do GitHub e exibe uma lista de repositórios. O pacote chamado http sera usado para fazer chamadas HTTP.


## <span style="color:rgb(190,200,209)">Nota</span>
O aplicativo visa retornar uma lista com os repositórios do GitHub. Sendo assim primeiro vajamos quais dados da retornado pela API do Github. Ao acessar o endereço de enpoint do Github https://api.github.com/repositories, temos o seguinte resultado:

```json
[
  {
    "id": 1,
    "node_id": "MDEwOlJlcG9zaXRvcnkx",
    "name": "grit",
    "full_name": "mojombo/grit",
    "private": false,
    "owner": {
      "login": "mojombo",
      "id": 1,
      "node_id": "MDQ6VXNlcjE=",
      "avatar_url": "https://avatars.githubusercontent.com/u/1?v=4",
      "gravatar_id": "",
      "url": "https://api.github.com/users/mojombo",
      "html_url": "https://github.com/mojombo",
      "followers_url": "https://api.github.com/users/mojombo/followers",
      "following_url": "https://api.github.com/users/mojombo/following{/other_user}",
      "gists_url": "https://api.github.com/users/mojombo/gists{/gist_id}",
      "starred_url": "https://api.github.com/users/mojombo/starred{/owner}{/repo}",
      "subscriptions_url": "https://api.github.com/users/mojombo/subscriptions",
      "organizations_url": "https://api.github.com/users/mojombo/orgs",
      "repos_url": "https://api.github.com/users/mojombo/repos",
      "events_url": "https://api.github.com/users/mojombo/events{/privacy}",
      "received_events_url": "https://api.github.com/users/mojombo/received_events",
      "type": "User",
      "site_admin": false
    },
    "html_url": "https://github.com/mojombo/grit",
    "description": "**Grit is no longer maintained. Check out libgit2/rugged.** Grit gives you object oriented read/write access to Git repositories via Ruby.",
    "fork": false,
    "url": "https://api.github.com/repos/mojombo/grit",
    "forks_url": "https://api.github.com/repos/mojombo/grit/forks",
    "keys_url": "https://api.github.com/repos/mojombo/grit/keys{/key_id}",
    "collaborators_url": "https://api.github.com/repos/mojombo/grit/collaborators{/collaborator}",
    "teams_url": "https://api.github.com/repos/mojombo/grit/teams",
    "hooks_url": "https://api.github.com/repos/mojombo/grit/hooks",
    "issue_events_url": "https://api.github.com/repos/mojombo/grit/issues/events{/number}",
    "events_url": "https://api.github.com/repos/mojombo/grit/events",
    "assignees_url": "https://api.github.com/repos/mojombo/grit/assignees{/user}",
    "branches_url": "https://api.github.com/repos/mojombo/grit/branches{/branch}",
    "tags_url": "https://api.github.com/repos/mojombo/grit/tags",
    "blobs_url": "https://api.github.com/repos/mojombo/grit/git/blobs{/sha}",
    "git_tags_url": "https://api.github.com/repos/mojombo/grit/git/tags{/sha}",
    "git_refs_url": "https://api.github.com/repos/mojombo/grit/git/refs{/sha}",
    "trees_url": "https://api.github.com/repos/mojombo/grit/git/trees{/sha}",
    "statuses_url": "https://api.github.com/repos/mojombo/grit/statuses/{sha}",
    "languages_url": "https://api.github.com/repos/mojombo/grit/languages",
    "stargazers_url": "https://api.github.com/repos/mojombo/grit/stargazers",
    "contributors_url": "https://api.github.com/repos/mojombo/grit/contributors",
    "subscribers_url": "https://api.github.com/repos/mojombo/grit/subscribers",
    "subscription_url": "https://api.github.com/repos/mojombo/grit/subscription",
    "commits_url": "https://api.github.com/repos/mojombo/grit/commits{/sha}",
    "git_commits_url": "https://api.github.com/repos/mojombo/grit/git/commits{/sha}",
    "comments_url": "https://api.github.com/repos/mojombo/grit/comments{/number}",
    "issue_comment_url": "https://api.github.com/repos/mojombo/grit/issues/comments{/number}",
    "contents_url": "https://api.github.com/repos/mojombo/grit/contents/{+path}",
    "compare_url": "https://api.github.com/repos/mojombo/grit/compare/{base}...{head}",
    "merges_url": "https://api.github.com/repos/mojombo/grit/merges",
    "archive_url": "https://api.github.com/repos/mojombo/grit/{archive_format}{/ref}",
    "downloads_url": "https://api.github.com/repos/mojombo/grit/downloads",
    "issues_url": "https://api.github.com/repos/mojombo/grit/issues{/number}",
    "pulls_url": "https://api.github.com/repos/mojombo/grit/pulls{/number}",
    "milestones_url": "https://api.github.com/repos/mojombo/grit/milestones{/number}",
    "notifications_url": "https://api.github.com/repos/mojombo/grit/notifications{?since,all,participating}",
    "labels_url": "https://api.github.com/repos/mojombo/grit/labels{/name}",
    "releases_url": "https://api.github.com/repos/mojombo/grit/releases{/id}",
    "deployments_url": "https://api.github.com/repos/mojombo/grit/deployments"
  },
  ...
]
````
É importante verificar o retorno da API para termos de ante mãos quais são dos dados "campos" que podemos mostrar no app, alem de serem a referência direta quanto a criação do modelo de repositório.

Diante dos dados que recebemos da API o modelo de repositório essencialmente deve ter os seguintes atributos: name; user; avatar; description. Tais atributos foram tomados apenas para fim deste exemplo, o que descartou seu real valor de informação.

As chamadas Http junto a API serão realizadas com auxílio do pacote Http. Neste exemplo utilizou-se na seguinte versão ^0.13.5.

Em linhas gerais o app possui três estágios:
* 1 Conectar a API.
* 2 Receber os dados. 
* 3 Exibir os dados na tela.

Não foi tomado o cuidado sobre a estrutura do projeto em relação a organização de pastas, afinal trata-se de um exemplo simplório de consumo de API.

Segundo o raciocino dos estágios; precisamos de uma class que estabeleça a conectividade com a API, uma class que prepare os dados recebidos "modelo" e por fim uma class "widget" que exibas os dados no display.


![infografo](https://user-images.githubusercontent.com/37612961/221060811-f728ed66-5b85-41ee-b746-cb8f688c99de.png)

Após criar o projeto flutter, criamos a class Repositório (Modelo), em seguida a classe ApiService (Serviço) foi criada e por fim a classe RepositóriosLista (Widget).

É importante ressaltar que o ciclo de vida do app e assíncrono, existe um tempo de espera até a resposta da API, assim, somente após a resposta o widget responsável pode construir a tela, logo temos um Future.

### Serviço:
```dart
class ApiServices {
  static const urlBase = 'api.github.com';

  static Future<dynamic> pegarRepositorios() async {
    var url = Uri.http(urlBase, '/repositories');
    var response = await http.get(url);

    var repositorios = (json.decode(response.body))
        .map((item) => Repositorios.fromJson(item))
        .toList();

    return repositorios;
  }
}
```
### Modelo:
```dart
class Repositorios {
  String? name;
  String? user;
  String? avatar;
  String? description;
  Repositorios({
    required this.name,
    required this.user,
    required this.avatar,
    required this.description,
  });

  Repositorios.fromJson(Map<String, dynamic> json) {
    name = json['full_name'];
    user = json['owner']['login'];
    avatar = json['owner']['avatar_url'];
    description = json['description'];
  }
}
```
### Repositórios:
#### Widget da classe Repositorios"lista" que controi a lista de repositoios com o Future.
```dart
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
```
-------
## Instalação
Projeto desenvolvido com Flutter, partindo do pressuposto que já tenha o ambiente de desenvolvimento totalmente funcional.

Clone o repositório
```sh
gitclone ....
```
Após clonar o repositório não esquece do "flutter pub get" para baixar as pendências

### Dependências
| Pacote |  Sobre | Link |
| ------ | ------ | ------ |
| http |  Classes de alto nível que facilitam o consumo de recursos HTTP | https://pub.dev/packages/http |

### Compilação
Para liberação em produção:
```sh
flutter run --release
```

<!-- coisa que amamos -->
## Tecnologia
- [Dart] - Dart é uma linguagem desenvolvida pela Google
- [Flutter] - Flutter é um kit de desenvolvimento de interface de usuário, de código aberto, criado pela empresa Google em 2015.
- [vs Code] - O Visual Studio Code é um editor de código-fonte desenvolvido pela Microsoft para Windows, Linux e macOS.
- [Café] - O café é uma bebida produzida a partir dos grãos torrados do fruto do cafeeiro. É servido tradicionalmente quente, mas também pode ser consumido gelado. O café é um estimulante, por possuir cafeína — geralmente 80 a 140 mg para cada 207 ml, dependendo do método de preparação. Estudos mostram que pessoas que bebem quatro xícaras de café por dia têm um menor risco de morrer de um ataque cardíaco. Dia 13/04 é dia mundial do café.

<!-- venha para o lado dart da força -->

## Conheça o Flutter e cria apps lindos
Este é um ponto de partida para uma aplicação Flutter. Alguns recursos para você começar se este for seu primeiro encontro com o Flutter:
- [Laboratório: Escreva seu primeiro aplicativo Flutter](https://docs.flutter.dev/get-started/codelab)
- [Livro de receitas: amostras úteis do Flutter](https://docs.flutter.dev/cookbook)

Para obter ajuda para começar com o desenvolvimento do Flutter, consulte a [documentação online](https://docs.flutter.dev/), que oferece tutoriais, amostras, orientação sobre desenvolvimento para dispositivos móveis e uma referência completa de API.

----
# License
MIT

**Software Livre!**

[//]: # (Estes são links de referência usados ​​no corpo desta nota e são removidos quando o processador de remarcação faz seu trabalho. Não há necessidade de formatar bem porque não deve ser visto. Obrigado SO - http: //stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)

[comment]: <> (links das tecnologia)
   [Dart]: <https://dart.dev>
   [Flutter]: <https://flutter.dev>
   [vs Code]: <https://code.visualstudio.com>
   [café]: <https://pt.wikipedia.org/wiki/Café>
