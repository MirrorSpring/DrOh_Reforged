import 'package:dr_oh_app/model/diabetes_message.dart';
import 'package:flutter/material.dart';

class DAnswer {
  List<Widget> dAnserList = const [
    FirstA(),
    SecondA(),
    ThirdA(),
    FourthA(),
    FifthA()
  ];
}

class FirstA extends StatefulWidget {
  const FirstA({super.key});

  @override
  State<FirstA> createState() => _FirstAState();
}

class _FirstAState extends State<FirstA> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '최근 30일 동안 일 외의 신체활동을 한 적이 있습니까?',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '예',
            ),
            Radio(
              value: "TRUE",
              groupValue: DiabetesMessage.physact,
              onChanged: (value) {
                setState(() {
                  DiabetesMessage.physact = value!;
                });
              },
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              '아니오',
            ),
            Radio(
              value: "FALSE",
              groupValue: DiabetesMessage.physact,
              onChanged: (value) {
                setState(() {
                  DiabetesMessage.physact = value!;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}

class SecondA extends StatefulWidget {
  const SecondA({super.key});

  @override
  State<SecondA> createState() => _SecondAState();
}

class _SecondAState extends State<SecondA> {
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
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '현재 본인의 전반적인 건강 생태가 어떻다고 생각하십니까?',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '안 좋음',
            ),
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
                DiabetesMessage.genhealth = value;
              },
            ),
            const Text(
              '좋음',
            ),
          ],
        ),
      ],
    );
  }
}

class ThirdA extends StatefulWidget {
  const ThirdA({super.key});

  @override
  State<ThirdA> createState() => _ThirdAState();
}

class _ThirdAState extends State<ThirdA> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '걷는 데에 심각한 어려움이 있습니까?',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '예',
            ),
            Radio(
              value: "TRUE",
              groupValue: DiabetesMessage.diffwalk,
              onChanged: (value) {
                setState(() {
                  DiabetesMessage.diffwalk = 'TRUE';
                });
              },
            ),
            const SizedBox(
              width: 20,
            ),
            const Text(
              '아니오',
            ),
            Radio(
              value: "FALSE",
              groupValue: DiabetesMessage.diffwalk,
              onChanged: (value) {
                setState(() {
                  DiabetesMessage.diffwalk = 'FALSE';
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}

class FourthA extends StatefulWidget {
  const FourthA({super.key});

  @override
  State<FourthA> createState() => _FourthAState();
}

class _FourthAState extends State<FourthA> {
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
    fourth = true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '진단받은 적 있는 질환을 체크해 주세요.',
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Checkbox(
              value: DiabetesMessage.highbp,
              onChanged: (value) {
                setState(() {
                  DiabetesMessage.highbp = value!;
                  if (value) {
                    fourth = false;
                  } else if (!DiabetesMessage.stroke &&
                      !DiabetesMessage.hdattack) {
                    fourth = true;
                  }
                });
              },
            ),
            const Text(
              '고혈압',
            ),
            Checkbox(
              value: DiabetesMessage.stroke,
              onChanged: (value) {
                setState(() {
                  DiabetesMessage.stroke = value!;
                  if (value) {
                    fourth = false;
                  } else if (!DiabetesMessage.highbp &&
                      !DiabetesMessage.hdattack) {
                    fourth = true;
                  }
                });
              },
            ),
            const Text(
              '뇌졸중',
            ),
            Checkbox(
              value: DiabetesMessage.hdattack,
              onChanged: (value) {
                setState(() {
                  DiabetesMessage.hdattack = value!;
                  if (value) {
                    fourth = false;
                  } else if (!DiabetesMessage.highbp &&
                      !DiabetesMessage.stroke) {
                    fourth = true;
                  }
                });
              },
            ),
            const Text(
              '심장 질환',
            ),
            Checkbox(
              value: fourth,
              onChanged: (value) {
                setState(() {
                  if (!fourth) {
                    DiabetesMessage.highbp = false;
                    DiabetesMessage.stroke = false;
                    DiabetesMessage.hdattack = false;
                    fourth = value!;
                  }
                });
              },
            ),
            const Text(
              '해당 없음',
            ),
          ],
        ),
      ],
    );
  }
}

class FifthA extends StatefulWidget {
  const FifthA({super.key});

  @override
  State<FifthA> createState() => _FifthAState();
}

class _FifthAState extends State<FifthA> {
  late TextEditingController dayCont;
  late double days;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dayCont = TextEditingController();
    days = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              '최근 30일 내에 부상이나 질병이 있었던 기간이 얼마나 됩니까?',
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                days.round().toString(),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  if (days > 0) {
                    days--;
                  }
                });
              },
              icon: const Icon(
                Icons.remove,
              ),
            ),
            Slider(
              value: days,
              divisions: 30,
              min: 0,
              max: 30,
              label: days.round().toString(),
              onChanged: (value) {
                setState(() {
                  days = value;
                });
                DiabetesMessage.physhealth = value;
              },
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  if (days < 30) {
                    days++;
                  }
                });
              },
              icon: const Icon(
                Icons.add,
              ),
            ),
          ],
        ),
        
      ],
    );
  }
}
