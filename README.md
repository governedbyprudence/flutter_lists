<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

## Introduction

The "flutter_lists" package offers a "UnorderedList" widget that simplifies the creation of unordered lists in Flutter applications. The widget allows developers to define a list of items and customize various aspects of the list, such as the bullet icon, bullet color, physics, and item builders.


## Features

1. Customization: Users can customize the appearance of the list by specifying the bullet icon and its color. Additionally, they can set the scroll physics to control the list's scrolling behavior.

2. Flexible Item Builders: Developers have the option to provide a custom item builder or a title builder for the list. The item builder allows users to create custom list items, while the title builder is used to determine the title string from each item.

3. Default Bullet Icon: If no bullet icon is provided, the widget uses a default bullet icon from the predefined list of icons.

4. Item Tap Functionality: The widget supports an onTap function that allows users to define actions when a list item is tapped. The onTap function can be provided globally for the entire list or individually for each item, depending on whether an item builder is used.

5. Error Handling: The package handles common errors effectively, such as checking if both the item builder and title builder properties are set simultaneously, and ensuring that a title builder is provided when the item type is not a String.

## Getting started

Step 1: Add the Package to pubspec.yaml
To begin, open your project's pubspec.yaml file and add the flutter_lists package as a dependency:

```
dependencies:
  flutter:
    sdk: flutter
  flutter_lists: ^1.0.0
```

Step 2: Install the Dependencies
After adding the dependency to your pubspec.yaml, save the file, and run the following command in your terminal to fetch and install the package:

```
flutter pub get
```

Step 3: Import the flutter_lists Package
In the Dart file where you want to use the unordered lists, import the flutter_lists package:

```
import 'package:flutter/material.dart';
import 'package:flutter_lists/flutter_lists.dart';
```
## Usage

# Basic Unordered List of Strings
```
List<String> groceries = ['Apples', 'Bananas', 'Milk', 'Bread'];

UnorderedList<String>(
  items: groceries,
);

```

# Custom Bullet Icon and Color

```
List<String> tasks = ['Read a book', 'Exercise', 'Cook a meal'];

UnorderedList<String>(
  items: tasks,
  bulletIcon: Icons.check_circle, // Custom bullet icon
  iconColor: Colors.green, // Custom bullet icon color
);

```
#Handling Item Taps
```
List<String> countries = ['USA', 'Canada', 'India', 'Australia'];

UnorderedList<String>(
  items: countries,
  onTap: (item) {
    print('Selected country: $item');
    // Implement your logic here when an item is tapped
  },
);

```
# Providing a Title Builder
```
List<String> fruits = ['Apple', 'Banana', 'Orange'];

UnorderedList<String>(
  items: fruits,
  titleBuilder: (fruit) => 'Fruit: $fruit',
);
```

# Custom Item Builder
```
List<int> numbers = [1, 2, 3, 4, 5];

UnorderedList<int>(
  items: numbers,
  itemBuilder: (number) {
    return ListTile(
      title: Text('Number: $number'),
    );
  },
);

```
# Usage with User defined datatypes

```
class Task {
  String title;
  String description;
  bool isCompleted;

  Task({
    required this.title,
    required this.description,
    this.isCompleted = false,
  });
}

List<Task> tasks = [
  Task(
    title: 'Buy groceries',
    description: 'Milk, Eggs, Bread',
  ),
  Task(
    title: 'Read a book',
    description: 'Science fiction novel',
    isCompleted: true,
  ),
  Task(
    title: 'Complete Flutter project',
    description: 'Add finishing touches',
  ),
];

UnorderedList<Task>(
  items: tasks,
  itemBuilder: (task) {
    return ListTile(
      title: Text(task.title),
      subtitle: Text(task.description),
      leading: task.isCompleted
          ? Icon(Icons.check_circle, color: Colors.green)
          : Icon(Icons.circle, color: Colors.grey),
      onTap: () {
        // Perform actions when a task is tapped
        print('Tapped task: ${task.title}');
      },
    );
  },
);

```

## Parameters and Methods

| Method/Parameter |                                   Description                                   |       Data Type      |   |
|:----------------:|:-------------------------------------------------------------------------------:|:--------------------:|---|
| UnorderedList    | Widget that creates an unordered list with the given items.                     | Widget               |   |
| items            | List representing the items to be displayed in the list.                        | List<T>              |   |
| bulletIcon       | (Optional) IconData for customizing the bullet icon.                            | IconData?            |   |
| iconColor        | (Optional) Color for customizing the bullet icon color.                         | Color?               |   |
| physics          | (Optional) ScrollPhysics for customizing the list's scroll behavior.            | ScrollPhysics?       |   |
| itemBuilder      | (Optional) Function that creates a custom widget for each item in the list.     | Widget Function(T?)? |   |
| titleBuilder     | (Optional) Function that provides a custom title for each item in the list.     | String Function(T?)? |   |
| onTap            | (Optional) Function to handle the tap event when an item in the list is tapped. | void Function(T?)?   |   |


