import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/home/home_screen.dart';

import '../screens/main_screen.dart';

class ChooseScreen extends StatefulWidget {




  @override
  State<ChooseScreen> createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
          @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(' Выберите регион',
            style: TextStyle(
              fontSize: 20, color: Color(0xff444444), fontWeight: FontWeight.bold
          ),

    ), leading: IconButton(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MainScreen())
        );
      }, icon: Icon(FontAwesomeIcons.arrowLeft , color: Color(0xff444444),),
      ),
      ),


      body: Column(
        children: [
          Text('Выберите регион'),

        ],
      ),);}
}
class Entry{
  final String title;
  final List<Entry>
       children;
  Entry (this.title, [this.children = const <Entry> []]);
}

final List<Entry> data = <Entry>[
  Entry(
    'г.Бишкек',
    <Entry>[

      Entry('Октябрьский район'),
      Entry('Первомайский район'),
      Entry('Ленинский район'),
      Entry('Свердловский район')
        ]
          
      ),
  Entry('г.Ош',
    <Entry>[
      Entry('Октябрьский район'),
      Entry('Первомайский район'),
      Entry('Ленинский район'),
      Entry('Свердловский район')
    ]
  ),
  Entry('г.Баткен',
      <Entry>[
        Entry('Октябрьский район'),
        Entry('Первомайский район'),
        Entry('Ленинский район'),
        Entry('Свердловский район')
      ]
  ),
  Entry('г.Жалал Абад',
      <Entry>[
        Entry('Октябрьский район'),
        Entry('Первомайский район'),
        Entry('Ленинский район'),
        Entry('Свердловский район')
      ]
  ),
  Entry('г.Нарын',
      <Entry>[
        Entry('Октябрьский район'),
        Entry('Первомайский район'),
        Entry('Ленинский район'),
        Entry('Свердловский район')
      ]
  ),
  Entry('г.Нарын',
      <Entry>[
        Entry('Октябрьский район'),
        Entry('Первомайский район'),
        Entry('Ленинский район'),
        Entry('Свердловский район')
      ]
  ),
  Entry('г.Алай',
      <Entry>[
        Entry('Октябрьский район'),
        Entry('Первомайский район'),
        Entry('Ленинский район'),
        Entry('Свердловский район')
      ]
  ),
  Entry('г.Бакай Ата',
      <Entry>[
        Entry('Октябрьский район'),
        Entry('Первомайский район'),
        Entry('Ленинский район'),
        Entry('Свердловский район')
      ]
  ),

];
class EntryItem extends StatelessWidget {

  // bool selected = false;
  const EntryItem(this.entry);
 final Entry entry;

  Widget _buildTiles(Entry root) {

    if (root.children.isEmpty){
      return ListTile(
        title: Text(root.title),
      );
    }
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),

      children: root.children.map<Widget>(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _buildTiles(entry);
  }
}



















