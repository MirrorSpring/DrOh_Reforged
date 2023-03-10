import 'package:dr_oh_app/components/dementia_answer_final.dart';
import 'package:flutter/material.dart';

class DementiaAnswer {
  List<Widget> dementiaAnswer = const [
    ZList(),
    AList(),
    PList(),
    CList(),
    BList(),
    DList(),
    EList(),
    FList(),
    GList(),
    HList(),
    IList(),
    QList(),
    JList(),
    KList(),
    LList(),
    MList(),
    NList(),
    OList()
  ];
  List<Widget> dementiaAnswerTest = const[ZList(), AList(), DList(), HList(), JList(), QList(), KList(), LList()];

  List<String> dementiaText = const [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16',
    '17',
    '18'
  ];
}

class ZList extends StatefulWidget {
  const ZList({super.key});

  @override
  State<ZList> createState() => _ZListState();
}

class _ZListState extends State<ZList> {
  TextEditingController yearController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          TextField(
            controller: yearController,
            decoration: const InputDecoration(hintText: '1990'),
            keyboardType: TextInputType.number,
            onChanged: (value) {
              
              if(yearController.text=='2023'){
                DementiaAnswerFinal.yearCount = 2;
              }else{
                DementiaAnswerFinal.yearCount = 0;
              }
              print(DementiaAnswerFinal.yearCount);
            },
          
            
          )
        ],
      ),

    );
  }
}

class AList extends StatefulWidget {
  const AList({super.key});

  @override
  State<AList> createState() => _AListState();
}

class _AListState extends State<AList> {
  List<Widget> season = [const Text('봄'),const Text('여름'),const Text('가을'),const Text('겨울')];

  final List<bool> _selectedSeason = <bool>[true, false, false, false];


  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        ToggleButtons(
          onPressed: (index) {
            setState(() {
              // The button that is tapped is set to true, and the others to false.
                    for (int i = 0; i < _selectedSeason.length; i++) {
                      _selectedSeason[i] = i == index;
                    }

                    if(_selectedSeason == [false, false, false, true]){
                      DementiaAnswerFinal.seasoncount = 4;
                    }else{
                      DementiaAnswerFinal.seasoncount = 0;
                    }
                    
                    print(_selectedSeason);
            });
          },
          borderRadius: const BorderRadius.all(Radius.circular(8)),
               // selectedBorderColor: Colors.green[700],
                selectedColor: Colors.white,
                fillColor: Colors.green[200],
                color: Colors.green[400],
                constraints: const BoxConstraints(
                  minHeight: 40.0,
                  minWidth: 60.0,
                ),
          isSelected: _selectedSeason,
          children: season)
      ],

    );
  }
} //AList

class BList extends StatefulWidget {
  const BList({super.key});

  @override
  State<BList> createState() => _BListState();
}

class _BListState extends State<BList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('월요일')),
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('화요일')),
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('수요일')),
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('목요일')),
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('금요일')),
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('토요일')),
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('일요일')),
      ],
    );
  }
}

class CList extends StatefulWidget {
  const CList({super.key});

  @override
  State<CList> createState() => _CListState();
}

class _CListState extends State<CList> {
  TextEditingController dateController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dateController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          TextField(
            controller: dateController,
            decoration: const InputDecoration(hintText: '21'),
          )
        ],
      ),

    );
  }
}

class DList extends StatefulWidget {
  const DList({super.key});

  @override
  State<DList> createState() => _DListState();
}

class _DListState extends State<DList> {

  List<Widget> country = [const Text('대한민국'),const Text('미국'),const Text('일본')];

