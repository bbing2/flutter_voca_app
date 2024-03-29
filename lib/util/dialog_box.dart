import 'package:flutter/material.dart';
import 'my_button.dart';

class DialogBox extends StatelessWidget {
  final  controller_q;
  final  controller_a;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox({
    super.key,
    required this.controller_q,
    required this.controller_a,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      backgroundColor: Colors.green,
      content: Container(
        color: Colors.green,
        height: 180,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: controller_q,
                onSubmitted: (_) {
                FocusScope.of(context).nextFocus();
              },
                maxLines: null,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "문제 입력",
                ),

              ),
              TextField(
                controller: controller_a,
                onSubmitted: (_) {
                  FocusScope.of(context).nextFocus();
                },
                maxLines: null,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "정답 입력"),
              ),
              SizedBox(height: 5,),
              //save + cancel buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  //save button
                  MyButton(
                      text: "저장",
                      onPressed: () {
                        if (controller_q.text.isEmpty ||
                            controller_a.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('단어 또는 뜻이 비어 있습니다.'),
                            ),
                          );
                        } else
                          onSave();
                      },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  //cancel button
                  MyButton(
                    text: "취소",
                    onPressed: onCancel,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
