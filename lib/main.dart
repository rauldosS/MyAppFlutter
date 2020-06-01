import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Ciências da Computação'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;
  // String _qualquerCoisa = 'b';
  int _currentPage = 0;
  var _pages = [
    Text(''),
    Text(''),
    Text('')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.computer),
                      title: Text('O curso'),
                      subtitle: Text('Apresentação da graduação.'),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('VER MAIS'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => AboutCourseRoute())
                            );
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.library_books),
                      title: Text('Disciplinas'),
                      subtitle: Text('Confira a matriz curricular do seu curso.'),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('VER MAIS'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SubjectsRoute())
                            );
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.group),
                      title: Text('Professores'),
                      subtitle: Text('Professores do curso.'),
                    ),
                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('VER MAIS'),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => TeachersRoute())
                            );
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Center(
              child: _pages.elementAt(_currentPage),
              //   style: Theme.of(context).textTheme.headline4,
            ),
            // Text(
            //   'You have pushed the button this many times:',
            // ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headline4,
            // ),
    
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     // Icon(Icons.cancel),
            //     FlatButton(
            //       child: Icon(Icons.access_alarm),
            //       onPressed: () => _setQualquerCoisa("a"),
            //     ),
            //     Text(
            //       '$_qualquerCoisa'
            //     )
            //   ],
            // )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Toca Raul',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods. 
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.computer),
      //       title: Text("Início"),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.import_contacts),
      //       title: Text("Disciplinas")
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.group),
      //       title: Text("Professores")
      //     )
      //   ],
      //   currentIndex: _currentPage,
      //   onTap: (int toIndex) {
      //     setState((){ _currentPage = toIndex; });
      //   },
      // ),
    );
  }
}

class AboutCourseRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ciências da Computação'),
      ),
      body:
        Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center( child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Image(image: NetworkImage('https://miro.medium.com/max/2625/1*c34daw_rg89UAh4uFCZ96w.jpeg')),
            )),
            Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'O curso possibilita ao aluno o contato direto com o que há de mais moderno quando o assunto é informática.  O profissional formado desenvolve softwares e aplicativos, cria soluções empresariais, gerencia equipes de trabalho, presta assistência aos usuários e assegura o funcionamento de redes de computadores e internet.  O aluno formado na Unoesc ainda sai da universidade apto para trabalhar com desenvolvimento web, jogos e sistemas virtuais.',
                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
              )
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(children: <Widget>[
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.person_outline),
                          title: Text('COORDENADOR(A)'),
                          subtitle: Text('Fabiano de Oliveira Wonzoski'),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.person_outline),
                          title: Text('DURAÇÃO'),
                          subtitle: Text('8 fases'),
                        ),
                      ],
                    ),
                  ),
                ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SubjectsRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Matriz curricular"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(image: NetworkImage('https://i.ibb.co/cNJqXTS/01.png')),
            Image(image: NetworkImage('https://i.ibb.co/xHS8czL/02.png')),
            Image(image: NetworkImage('https://i.ibb.co/L8kmDLK/03.png')),
            Image(image: NetworkImage('https://i.ibb.co/Z6qxQqH/04.png')),
            Image(image: NetworkImage('https://i.ibb.co/ft8yyg0/05.png')),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar'),
            ),
          ]
        ),
      ),
    );
  }
}

class TeachersRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {  
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("Professores"),
      ),
      body: 
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center( 
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Image(image: NetworkImage('https://i.ibb.co/80WyWLb/06.png')),
              )
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'PERÍODO NOTURNO',
                  style: TextStyle(fontWeight: FontWeight.w100, fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
              )
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(children: <Widget>[
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.person_outline),
                          title: Text('Fabiano de Oliveira Wonzoski'),
                          subtitle: Text('Mestre e Coordenador.'),
                        ),
                        FlatButton(
                          child: const Text('VER DETALHES'),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.person_outline),
                          title: Text('Tiago Heineck'),
                          subtitle: Text('Mestre em Ciência da Computação.'),
                        ),
                        FlatButton(
                          child: const Text('VER DETALHES'),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.person_outline),
                          title: Text('Herculano De Biasi'),
                          subtitle: Text('Mestre em Ciências da Computação.'),
                        ),
                        FlatButton(
                          child: const Text('VER DETALHES'),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.person_outline),
                          title: Text('Mauricio Roberto Gonzatto'),
                          subtitle: Text('Professor na UNOESC, Videira.'),
                        ),
                        FlatButton(
                          child: const Text('VER DETALHES'),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Voltar'),
                  ),
                ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}