  final List<bool> _selectedcountry = <bool>[true, false, false];
  @override
  Widget build(BuildContext context) {
    return 
        
        Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        ToggleButtons(
          onPressed: (index) {
            setState(() {
              // The button that is tapped is set to true, and the others to false.
                    for (int i = 0; i < _selectedcountry.length; i++) {
                      _selectedcountry[i] = i == index;
                    }
                    if(_selectedcountry == [true, false, false]){
                      DementiaAnswerFinal.countrycount = 4;
                    }else{
                      DementiaAnswerFinal.countrycount = 0;
                    }
                   
                    print(_selectedcountry);
            });
          },
          borderRadius: const BorderRadius.all(Radius.circular(8)),
                //selectedBorderColor: Colors.blue[700],
                selectedColor: Colors.white,
                fillColor: Colors.red[200],
                color: Colors.red[400],
                constraints: const BoxConstraints(
                  minHeight: 40.0,
                  minWidth: 80.0,
                ),
          isSelected: _selectedcountry,
          children: country),
          
      ],

    
    );
  }
}

class EList extends StatefulWidget {
  const EList({super.key});

  @override
  State<EList> createState() => _EListState();
}

class _EListState extends State<EList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('서울특별시')),
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('인천시')),
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('경상북도')),
      ],
    );
  }
}

class FList extends StatefulWidget {
  const FList({super.key});

  @override
  State<FList> createState() => _FListState();
}

class _FListState extends State<FList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('대덕구')),
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('동구')),
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('중구')),
      ],
    );
  }
}

class GList extends StatefulWidget {
  const GList({super.key});

  @override
  State<GList> createState() => _GListState();
}

class _GListState extends State<GList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('신대동')),
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('황호동')),
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('신탄진동')),
      ],
    );
  }
}

class HList extends StatefulWidget {
  const HList({super.key});

  @override
  State<HList> createState() => _HListState();
}

class _HListState extends State<HList> {
  TextEditingController aProductController = TextEditingController();
  TextEditingController bProductController = TextEditingController();
  TextEditingController cProductController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    aProductController = TextEditingController();
    bProductController = TextEditingController();
    cProductController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 80,
            height: 40,
            child: TextField(
              
              controller: aProductController,
              decoration: const InputDecoration(
                // hintText: '단어를 입력하세요.',
                // enabledBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(20)),
                //   borderSide: BorderSide(color: Colors.lightGreen,)
                // )
              ),
              onChanged: (value) {
                if(aProductController.text == '연필'){
                  DementiaAnswerFinal.wordsCount = 4;
                }else{
                  DementiaAnswerFinal.wordsCount = 0;
                }
                  print(DementiaAnswerFinal.wordsCount);
              },
            ),
          ),
          
          SizedBox(
             width: 80,
            height: 40,
            child: TextField(
              controller: bProductController,
              decoration: const InputDecoration(
                // hintText: '단어를 입력하세요.',
                // enabledBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(20)),
                //   borderSide: BorderSide(color: Colors.lightGreen,)
                // )
              ),
              onChanged: (value) {
                if(bProductController.text == '모자'){
                  DementiaAnswerFinal.wordsCount = 10;
                }else{
                  DementiaAnswerFinal.wordsCount = 0;
                }
                print(DementiaAnswerFinal.wordsCount);
              },
            ),
          ),
          
          SizedBox(
             width: 80,
            height: 40,
            child: TextField(
              controller: cProductController,
              decoration: const InputDecoration(
                // hintText: '단어를 입력하세요.',
                // enabledBorder: OutlineInputBorder(
                //   borderRadius: BorderRadius.all(Radius.circular(20)),
                //   borderSide: BorderSide(color: Colors.lightGreen,)
                // )
              ),
              onChanged: (value) {
                if(cProductController.text == '나무'){
                  DementiaAnswerFinal.wordsCount = 10;
                }else{
                  DementiaAnswerFinal.wordsCount = 0;
                }
                print(DementiaAnswerFinal.wordsCount);
              },
            ),
          ),
        ],
      ),

    );
  }
}

class IList extends StatefulWidget {
  const IList({super.key});

  @override
  State<IList> createState() => _IListState();
}

