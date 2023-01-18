
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:note_pad_flutter/style/app_style.dart';

Widget noteCard(Function()? onTap, QuerySnapshot doc){
  return InkWell(
    onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          // color: AppStyle.cardsColor[doc['color_id']],
          borderRadius: BorderRadius.circular(8.0),

        ),
      ),
  );
}
