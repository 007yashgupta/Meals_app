import 'package:flutter/material.dart';
import './screens/tabs_screen.dart';
import './screens/categories_Screen.dart';
import './screens/category_meals_screen.dart';
import './screens/meal_details_screen.dart';
import './screens/filter_screen.dart';

void main()
{
  runApp(MyApp());

}


class MyApp extends StatefulWidget
{

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

   



  @override

  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.amber,
          

          
        ),
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyLarge: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),

          ),
          bodyMedium:  TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),



        ),
        titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'RobotoCondensed',

          
        ),
        ),

      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/':(ctx) =>  TabsScreen(),
        CategoryMealsScreen.routeName: (ctx)=> CategoryMealsScreen(),
        MealDetailsScreen.routeName: (ctx)=> MealDetailsScreen(),
        FilterScreen.routeName: (ctx)=> FilterScreen(),


      },
      onGenerateRoute: (settings) {

        print(settings.arguments);
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx)=> CategoriesScreen());
      },


    );
  }
}

