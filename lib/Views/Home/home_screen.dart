import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task2/Controller/data_item_controller.dart';
import 'package:task2/Views/Favorite/favorite_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  //List<int> selectedItem =[];

  @override
  Widget build(BuildContext context) {
    //final data = Provider.of<DataItemControllerProvider>(context,listen: false);
   print("object");
    return Scaffold(
      appBar: AppBar(title: const Text("State Management",
        ),
      actions:  [
        InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const FavoriteScreen()));
          },
            child: const Icon(Icons.favorite)),
        const SizedBox(width: 20,)
        ],),
      body: Column(
      children: [
        Expanded(
          child: Consumer<DataItemControllerProvider>(builder: (context, value, child) {
            return ListView.builder(
                itemCount: 100,
                itemBuilder: (context,index){
                  return  ListTile(
                      onTap: () {
                        if(value.selectedItem.contains(index)){
                          value.removeItemData(index);
                        }else{
                          value.addItemData(index);
                        }

                      },
                      title: Text("Item$index"),
                      trailing: value.selectedItem.contains(index) ? const Icon(Icons.favorite):const Icon(Icons.favorite_border));
                }
            );
          } ,)
        ),
      ],
      ),
    );
  }
}
