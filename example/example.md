```
import 'package:flutter/material.dart';
import 'package:flutter_lists/flutter_lists.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Unordered List Example'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Basic Unordered List of Strings
              UnorderedList<String>(
                items: ['Apples', 'Bananas', 'Milk', 'Bread'],
              ),
              SizedBox(height: 20),
              // Custom Bullet Icon and Color
              UnorderedList<String>(
                items: ['Read a book', 'Exercise', 'Cook a meal'],
                bulletIcon: ListIcons.star, // Custom bullet icon
                iconColor: Colors.yellow, // Custom bullet icon color
              ),
              SizedBox(height: 20),
              // Handling Item Taps
              UnorderedList<String>(
                items: ['USA', 'Canada', 'India', 'Australia'],
                onTap: (item) {
                  print('Selected country: $item');
                  // Implement your logic here when a country is tapped
                },
              ),
              SizedBox(height: 20),
              // Custom Item Builder
              UnorderedList<int>(
                items: [1, 2, 3, 4, 5],
                itemBuilder: (number) {
                  return ListTile(
                    title: Text('Number: $number'),
                  );
                },
              ),
              SizedBox(height: 20),
              // Providing a Title Builder
              UnorderedList<String>(
                items: ['Apple', 'Banana', 'Orange'],
                titleBuilder: (fruit) => 'Fruit: $fruit',
              ),
              SizedBox(height: 20),
              // Usage with Model Class
              UnorderedList<Task>(
                items: [
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
                ],
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Model Class for Usage Example
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
```