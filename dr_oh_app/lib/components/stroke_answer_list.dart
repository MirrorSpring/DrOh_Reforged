import 'package:dr_oh_app/model/stroke_message.dart';
import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

// ------------------------------------------------------------------------
// Date: 2023-01-10, SangwonKim
// Desc: 뇌졸중 검사 설문답변 class
class StrokeAnswerList {
  List<Widget> strokeAnswerList = const [
    FirstAnswer(), // 1번 답변
    SecondAnswer(), // 2번 답변
    ThirdAnswer(), // 2번 답변
    ForthAnswer(), // 3번 답변
    FifthAnswer(), // 4번 답변
    SixAnswer(), // 5번 답변
  ];
}

// --- 답변 1~5번 ---

// ------------------------------------------------------------------------
// 1번 답변: 고혈압진단 여부
class FirstAnswer extends StatefulWidget {
  const FirstAnswer({super.key});

  @override
  State<FirstAnswer> createState() => _FirstAnswerState();
}

class _FirstAnswerState extends State<FirstAnswer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '고혈압 진단을 받은 적이 있습니까?',
              style: TextStyle(
                  fontSize: 17,
                ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              value: "1",
              groupValue: StrokeMessage.hypertension,
              onChanged: (value) {
                setState(() {
                  StrokeMessage.hypertension = value!;
                });
              },
            ),
            const Text('예'),
            const SizedBox(
              width: 20,
            ),
            Radio(
              value: "0",
              groupValue: StrokeMessage.hypertension,
              onChanged: (value) {
                setState(() {
                  StrokeMessage.hypertension = value!;
                });
              },
            ),
            const Text('아니오'),
          ],
        ),
      ],
    );
  }
}

// ------------------------------------------------------------------------
// 2번 답변: 심장병 여부
class SecondAnswer extends StatefulWidget {
  const SecondAnswer({super.key});

  @override
  State<SecondAnswer> createState() => _SecondAnswerState();
}

class _SecondAnswerState extends State<SecondAnswer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '심장병 진단을 받은 적이 있습니까?',
              style: TextStyle(
                  fontSize: 17,
                ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              value: "1",
              groupValue: StrokeMessage.heartDisease,
              onChanged: (value) {
                setState(() {
                  StrokeMessage.heartDisease = value!;
                });
              },
            ),
            const Text('예'),
            const SizedBox(
              width: 20,
            ),
            Radio(
              value: "0",
              groupValue: StrokeMessage.heartDisease,
              onChanged: (value) {
                setState(() {
                  StrokeMessage.heartDisease = value!;
                });
              },
            ),
            const Text('아니오'),
          ],
        ),
      ],
    );
  }
}

// ------------------------------------------------------------------------
// 3번 답변: 결혼 여부
class ThirdAnswer extends StatefulWidget {
  const ThirdAnswer({super.key});

  @override
  State<ThirdAnswer> createState() => _ThirdAnswerState();
}

class _ThirdAnswerState extends State<ThirdAnswer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '결혼한 적이 있습니까?',
              style: TextStyle(
                  fontSize: 17,
                ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              value: "1",
              groupValue: StrokeMessage.everMarried,
              onChanged: (value) {
                setState(() {
                  StrokeMessage.everMarried = value!;
                });
              },
            ),
            const Text('예'),
            const SizedBox(
              width: 20,
            ),
            Radio(
              value: "0",
              groupValue: StrokeMessage.everMarried,
              onChanged: (value) {
                setState(() {
                  StrokeMessage.everMarried = value!;
                });
              },
            ),
            const Text('아니오'),
          ],
        ),
      ],
    );
  }
}

// ------------------------------------------------------------------------
// 4번 답변: 직업군 타입
class ForthAnswer extends StatefulWidget {
  const ForthAnswer({super.key});

  @override
  State<ForthAnswer> createState() => _ForthAnswerState();
}

