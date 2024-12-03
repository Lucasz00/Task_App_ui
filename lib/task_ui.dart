// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_ui/progressBar.dart';

class TaskApp extends StatefulWidget {
  const TaskApp({super.key});

  @override
  State<TaskApp> createState() => _TaskAppState();
}

class _TaskAppState extends State<TaskApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          // ignore: prefer_const_constructors
          leading: Padding(
            padding: EdgeInsets.all(8),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrzoppIn5WjvUt4hpJrpslKZjRju9Aq5Ewbw&s'),
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ludwig Mises',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
              ),
              Text(
                'Austrian Economist',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey)),
              )
            ],
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(8),
              child: SizedBox(
                height: 35,
                width: 35,
                child: IconButton.filledTonal(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications,
                      size: 20,
                    )),
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            Card(
                margin: EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: 'Find your task',
                    hintStyle: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey)),
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                  ),
                )),
            ListTile(
              title: Text(
                'Categories',
                style: GoogleFonts.poppins(),
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: 200,
                    child: Card(
                      color: Colors.grey.withOpacity(0.1),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              height: 120,
                              width: double.infinity,
                              color: index % 2 == 0
                                  ? Colors.purple.withOpacity(0.8)
                                  : Colors.amber.withOpacity(0.8),
                              child: SizedBox(
                                  height: 19,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.cast,
                                          size: 15,
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          'No-cross Platform\nDesign',
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.bold)),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          '5 Projects',
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight:
                                                      FontWeight.normal)),
                                        )
                                      ],
                                    ),
                                  ))),
                          ProgressBar()
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            ListTile(
              title: Text(
                'My tasks',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold)),
              ),
              trailing: Text(
                'View more',
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold)),
              ),
            ),
            ListView.builder(
              physics: ScrollPhysics(),
              padding: EdgeInsets.all(5),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  clipBehavior: Clip.antiAlias,
                  child: ListTile(
                    leading: Container(
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: index % 2 == 0 ? Colors.purple : Colors.amber),
                    ),
                    title: Text(
                      'Design Template',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold)),
                    ),
                    subtitle: Text(
                      'Create a design template for your tasks',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.normal)),
                    ),
                  ),
                );
              },
            )
          ],
        ));
  }
}
