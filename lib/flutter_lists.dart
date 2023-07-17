library flutter_lists;
import 'package:flutter/material.dart';


// List of predefined Icons

class ListIcons{  
  static const IconData Bullet = IconData(0x2022); // Icon for 
}
class UnorderedList<T> extends StatefulWidget {

  // List for items 
  
  List<T> items;

  // Color for bullets

  final Color? iconColor;

  // Icon for bullets

  IconData? bulletIcon;
  
  // Physics for scroll view

  ScrollPhysics? physics;

  //Custom Item Builder for the list
  
  final Widget Function(T?)? itemBuilder;

  // Custom Title builder for the list 

  final String Function(T?)? titleBuilder;
  
  // Function for on Tap event for each Tile
  
  final Function(T? item)? onTap;

  UnorderedList(
    {
    super.key,
    required this.items,
    this.bulletIcon,
    this.physics,
    this.iconColor,
    this.itemBuilder,
    this.onTap,
    this.titleBuilder
    }
    );

  @override
  State<UnorderedList<T>> createState() => _UnorderedListState<T>();
}

class _UnorderedListState<T> extends State<UnorderedList<T>> {
  
  // Variable to store the title based on the items given by user
  @override
  
  Widget build(BuildContext context) {

    //Item builder and title builder cannot be set at the same time. Throw error if done so.

    if(widget.itemBuilder!=null && widget.titleBuilder!=null){
      throw Exception("The itemBuilder and titleBuilder property cannot be set simultaneously. Please use either of them");
    }

    // If both Item builder and Title builder are absent and the given datatype is not String, error is thrown 
    
    if(widget.itemBuilder==null && widget.titleBuilder==null && T != String){
      throw Exception("The itemBuilder or titleBuilder property should be set for the given datatype");
    }

    return ListView.builder(

      itemCount: widget.items.length,

      physics: widget.physics,
        
      itemBuilder: 
      
      (context,index)
      {

      // Variable to determine the title string from single item. It will determine what the title should be
      late String title;

      // Variable to determine the bullet icon
      late IconData prefixIcon;

      // Check if there is an item builder or not
      if(widget.itemBuilder==null){
        if(widget.titleBuilder==null){
        // Check if items are in String or not
        // If the items are not in String and the user does not provide a title builder, the determination
        // of the title is not possible

        if (T != String){
          throw Exception("Please provide a title builder for the items or provide the items in String.");
        }

        title = widget.items[index].toString();

      }
      else{
        // Set the title to the String returned by the titlebuilder provided by the user

        title = widget.titleBuilder!(widget.items[index]);
      }
      }

      if(widget.bulletIcon==null){
        // Set default bullet icon
        prefixIcon = ListIcons.Bullet;
      }
      else{
        // set icon provided by the user
        prefixIcon = widget.bulletIcon!;
      }
      if(widget.itemBuilder==null){
         // Returning a list tile for every item
      return ListTile(
        // Setting the bullet icon to icon given by user, defaults to ListIcons.Bullet
        leading: Icon(prefixIcon,color: widget.iconColor,),

        // Setting the title to the title text that is determined previously
        title: Text(title),

        // Setting the ontap function provided by the user if any
        onTap: (){

          if(widget.onTap!=null){
              widget.onTap!(widget.items[index]);
          }

        },
      );
      }
      else {
        // Checking if ontap function given by user
        // if given, ontap function by user will take priority

        if(widget.onTap==null){
          return GestureDetector(
            onTap: (){
              if(widget.onTap!=null){
                widget.onTap!(widget.items[index]);
                  }
                },
        );
        }

        return widget.itemBuilder!(widget.items[index]);
      }
      });
  }
}