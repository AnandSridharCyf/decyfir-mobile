import 'package:decyfir/src/common/constants.dart';
import 'package:flutter/material.dart';

class FilterModal extends StatefulWidget {
  final BuildContext context;
  final Function setModalCategory;
  final List data;

  const FilterModal(this.context, this.setModalCategory, {super.key, required this.data});

  @override
  State<FilterModal> createState() => _FilterModalState();
}

class _FilterModalState extends State<FilterModal> {
  bool isStageOne = true;
  int categoryId = 0;
  String subCategoryAlias = '';

  Widget modalButton(int number) {
    return GestureDetector(
      onTap: (() => setState(() {
        //categoryId = number;
        //isStageOne = false;

        //Only Stage One Filter
        widget.setModalCategory(Constants.categories[number]['category'], '', Constants.categories[number]['apiAlias']);
        Navigator.pop(context);        
      })),
      child: ListTile(
        leading: CircleAvatar(radius: 30, backgroundColor: Colors.white, child: Image.asset('assets/images/${Constants.categories[number]['icon']}', fit: BoxFit.fitWidth)),
        dense: true,
        title: Text(Constants.categories[number]['category'])
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    if(isStageOne) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 15, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Please choose your category to filter'),
                ActionChip(
                  pressElevation: 2.0,
                  labelPadding: EdgeInsets.zero,
                  label: const Icon(Icons.cancel, size: 20),
                  onPressed: () {widget.setModalCategory('','',''); Navigator.pop(context);}
                )
                
              ],
            ),
          ),
          Wrap(
            children: [
              modalButton(0),
              modalButton(1),
              modalButton(2)
            ],
          ),
          const SizedBox(height: 10)
        ],
      );
    } else {
      return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(20, 15, 15, 5),
            child: const Text('Please choose your sub category to filter'),
          ),
          Wrap(
            children: [
              for(var e in Constants.categories[categoryId]['elements'])
                GestureDetector(
                  onTap: () => setState(() {
                    //subCategoryAlias = e['apiAlias'];
                    widget.setModalCategory(Constants.categories[categoryId]['category'], e['subCategory']);
                    Navigator.pop(context);
                  }),
                  child: ListTile(
                    leading: Text(e['abbr']),
                    title: Text(e['subCategory']),
                  ),
                )
            ],
          ),
          const SizedBox(height: 10)
        ],
      );
    }

  }
}