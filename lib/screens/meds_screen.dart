import 'package:flutter/material.dart';
import 'package:main_project/app_state/favorite.dart';
import 'package:main_project/models/medicines.dart';
import 'package:provider/provider.dart';

class MedsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VITAMINS LIST'),
        actions: [
          IconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/favorite');
              })
        ],
      ),
      body: MedicineList(),
    );
  }
}

class MedicineList extends StatefulWidget {
  @override
  _MedicineListState createState() => _MedicineListState();
}

class _MedicineListState extends State<MedicineList> {
  List<Drug> initDrugs() {
    return [
      Drug('Honey C (500mL)', 'P250-P300'),
      Drug('Centrum Silver Men (325 Tablets)', 'P1750-P2000'),
      Drug('Premire Green Tea (10 Sachets)', 'P250-P300'),
      Drug('FISH OIL (100 pcs)', 'P750-P900'),
      Drug('Vital C (100 capsules)', 'P800-P900'),
      Drug('Memo Plus Gold (100 tablets)', 'P430-P500'),
      Drug('Vita Plus (50 tablets)', 'P935-P1100')
    ];
  }

  List<bool> isFave = List.generate(7, (idx) => false);

  @override
  Widget build(BuildContext context) {
    List<Drug> drugslist = initDrugs();

    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/med_bg.jpg'), fit: BoxFit.fill)),
        child: ListView.separated(
          itemBuilder: (context, idx) {
            return ListTile(
              title: Text(
                drugslist[idx].name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(drugslist[idx].priceRange),
              trailing: IconButton(
                  icon:
                      isFave[idx] ? Icon(Icons.star) : Icon(Icons.star_border),
                  color: isFave[idx] ? Colors.orange : Colors.black,
                  onPressed: () {
                    Provider.of<FavoriteModel>(context)
                        .addDrugs(drugslist[idx]);
                    Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text(
                            '${drugslist[idx].name} is added to Favorites')));
                    setState(() => isFave[idx] = !isFave[idx]);
                  }),
            );
          },
          itemCount: drugslist.length,
          separatorBuilder: (context, idx) => Divider(),
        ));
  }
}
