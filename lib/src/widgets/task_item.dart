import 'package:flutter/material.dart';
import 'package:my_app/src/constants/color.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: whiteDefault,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        //cách đều chiều ngang
        crossAxisAlignment: CrossAxisAlignment.center,
        //cách đều chiều dọc
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                'Đi chạy bộ',
                style: TextStyle(
                    color: blackDefault,
                    fontSize: 16,
                    fontFamily: 'PoppinsRegular'),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                decoration: BoxDecoration(
                    color: mistyRose, borderRadius: BorderRadius.circular(10)),
                margin: const EdgeInsets.only(top: 4),
                child: Text(
                  'Thấp',
                  style: TextStyle(
                    color: lava,
                    fontSize: 16,
                    fontFamily: 'PoppinsSemiBold',
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    print('Clicked tasked done');
                  },
                  icon: Image.asset('assets/icons/ic_checked.png')),
              IconButton(
                onPressed: () {
                  print('Clicked tasked edit');
                },
                icon: Image.asset('assets/icons/ic_edit.png'),
              ),
              IconButton(
                  onPressed: () {
                    print('Clicked tasked delete');
                  },
                  icon: Image.asset('assets/icons/ic_delete.png')),
            ],
          ),
        ],
      ),
    );
  }
}
