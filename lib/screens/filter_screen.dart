import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget{


  static const routeName='filter-screen';

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFree= false;

  var _vegetarian = false;

  var _vegan = false;

  var _lactoseFree = false;


  Widget _buildSwitchListTile(
    String title,
    String description,
    var currentValue,
    Function(bool)? updateValue
  )
  {

    return SwitchListTile(

                  title: Text(title),
                  value: currentValue,
                  subtitle: Text(
                    description,

                  ),
                  onChanged: updateValue,
                 
                  );




  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text('filter'),
      ),
      drawer: MainDrawer(),
      body:Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Adjust your meal selections.',style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Expanded(
            child: ListView(

              children: <Widget>[

                _buildSwitchListTile(
                 'Gluten-Free',
                 'Only include gluten-Free meals.',
                  _glutenFree,
                   (newValue)
                   {
                    setState(() {

                      _glutenFree=newValue;
                      
                    });

                   }
                   ),
                   _buildSwitchListTile(
                 'Lactose-Free',
                 'Only include Lactose-Free meals.',
                  _lactoseFree,
                   (newValue)
                   {
                    setState(() {

                      _lactoseFree=newValue;
                      
                    });

                   }
                   ),
                   _buildSwitchListTile(
                 'Vegetarian',
                 'Only include vegetarian meals.',
                  _vegetarian,
                   (newValue)
                   {
                    setState(() {

                      _vegetarian=newValue;
                      
                    });

                   }
                   ),
                   _buildSwitchListTile(
                 'Vegan',
                 'Only include vegan meals.',
                  _vegan,
                   (newValue)
                   {
                    setState(() {

                      _vegan=newValue;
                      
                    });

                   }
                   ),



               


              ],

            ),
          )
        ],
      )
    );
  }
}