class _IListState extends State<IList> {
  TextEditingController numController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    numController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 50,
      child: Row(
        children: [
          TextField(
            controller: numController,
          ),
        ],
      ),
    );
  }
}

class JList extends StatefulWidget {
  const JList({super.key});

  @override
  State<JList> createState() => _JListState();
}

class _JListState extends State<JList> {
  TextEditingController numController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    numController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(
            width: 200,
            height: 40,
            child: TextField(
              controller: numController,
              keyboardType: TextInputType.number,
            onChanged: (value) {
              
              if(numController.text=='93'){
                DementiaAnswerFinal.num1 = 4;
              }else{
                DementiaAnswerFinal.num1 = 0;
              }
              print(DementiaAnswerFinal.num1);
            },
            ),
          ),
        ],
      ),
    );
  }
}

class QList extends StatefulWidget {
  const QList({super.key});

  @override
  State<QList> createState() => _QListState();
}

class _QListState extends State<QList> {
  TextEditingController numController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    numController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(
            width: 200,
            height: 40,
            child: TextField(
              controller: numController,
              keyboardType: TextInputType.number,
            onChanged: (value) {
              
              if(numController.text=='86'){
                DementiaAnswerFinal.num2 = 4;
              }else{
                DementiaAnswerFinal.num2 = 0;
              }
              print(DementiaAnswerFinal.num2);
            },
            ),
          ),
        ],
      ),
    );
  }
}

class KList extends StatefulWidget {
  const KList({super.key});

  @override
  State<KList> createState() => _KListState();
}

class _KListState extends State<KList> {
  TextEditingController numController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    numController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(
            width: 200,
            height: 40,
            child: TextField(
              controller: numController,
              keyboardType: TextInputType.number,
            onChanged: (value) {
              
              if(numController.text=='79'){
                DementiaAnswerFinal.num3 = 4;
              }else{
                DementiaAnswerFinal.num3 = 0;
              }
              print(DementiaAnswerFinal.num3);
            },
            ),
          ),
        ],
      );
  }
}

class LList extends StatefulWidget {
  const LList({super.key});

  @override
  State<LList> createState() => _LListState();
}

class _LListState extends State<LList> {
  TextEditingController numController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    numController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          SizedBox(
            width: 200,
            height: 40,
            child: TextField(
              controller: numController,
              keyboardType: TextInputType.number,
            onChanged: (value) {
              
              if(numController.text=='72'){
                DementiaAnswerFinal.num4 = 4;
              }else{
                DementiaAnswerFinal.num4 = 0;
              }
              print(DementiaAnswerFinal.num4);
            },
            ),
          ),
        ],
      );
  }
}

class MList extends StatefulWidget {
  const MList({super.key});

  @override
  State<MList> createState() => _MListState();
}

class _MListState extends State<MList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [

        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('나무')),
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('모자')),
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('자동차')),
          ],
        ),

        Row(
          children: [

        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('연필')),
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('비행기')),
        ElevatedButton(
            onPressed: () {
              //
            },

            child: const Text('소나무')),
          ],
        )

      ],
    );
  }
}

class NList extends StatefulWidget {
  const NList({super.key});

  @override
  State<NList> createState() => _NListState();
}

class _NListState extends State<NList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('비행기')),
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('시계')),
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('나무')),
      ],
    );
  }
}

class OList extends StatefulWidget {
  const OList({super.key});

  @override
  State<OList> createState() => _OListState();
}

class _OListState extends State<OList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('소나무')),
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('볼펜')),
        ElevatedButton(
            onPressed: () {
              //
            },
            child: const Text('모자')),
      ],
    );
  }
}

class PList extends StatefulWidget {
  const PList({super.key});

  @override
  State<PList> createState() => _PListState();
}

class _PListState extends State<PList> {
  TextEditingController monthController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    monthController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          TextField(
            controller: monthController,
          )
        ],
      ),
    );
  }
}
