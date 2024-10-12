import 'package:flutter/material.dart';

class ReviewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Reviews for .....',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xff001c30),
            fontFamily: "pacifico",
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return _buildCommentCard("User $index", "This is comment $index");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Write your comment',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      style: TextStyle(color: Colors.black),
                    ),

                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    },
                  backgroundColor: Color(0xff001c30),
                  child: Icon(Icons.send,color: Colors.white,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCommentCard(String userName, String comment) {
    return Card(
      color: Color(0xffDAFFFB),
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              userName,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                fontFamily: "K2D",
              ),
            ),
            SizedBox(height: 8),
            Text(
              comment,
              style: TextStyle(fontSize: 16,fontFamily: "K2D",),
            ),
          ],
        ),
      ),
    );
  }
}
