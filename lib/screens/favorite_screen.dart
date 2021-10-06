import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:main_project/app_state/favorite.dart';
import 'package:main_project/models/medicines.dart';
import 'package:provider/provider.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAVORITES'),
      ),
      body: FavoriteBody(),
    );
  }
}

class FavoriteBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Drug> favoriteDrugs = Provider.of<FavoriteModel>(context).getdrugs;

    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/med_bg.jpg'), fit: BoxFit.fill)),
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: favoriteDrugs.length,
            itemBuilder: (context, idx) {
              return ListTile(
                title: Text(favoriteDrugs[idx].name),
                trailing: Text(favoriteDrugs[idx].priceRange),
              );
            },
          )
        ],
      ),
    );
  }
}
