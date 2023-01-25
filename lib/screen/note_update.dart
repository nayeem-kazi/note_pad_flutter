import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:note_pad_flutter/screen/home_screen.dart';
import 'package:note_pad_flutter/style/app_style.dart';

class NoteEditorScreen extends StatefulWidget {
  const NoteEditorScreen({Key? key}) : super(key: key);

  @override
  State<NoteEditorScreen> createState() => _NoteEditorScreenState();
}

class _NoteEditorScreenState extends State<NoteEditorScreen> {
  int color_id = Random().nextInt(AppStyle.cardsColor.length);

  String date = DateTime.now().toString();
  TextEditingController titleController = TextEditingController();
  TextEditingController mainController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.cardsColor[color_id],
      appBar: AppBar(
        backgroundColor: AppStyle.cardsColor[color_id],
        elevation: 0.0,
        title: Text(
          "Add New Note",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Note Title"
              ),
              style: AppStyle.mainTitle,
            ),
            SizedBox(height: 8.0,),
            Text(
              date,
                style: AppStyle.dateTitle,
            ),
            SizedBox(height: 8.0,),
            Expanded(
              child: SingleChildScrollView(
                child: TextField(
                  controller: mainController,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Note Content"
                  ),
                  style: AppStyle.mainContent,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: AppStyle.accentColor,
        onPressed: (){
          FirebaseFirestore.instance.collection("notes").add(
              {"note_title": titleController.text,
                "creation_date": date,
                "note_content": mainController.text,
                "color_id": color_id,}
          ).then((value) {
            print(value){
              print(value.id);
            }
          }).catchError(
              (error) => print("Failed to add new note due to $error")
          );
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
        },
        label: Text("Save"),
        icon: Icon(Icons.save),
      ),
    );
  }
}
