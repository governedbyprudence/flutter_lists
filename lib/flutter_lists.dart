library flutter_lists;
import 'package:flutter/material.dart';


// List of predefined Icons
class ListIcons {
  static const IconData solidCircle = IconData(0x2022); // •
  static const IconData hollowCircle = IconData(0x25E6); // ◦
  static const IconData solidSquare = IconData(0x25AA); // ▪
  static const IconData hollowSquare = IconData(0x25AB); // ▫
  static const IconData bulletPoint = IconData(0x2023); // ‣
  static const IconData arrow = IconData(0x2794); // ➔
  static const IconData checkmark = IconData(0x2713); // ✓
  static const IconData star = IconData(0x2605); // ★
  static const IconData heart = IconData(0x2764); // ❤
  static const IconData lightning = IconData(0x26A1); // ⚡
  static const IconData musicNote = IconData(0x266B); // ♫
  static const IconData sun = IconData(0x2600); // ☀
  static const IconData moon = IconData(0x263D); // ☽
  static const IconData phone = IconData(0x260E); // ☎
  static const IconData email = IconData(0x2709); // ✉
  static const IconData scissors = IconData(0x2702); // ✂
  static const IconData book = IconData(0x1F4D5); // 📕
  static const IconData clock = IconData(0x1F552); // 🕒
  static const IconData globe = IconData(0x1F30E); // 🌎
  static const IconData gift = IconData(0x1F381); // 🎁
  static const IconData plane = IconData(0x2708); // ✈
  static const IconData car = IconData(0x1F697); // 🚗
  static const IconData bike = IconData(0x1F6B2); // 🚲
  static const IconData anchor = IconData(0x2693); // ⚓
  static const IconData umbrella = IconData(0x2602); // ☂
  static const IconData cup = IconData(0x2615); // ☕
  static const IconData camera = IconData(0x1F4F7); // 📷
  static const IconData film = IconData(0x1F39E); // 🎞
  static const IconData smartphone = IconData(0x1F4F1); // 📱
  static const IconData laptop = IconData(0x1F4BB); // 💻
  static const IconData graduationCap = IconData(0x1F393); // 🎓
  static const IconData medal = IconData(0x1F3C5); // 🎖
  static const IconData trophy = IconData(0x1F3C6); // 🏆
  static const IconData basketball = IconData(0x1F3C0); // 🏀
  static const IconData football = IconData(0x1F3C8); // 🏈
  static const IconData tennis = IconData(0x1F3BE); // 🎾
  static const IconData soccerBall = IconData(0x26BD); // ⚽
  static const IconData baseball = IconData(0x26BE); // ⚾
  static const IconData golf = IconData(0x26F3); // ⛳
  static const IconData fishing = IconData(0x1F3A3); // 🎣
  static const IconData bicycle = IconData(0x1F6B4); // 🚴
  static const IconData swimmer = IconData(0x1F3CA); // 🏊
  static const IconData ski = IconData(0x1F3BF); // 🎿
  static const IconData moneyBag = IconData(0x1F4B0); // 💰
  static const IconData creditCard = IconData(0x1F4B3); // 💳
  static const IconData shoppingCart = IconData(0x1F6D2); // 🛒
  static const IconData giftBox = IconData(0x1F49D); // 🎝
  static const IconData balloon = IconData(0x1F388); // 🎈
  static const IconData partyPopper = IconData(0x1F389); // 🎉
  static const IconData microphone = IconData(0x1F3A4); // 🎤
  static const IconData headphones = IconData(0x1F3A7); // 🎧
  static const IconData radio = IconData(0x1F4FB); // 📻
  static const IconData television = IconData(0x1F4FA); // 📺
  static const IconData gameController = IconData(0x1F3AE); // 🎮
  static const IconData puzzle = IconData(0x1F9E9); // 🧩
  static const IconData hammer = IconData(0x1F528); // 🔨
  static const IconData wrench = IconData(0x1F527); // 🔧
  static const IconData lightBulb = IconData(0x1F4A1); // 💡
  static const IconData lock = IconData(0x1F512); // 🔒
  static const IconData key = IconData(0x1F511); // 🔑
  static const IconData umbrellaClosed = IconData(0x2602); // ☂
  static const IconData umbrellaOpen = IconData(0x2602); // ☂☔
  static const IconData recycle = IconData(0x267B); // ♻
  static const IconData map = IconData(0x1F5FA); // 🗺
  static const IconData compass = IconData(0x1F9ED); // 🧭
  static const IconData house = IconData(0x1F3E0); // 🏠
  static const IconData building = IconData(0x1F3E2); // 🏢
  static const IconData school = IconData(0x1F3EB); // 🏫
  static const IconData hospital = IconData(0x1F3E5); // 🏥
  static const IconData bank = IconData(0x1F3E6); // 🏦
  static const IconData postOffice = IconData(0x1F3E3); // 🏣
  static const IconData hotel = IconData(0x1F3E8); // 🏨
  static const IconData airport = IconData(0x1F6A4); // 🚤
  static const IconData bus = IconData(0x1F68C); // 🚍
  static const IconData train = IconData(0x1F686); // 🚆
  static const IconData ship = IconData(0x1F6A2); // 🚢
  static const IconData rocket = IconData(0x1F680); // 🚀
  static const IconData fire = IconData(0x1F525); // 🔥
  static const IconData waterDrop = IconData(0x1F4A7); // 💧
  static const IconData leaf = IconData(0x1F342); // 🍂
  static const IconData tree = IconData(0x1F333); // 🌳
  static const IconData rainbow = IconData(0x1F308); // 🌈
  static const IconData snowflake = IconData(0x2744); // ❄
  static const IconData clouds = IconData(0x2601); // ☁
  static const IconData thunderstorm = IconData(0x26C8); // ⛈
  static const IconData sunnyClouds = IconData(0x26C5); // 🌤
  static const IconData thermometer = IconData(0x1F321); // 🌡
  static const IconData hot = IconData(0x1F525); // 🔥
  static const IconData cold = IconData(0x2744); // ❄
  static const IconData flag = IconData(0x1F6A9); // 🚩
  static const IconData mapPin = IconData(0x1F4CD); // 📍
  static const IconData heartBeat = IconData(0x1F493); // 💓
  static const IconData brain = IconData(0x1F9E0); // 🧠
  static const IconData bone = IconData(0x1F9B4); // 🦴
  static const IconData starOfDavid = IconData(0x2721); // ✡
  static const IconData yinYang = IconData(0x262F); // ☯
  static const IconData atom = IconData(0x269B); // ⚛
  static const IconData man = IconData(0x1F468); // 👨
  static const IconData woman = IconData(0x1F469); // 👩
  static const IconData baby = IconData(0x1F476); // 👶
  static const IconData person = IconData(0x1F9D1); // 🧑
  static const IconData people = IconData(0x1F465); // 👥
  static const IconData family = IconData(0x1F46A); // 👪
  static const IconData handshake = IconData(0x1F91D); // 👍
  static const IconData thumbsUp = IconData(0x1F44D); // 👍
  static const IconData thumbsDown = IconData(0x1F44E); // 👎
  static const IconData peace = IconData(0x262E); // ☮
  static const IconData wheelchair = IconData(0x267F); // ♿
  static const IconData eye = IconData(0x1F441); // 👁
  static const IconData ear = IconData(0x1F442); // 👂
  static const IconData nose = IconData(0x1F443); // 👃
  static const IconData mouth = IconData(0x1F444); // 👄
  static const IconData hand = IconData(0x270B); // ✋
  static const IconData footprints = IconData(0x1F463); // 👣
  static const IconData brainWave = IconData(0x1F9E0); // 🧠
  static const IconData sleep = IconData(0x1F634); // 😴
  static const IconData angel = IconData(0x1F47C); // 👼
  static const IconData ghost = IconData(0x1F47B); // 👻
  static const IconData skull = IconData(0x1F480); // 💀
  static const IconData cat = IconData(0x1F63A); // 😺
  static const IconData dog = IconData(0x1F415); // 🐕
  static const IconData bear = IconData(0x1F43B); // 🐻
  static const IconData elephant = IconData(0x1F418); // 🐘
  static const IconData penguin = IconData(0x1F427); // 🐧
  static const IconData fish = IconData(0x1F41F); // 🐟
}

class UnorderedList<T> extends StatefulWidget {

  // List for items 
  
  final List<T> items;

  // Color for bullets

  final Color? iconColor;

  // Icon for bullets

  final IconData? bulletIcon;
  
  // Physics for scroll view

  final ScrollPhysics? physics;

  //Custom Item Builder for the list
  
  final Widget Function(T?)? itemBuilder;

  // Custom Title builder for the list 

  final String Function(T?)? titleBuilder;
  
  // Function for on Tap event for each Tile
  
  final Function(T? item)? onTap;

  const UnorderedList(
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
        prefixIcon = ListIcons.solidCircle;
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