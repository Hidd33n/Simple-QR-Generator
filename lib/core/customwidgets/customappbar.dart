import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Center(
          child: Text(
        title,
        style: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.w300),
      )),
      elevation: 4.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(16.0),
        ),
      ),
      shadowColor: Colors.grey[400],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
