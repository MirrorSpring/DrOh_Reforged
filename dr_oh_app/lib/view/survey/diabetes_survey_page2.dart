import 'dart:io';

import 'package:dr_oh_app/components/diabets_answer_list.dart';
import 'package:dr_oh_app/model/diabetes_message.dart';
import 'package:dr_oh_app/repository/localdata/diabetes_predict.dart';
import 'package:dr_oh_app/view/survey/diabetes_result_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DiaSurvey extends StatelessWidget {
  final PageController pageCont;
  const DiaSurvey({super.key, required this.pageCont});

  @override
  Widget build(BuildContext context) {
    final PageController nextController = PageController(initialPage: 0);
    DAnswer dAnswer = DAnswer();
    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      controller: nextController,
      reverse: false,
      itemBuilder: (context, index) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                color: const Color(0xFFDDF7D5),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: dAnswer.dAnserList[index],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: index > 0
                        ? () {
                            nextController.animateToPage(
                              index - 1,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          }
                        : null,
                    icon: const Icon(Icons.arrow_back),
                    style: IconButton.styleFrom(fixedSize: Size(60, 60)),
                  ),
                  SizedBox(
                    width: 100,
                    child: Center(
                      child: Text(
                        '${index + 1}/5',
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: index < 4
                        ? () {
                            nextController.animateToPage(
                              index + 1,
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInOut,
                            );
                          }
                        : null,
                    icon: const Icon(Icons.arrow_forward),
                  ),
                ],
              ),
              Visibility(
                visible: index == 4,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () async {
                        _showLoading(context);
                        DiabetesPredict predict = DiabetesPredict();
                        String result = await predict.predict(
                            DiabetesMessage.age,
                            DiabetesMessage.height,
                            DiabetesMessage.weight,
                            DiabetesMessage.physact,
                            DiabetesMessage.diffwalk,
                            DiabetesMessage.genhealth,
                            DiabetesMessage.hdattack,
                            DiabetesMessage.highbp,
                            DiabetesMessage.stroke,
                            DiabetesMessage.physhealth.round());
                        sleep(const Duration(seconds: 3));
                        Get.off(DiabetesResultPage(result: result));
                      },
                      child: const Text(
                        '제출',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  _showLoading(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.transparent,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              CircularProgressIndicator.adaptive(
                backgroundColor: Color(0xFF5B9D46),
                semanticsValue: "인공지능이 당뇨병 위혐도를 예측 중입니다.",
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '인공지능이 당뇨병 위혐도를 예측 중입니다.',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
