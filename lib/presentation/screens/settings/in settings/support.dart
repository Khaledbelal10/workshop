import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Support"),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "Name",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepOrange
                        )
                    )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextFormField(
                decoration: InputDecoration(
                    hintText: "E-mail",
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepOrange
                        )
                    )
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: TextFormField(
                maxLines: 6,
                decoration: InputDecoration(
                    hintText: "What's making you unhappy ?",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black
                        ),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepOrange
                        )
                    )
                ),
              ),
            ),

            SizedBox(
              height: 3.h,
            ),

            SizedBox(
              height: 50,
              width: 100,
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text("Submit",style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),)),
            )

          ],
        ),
      ),
    );
  }
}