import 'package:flutter/material.dart';

import 'model.dart';

class AnimatedListFullDefault extends StatefulWidget {
  final parent;

  AnimatedListFullDefault({Key key, this.parent}) : super(key: key);

  @override
  _AnimatedListFullDefaultState createState() =>
      _AnimatedListFullDefaultState();
}

class _AnimatedListFullDefaultState extends State<AnimatedListFullDefault> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  ListModel<int> _list;
  int _selectedItem;
  int _nextItem;

  @override
  void initState() {
    super.initState();
    if (widget.parent is State) {
      widget.parent.animateList = this;
    }
    _list = ListModel<int>(
        listKey: _listKey,
        initialItems: <int>[0, 1, 2],
        removedItemBuilder: _buildRemoveItem);
    _nextItem = 3;
  }

  void insert() {
    final int index =
        _selectedItem == null ? _list.length : _list.indexOf(_selectedItem);
    _list.insert(index, _nextItem++);
  }

  void remove() {
    if (_selectedItem != null) {
      _list.removeAt(_list.indexOf(_selectedItem));
      if (mounted) {
        setState(() {
          _selectedItem = null;
        });
      }
    }
  }

  Widget _buildItem(
      BuildContext context, int index, Animation<double> animation) {
    return CardItem(
      animation: animation,
      item: _list[index],
      selected: _selectedItem == _list[index],
      onTap: () {
        setState(() {
          _selectedItem = _selectedItem == _list[index] ? null : _list[index];
        });
      },
    );
  }

  Widget _buildRemoveItem(
      int item, BuildContext context, Animation<double> animation) {
    return CardItem(
      animation: animation,
      item: item,
      selected: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500.0,
      child: AnimatedList(
        itemBuilder: _buildItem,
        key: _listKey,
        initialItemCount: _list.length,
      ),
    );
  }

  void methodA() {}
}

class CardItem extends StatelessWidget {
  final Animation<double> animation;
  final VoidCallback onTap;
  final int item;
  final bool selected;

  const CardItem(
      {Key key,
      @required this.animation,
      this.onTap,
      @required this.item,
      this.selected: false})
      : assert(animation != null),
        assert(item != null && item >= 0),
        assert(selected != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected) {
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    }
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: SizeTransition(
        sizeFactor: animation,
        axis: Axis.vertical,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onTap,
          child: SizedBox(
            height: 128.0,
            child: Card(
              color: Colors.primaries[item % Colors.primaries.length],
              child: Center(
                child: Text(
                  'Item $item',
                  style: textStyle,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
