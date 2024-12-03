import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgressBar extends StatelessWidget {
  const ProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Progress',
                  style: GoogleFonts.poppins(),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Text(
                  '50%',
                  style: GoogleFonts.poppins(),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.all(8),
            child: LinearProgressIndicator(
              backgroundColor: Colors.white.withOpacity(0.5),
              value: 0.5,
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          )
        ],
      ),
    );
  }
}