class _ForthAnswerState extends State<ForthAnswer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '어떤 직종에서 일하고 있습니까?',
              style: TextStyle(
                  fontSize: 17,
                ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              value: "0",
              groupValue: StrokeMessage.workType,
              onChanged: (value) {
                setState(() {
                  StrokeMessage.workType = value!;
                });
              },
            ),
            const Text('무직'),
            Radio(
              value: "1",
              groupValue: StrokeMessage.workType,
              onChanged: (value) {
                setState(() {
                  StrokeMessage.workType = value!;
                });
              },
            ),
            const Text('청소년'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              value: "2",
              groupValue: StrokeMessage.workType,
              onChanged: (value) {
                setState(() {
                  StrokeMessage.workType = value!;
                });
              },
            ),
            const Text('공무원'),
            Radio(
              value: "3",
              groupValue: StrokeMessage.workType,
              onChanged: (value) {
                setState(() {
                  StrokeMessage.workType = value!;
                });
              },
            ),
            const Text('자영업'),
            Radio(
              value: "4",
              groupValue: StrokeMessage.workType,
              onChanged: (value) {
                setState(() {
                  StrokeMessage.workType = value!;
                });
              },
            ),
            const Text('사기업'),
          ],
        ),
      ],
    );
  }
}

// ------------------------------------------------------------------------
// 5번 답변: 거주지역 타입
class FifthAnswer extends StatefulWidget {
  const FifthAnswer({super.key});

  @override
  State<FifthAnswer> createState() => _FifthAnswerState();
}

class _FifthAnswerState extends State<FifthAnswer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '거주 지역은 어디입니까?',
              style: TextStyle(
                  fontSize: 17,
                ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio(
              value: "1",
              groupValue: StrokeMessage.residenceType,
              onChanged: (value) {
                setState(() {
                  StrokeMessage.residenceType = value!;
                });
              },
            ),
            const Text('도시'),
            const SizedBox(
              width: 20,
            ),
            Radio(
              value: "0",
              groupValue: StrokeMessage.residenceType,
              onChanged: (value) {
                setState(() {
                  StrokeMessage.residenceType = value!;
                });
              },
            ),
            const Text('시골'),
            
          ],
        ),
      ],
    );
  }
}

// ------------------------------------------------------------------------
// 6번 답변: 흡연 여부
class SixAnswer extends StatefulWidget {
  const SixAnswer({super.key});

  @override
  State<SixAnswer> createState() => _SixAnswerState();
}

class _SixAnswerState extends State<SixAnswer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '흡연을 하십니까?',
              style: TextStyle(
                  fontSize: 17,
                ),
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('예'),
            Radio(
              value: "1",
              groupValue: StrokeMessage.smoke,
              onChanged: (value) {
                setState(() {
                  StrokeMessage.smoke = value!;
                });
              },
            ),
            const SizedBox(
              width: 20,
            ),
            const Text('아니오'),
            Radio(
              value: "0",
              groupValue: StrokeMessage.smoke,
              onChanged: (value) {
                setState(() {
                  StrokeMessage.smoke = value!;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}

// ------------------------------------------------------------------------
// ------------- Etc ---------------

// 슬라이더 답변 ex
class SliderAnswer extends StatefulWidget {
  const SliderAnswer({super.key});

  @override
  State<SliderAnswer> createState() => _SliderAnswerState();
}

class _SliderAnswerState extends State<SliderAnswer> {
  late double score;
  late RangeValues values;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    score = 1;
    values = const RangeValues(0, 6);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Slider(
          value: score,
          divisions: 4,
          min: 1,
          max: 5,
          label: score.toString(),
          onChanged: (value) {
            setState(() {
              score = value;
            });
          },
        )
      ],
    );
  }
}

// 체크박스 답변 ex
class CheckboxAnswer extends StatefulWidget {
  const CheckboxAnswer({super.key});
  @override
  State<CheckboxAnswer> createState() => _CheckboxAnswerState();
}

class _CheckboxAnswerState extends State<CheckboxAnswer> {
  late bool first;
  late bool second;
  late bool third;
  late bool fourth;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    first = false;
    second = false;
    third = false;
    fourth = false;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Checkbox(
          value: first,
          onChanged: (value) {
            setState(() {
              first = value!;
            });
          },
        ),
        Checkbox(
          value: second,
          onChanged: (value) {
            setState(() {
              second = value!;
            });
          },
        ),
        Checkbox(
          value: third,
          onChanged: (value) {
            setState(() {
              third = value!;
            });
          },
        ),
        Checkbox(
          value: fourth,
          onChanged: (value) {
            setState(() {
              first = false;
              second = false;
              third = false;
              fourth = value!;
            });
          },
        ),
      ],
    );
  }
}
