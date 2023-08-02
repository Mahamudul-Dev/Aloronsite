import 'package:flutter/material.dart';

class CollectionItemView extends StatelessWidget {
  const CollectionItemView(
      {super.key,
      required this.serial,
      required this.bSodossoName,
      required this.barirName,
      required this.sonchoyStatus,
      required this.kistiCollectionStatus,
      required this.sonchoy,
      required this.kisti,
      this.onPressed});

  final String serial;
  final String bSodossoName;
  final String barirName;
  final String sonchoyStatus;
  final String kistiCollectionStatus;
  final String sonchoy;
  final String kisti;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Serial = $serial'),
                      Text('B_Sodosso Name = $bSodossoName'),
                      Text('Barir Name = $barirName')
                    ],
                  )),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Sonchoy Status = $sonchoyStatus'),
                      Text('Kisti Status = $kistiCollectionStatus'),
                      Text('Sonchoy = $sonchoy'),
                      Text('Kisti = $kisti')
                    ],
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                  onPressed: onPressed,
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Theme.of(context).primaryColor)),
                  child: Text(
                    'Submit',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: Colors.white),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
