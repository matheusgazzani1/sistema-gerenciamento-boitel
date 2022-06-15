import 'package:flutter/material.dart';
import 'package:sistemagerenciamento/screen/dashboard/items_dashboard.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({ Key? key }) : super(key: key);
 ItemsDashBoard item1 = ItemsDashBoard(
   "Usuários", "Registro de Usuários", "assets/images/person.png");

   ItemsDashBoard item2 = ItemsDashBoard(
   "Criadores", "Registro de Criadores", "assets/images/person.png");
 
 ItemsDashBoard item3 = ItemsDashBoard(
   "Bovinos", "Registro de Bovinos", "assets/images/bovinos.png");

  ItemsDashBoard item4 = ItemsDashBoard(
   "Fazendas", "Registro de Fazendas", "assets/images/modalidades.png");

  @override
  Widget build(BuildContext context) {
    List<ItemsDashBoard> myList = [item1, item2, item3, item4];
    
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: myList.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200, 
          childAspectRatio: 1, 
          mainAxisSpacing: 10, 
          crossAxisSpacing: 10), 
          itemBuilder: (BuildContext ctx, index){
            return GestureDetector(
              onTap: () => callUnit(ctx, index),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepOrangeAccent,
                  borderRadius: BorderRadius.circular(14)
                ),
                child: Column(children: [
                  Image.asset(myList[index].image),
                  Text(myList[index].title),
                ],),
              ),
            );
          }),
      ),
    );
  }
  callUnit(BuildContext context, int index) {
    if (index == 0){
    Navigator.of(context).pushNamed("/unit");
    }
  }
}