## Icons that can be used

Here is a table of given icons that you may use as bullets.

An example of an icon given in the package
```
ListIcons.hollowCirle
```

Sure! Here's a markdown table with the icon name and the icon represented in text format:

| Icon Name         | Icon |
|-------------------|------|
| solidCircle       | •    |
| hollowCircle      | ◦    |
| solidSquare       | ▪    |
| hollowSquare      | ▫    |
| bulletPoint       | ‣    |
| arrow             | ➔    |
| checkmark         | ✓    |
| star              | ★    |
| heart             | ❤    |
| lightning         | ⚡    |
| musicNote         | ♫    |
| sun               | ☀    |
| moon              | ☽    |
| phone             | ☎    |
| email             | ✉    |
| scissors          | ✂    |
| book              | 📕   |
| clock             | 🕒   |
| globe             | 🌎   |
| gift              | 🎁   |
| plane             | ✈    |
| car               | 🚗   |
| bike              | 🚲   |
| anchor            | ⚓    |
| umbrella          | ☂    |
| cup               | ☕    |
| camera            | 📷   |
| film              | 🎞   |
| smartphone        | 📱   |
| laptop            | 💻   |
| graduationCap     | 🎓   |
| medal             | 🎖   |
| trophy            | 🏆   |
| basketball        | 🏀   |
| football          | 🏈   |
| tennis            | 🎾   |
| soccerBall        | ⚽   |
| baseball          | ⚾   |
| golf              | ⛳   |
| fishing           | 🎣   |
| bicycle           | 🚴   |
| swimmer           | 🏊   |
| ski               | 🎿   |
| moneyBag          | 💰   |
| creditCard        | 💳   |
| shoppingCart      | 🛒   |
| giftBox           | 🎝   |
| balloon           | 🎈   |
| partyPopper       | 🎉   |
| microphone        | 🎤   |
| headphones        | 🎧   |
| radio             | 📻   |
| television        | 📺   |
| gameController    | 🎮   |
| puzzle            | 🧩   |
| hammer            | 🔨   |
| wrench            | 🔧   |
| lightBulb         | 💡   |
| lock              | 🔒   |
| key               | 🔑   |
| umbrellaClosed    | ☂    |
| umbrellaOpen      | ☂☔  |
| recycle           | ♻    |
| map               | 🗺   |
| compass           | 🧭   |
| house             | 🏠   |
| building          | 🏢   |
| school            | 🏫   |
| hospital          | 🏥   |
| bank              | 🏦   |
| postOffice        | 🏣   |
| hotel             | 🏨   |
| airport           | 🚤   |
| bus               | 🚍   |
| train             | 🚆   |
| ship              | 🚢   |
| rocket            | 🚀   |
| fire              | 🔥   |
| waterDrop         | 💧   |
| leaf              | 🍂   |
| tree              | 🌳   |
| rainbow           | 🌈   |
| snowflake         | ❄   |
| clouds            | ☁   |
| thunderstorm      | ⛈   |
| sunnyClouds       | 🌤   |
| thermometer       | 🌡   |
| hot               | 🔥   |
| cold              | ❄   |
| flag              | 🚩   |
| mapPin            | 📍   |
| heartBeat         | 💓   |
| brain             | 🧠   |
| bone              | 🦴   |
| starOfDavid       | ✡   |
| yinYang           | ☯   |
| atom              | ⚛   |
| man               | 👨   |
| woman             | 👩   |
| baby              | 👶   |
| person            | 🧑   |
| people            | 👥   |
| family            | 👪   |
| handshake         | 👍   |
| thumbsUp          | 👍   |
| thumbsDown        | 👎   |
| peace             | ☮   |
| wheelchair        | ♿   |
| eye               | 👁   |
| ear               | 👂   |
| nose              | 👃   |
| mouth             | 👄   |
| hand              | ✋   |
| footprints        | 👣   |
| brainWave         | 🧠   |
| sleep             | 😴   |
| angel             | 👼   |
| ghost             | 👻   |
| skull             | 💀   |
| cat               | 😺   |
| dog               | 🐕   |
| bear              | 🐻   |
| elephant          | 🐘   |
| penguin           | 🐧   |
| fish              | 🐟   |

## Contributing

If you have suggestions for improving the package, please [open an issue or
pull request on GitHub](https://github.com/governedbyprudence/flutter_lists).

## Additional information

To be implemented
- Adding more icon support
- Adding OrderedList widget
