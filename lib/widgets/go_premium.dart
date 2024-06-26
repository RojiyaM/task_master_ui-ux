import 'package:flutter/material.dart';

class GoPremium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(20)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration:
                    BoxDecoration(color: Colors.grey, shape: BoxShape.circle),
                child: Icon(
                  Icons.star,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Go Premium',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Get unlimited access',
                    style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                  )
                ],
              )
            ],
          ),
        )
      ],
    ));
  }
}
