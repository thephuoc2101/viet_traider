import 'package:collection/collection.dart' show IterableExtension;
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

enum LetterAlignment { left, right }

class AlphabetScrollView extends StatefulWidget {
  AlphabetScrollView(
      {Key? key,
      required this.list,
      this.alignment = LetterAlignment.right,
      this.isAlphabetsFiltered = true,
      this.overlayWidget,
      this.textStyle,
      required this.itemBuilder})
      : super(key: key);

  final List<String> list;

  final LetterAlignment alignment;

  final bool isAlphabetsFiltered;

  final Widget Function(String)? overlayWidget;

  final TextStyle? textStyle;

  Widget Function(BuildContext, int, String) itemBuilder;

  @override
  _AlphabetScrollViewState createState() => _AlphabetScrollViewState();
}

class _AlphabetScrollViewState extends State<AlphabetScrollView> {
  final List<String> alphabets = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
  ];

  void init() {
    widget.list.sort((x, y) => x.toLowerCase().compareTo(y.toLowerCase()));
    _list = widget.list;
    setState(() {});

    if (widget.isAlphabetsFiltered) {
      List<String> temp = [];
      alphabets.forEach((letter) {
        String? firstAlphabetElement = _list.firstWhereOrNull(
            (item) => item.toLowerCase().startsWith(letter.toLowerCase()));
        if (firstAlphabetElement != null) {
          temp.add(letter);
        }
      });
      _filteredAlphabets = temp;
    } else {
      _filteredAlphabets = alphabets;
    }
    calculateFirstIndex();
    setState(() {});
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  ItemScrollController _scrollController = ItemScrollController();

  final _selectedIndexNotifier = ValueNotifier<int>(0);
  final positionNotifer = ValueNotifier<Offset>(Offset(0, 0));
  final Map<String, int> firstIndexPosition = {};
  List<String> _filteredAlphabets = [];
  final letterKey = GlobalKey();
  List<String> _list = [];
  bool isLoading = false;
  bool isFocused = false;
  final key = GlobalKey();

  @override
  void didUpdateWidget(covariant AlphabetScrollView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.list != widget.list ||
        oldWidget.isAlphabetsFiltered != widget.isAlphabetsFiltered) {
      _list.clear();
      firstIndexPosition.clear();
      init();
    }
  }

  int getCurrentIndex(double vPosition) {
    double kAlphabetHeight = letterKey.currentContext!.size!.height;
    return (vPosition ~/ kAlphabetHeight);
  }

  void calculateFirstIndex() {
    _filteredAlphabets.forEach((letter) {
      String? firstElement = _list
          .firstWhereOrNull((item) => item.toLowerCase().startsWith(letter));
      if (firstElement != null) {
        int index = _list.indexOf(firstElement);
        firstIndexPosition[letter] = index;
      }
    });
  }

  void scrolltoIndex(int x, Offset offset) {
    int index = firstIndexPosition[_filteredAlphabets[x].toLowerCase()]!;
    if (index != null) {
      _scrollController.scrollTo(
          index: x,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut);
    }
    positionNotifer.value = offset;
  }

  void onVerticalDrag(Offset offset) {
    int index = getCurrentIndex(offset.dy);
    if (index < 0 || index >= _filteredAlphabets.length) return;
    _selectedIndexNotifier.value = index;
    setState(() {
      isFocused = true;
    });
    scrolltoIndex(index, offset);
  }

  double? maxScroll;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ScrollablePositionedList.builder(
            itemScrollController: _scrollController,
            scrollDirection: Axis.vertical,
            itemCount: _list.length,
            physics: ClampingScrollPhysics(),
            itemBuilder: (_, x) {
              return widget.itemBuilder(_, x, _list[x]);
            }),
        Align(
          alignment: widget.alignment == LetterAlignment.left
              ? Alignment.centerLeft
              : Alignment.centerRight,
          child: Container(
            key: key,
            padding: const EdgeInsets.symmetric(horizontal: 2),
            child: SingleChildScrollView(
              child: GestureDetector(
                onVerticalDragStart: (z) => onVerticalDrag(z.localPosition),
                onVerticalDragUpdate: (z) => onVerticalDrag(z.localPosition),
                onVerticalDragEnd: (z) {
                  setState(() {
                    isFocused = false;
                  });
                },
                child: ValueListenableBuilder<int>(
                    valueListenable: _selectedIndexNotifier,
                    builder: (context, int selected, Widget? child) {
                      return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            _filteredAlphabets.length,
                            (x) => GestureDetector(
                              key: x == selected ? letterKey : null,
                              onTap: () {
                                _selectedIndexNotifier.value = x;
                                scrolltoIndex(x, positionNotifer.value);
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 1.0, vertical: 1.0),
                                child: Text(
                                  _filteredAlphabets[x].toUpperCase(),
                                  style: widget.textStyle ??
                                      TextStyle(fontSize: 12.0),
                                ),
                              ),
                            ),
                          ));
                    }),
              ),
            ),
          ),
        ),
        !isFocused
            ? Container()
            : ValueListenableBuilder<Offset>(
                valueListenable: positionNotifer,
                builder:
                    (BuildContext context, Offset position, Widget? child) {
                  return Positioned(
                      right:
                          widget.alignment == LetterAlignment.right ? 40 : null,
                      left:
                          widget.alignment == LetterAlignment.left ? 40 : null,
                      top: position.dy,
                      child: widget.overlayWidget == null
                          ? Container()
                          : widget.overlayWidget!(_filteredAlphabets[
                              _selectedIndexNotifier.value]));
                })
      ],
    );
  }
}
