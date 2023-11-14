import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/src/constants/color.dart';
import 'package:my_app/src/widgets/task_item.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My App Todo',
      home: MyMainApp(),
    ),
  );
}

class MyMainApp extends StatefulWidget {
  const MyMainApp({super.key});

  @override
  _StateMyMainApp createState() => new _StateMyMainApp();
}

class _StateMyMainApp extends State<MyMainApp> {
  late PersistentBottomSheetController _controller;
  GlobalKey<ScaffoldState> _key = GlobalKey();
  bool _openPopup = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: aliceBlue,
      appBar: AppBar(
        backgroundColor: aliceBlue,
        elevation: 0,
        toolbarHeight: 100.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Ghi chú',
              style: TextStyle(
                color: blackDefault,
                fontSize: 24,
                fontFamily: 'PoppinsSemiBold',
              ),
            ),
          ],
        ),
      ),
      body: Container(
        alignment: FractionalOffset.center,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            // Text field search
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: whiteDefault,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(16),
                  prefixIcon:
                      Icon(Icons.search, color: lightSalmonPink, size: 24),
                  prefixIconConstraints:
                      const BoxConstraints(maxHeight: 24, maxWidth: 24),
                  border: InputBorder.none,
                  hintText: 'Tìm kiếm',
                  hintStyle: TextStyle(fontSize: 16, color: lightSalmonPink),
                ),
              ),
            ),
            //List Task
            ListView(
              children: const [
                TaskItem(),
                TaskItem(),
                TaskItem(),
                TaskItem(),
                TaskItem(),
                TaskItem(),
                TaskItem(),
                TaskItem(),
                TaskItem(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 16, 24),
        child: SizedBox(
          width: 70,
          height: 70,
          child: FloatingActionButton(
            onPressed: openClosePopupEditAdd,
            backgroundColor: sunsetOrange,
            child: const Icon(
              Icons.add,
              size: 48,
            ),
          ),
        ),
      ),
    );
  }

  void openClosePopupEditAdd() {
    setState(() {
      _openPopup = !_openPopup;
    });
  }
}
