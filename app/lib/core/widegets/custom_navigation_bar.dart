import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            spreadRadius: 1,
            offset: const Offset(0, -3),
          ),
        ],
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      
    );
  }
}
class InActive extends StatelessWidget {
  const InActive({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Active extends StatelessWidget {
  const Active({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
