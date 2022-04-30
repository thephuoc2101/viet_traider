import 'package:flutter/material.dart';

class LoadMore extends StatefulWidget {
  final Widget? child;
  final bool isFinish;

  final Function? onLoadMore;

  const LoadMore(
      {Key? key,
      @required this.child,
      @required this.onLoadMore,
      this.isFinish = false})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoadState();
}

class _LoadState extends State<LoadMore> {
  Widget get child => widget.child!;
  final _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (child is ListView) {
      return _buildListView(child as ListView);
    }
    if (child is SliverList) {
      return _buildSliverList(child as SliverList);
    }
    if (child is GridView) {
      return _buildGridView(child as GridView);
    }
    return child;
  }

  Widget _buildListView(ListView listView) {
    var delegate = listView.childrenDelegate;
    if (delegate is SliverChildBuilderDelegate) {
      SliverChildBuilderDelegate delegate =
          listView.childrenDelegate as SliverChildBuilderDelegate;

      var viewCount = widget.isFinish
          ? delegate.estimatedChildCount
          : delegate.estimatedChildCount! + 1;

      IndexedWidgetBuilder builder = (context, index) {
        if (index == viewCount! - 1 && !widget.isFinish) {
          return _buildLoadMoreView();
        }
        return delegate.builder(context, index) ?? Container();
      };

      return ListView.builder(
        itemBuilder: builder,
        addAutomaticKeepAlives: delegate.addAutomaticKeepAlives,
        addRepaintBoundaries: delegate.addRepaintBoundaries,
        addSemanticIndexes: delegate.addSemanticIndexes,
        dragStartBehavior: listView.dragStartBehavior,
        semanticChildCount: listView.semanticChildCount,
        itemCount: viewCount,
        cacheExtent: listView.cacheExtent,
        controller: _scrollController,
        itemExtent: listView.itemExtent,
        key: listView.key,
        padding: listView.padding,
        physics: listView.physics,
        primary: false,
        reverse: listView.reverse,
        scrollDirection: listView.scrollDirection,
        shrinkWrap: listView.shrinkWrap,
      );
    }
    return listView;
  }

  _buildLoadMoreView() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Opacity(
          child: CircularProgressIndicator(
            strokeWidth: 2.0,
          ),
          opacity: 1,
        ),
      ),
    );
  }

  Widget _buildSliverList(SliverList list) {
    final delegate = list.delegate;
    if (delegate == null) {
      return list;
    }

    if (delegate is SliverChildListDelegate) {
      return SliverList(
        delegate: delegate,
      );
    }

    outer:
    if (delegate is SliverChildBuilderDelegate) {
      if (!widget.isFinish && delegate.estimatedChildCount == 0) {
        break outer;
      }
      final viewCount = delegate.estimatedChildCount ?? 0 + 1;
      IndexedWidgetBuilder builder = (context, index) {
        if (index == viewCount - 1 && !widget.isFinish) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Opacity(
                child: CircularProgressIndicator(
                  strokeWidth: 2.0,
                ),
                opacity: 1,
              ),
            ),
          );
        }
        return delegate.build(context, index) ?? Container();
      };

      return SliverList(
        delegate: SliverChildBuilderDelegate(
          builder,
          addAutomaticKeepAlives: delegate.addAutomaticKeepAlives,
          addRepaintBoundaries: delegate.addRepaintBoundaries,
          addSemanticIndexes: delegate.addSemanticIndexes,
          childCount: viewCount,
          semanticIndexCallback: delegate.semanticIndexCallback,
          semanticIndexOffset: delegate.semanticIndexOffset,
        ),
      );
    }
    return list;
  }

  Widget _buildGridView(GridView gridView) {
    var delegate = gridView.childrenDelegate;
    if (delegate is SliverChildBuilderDelegate) {
      SliverChildBuilderDelegate delegate =
          gridView.childrenDelegate as SliverChildBuilderDelegate;

      var viewCount = widget.isFinish
          ? delegate.estimatedChildCount
          : delegate.estimatedChildCount!
         + 1
      ;

      IndexedWidgetBuilder builder = (context, index) {
        if (index == viewCount!
            - 1
            && !widget.isFinish) {
          return _buildLoadMoreView();
        }
        return delegate.builder(context, index) ?? Container();
      };

      return GridView.builder(
        itemBuilder: builder,
        addAutomaticKeepAlives: delegate.addAutomaticKeepAlives,
        addRepaintBoundaries: delegate.addRepaintBoundaries,
        addSemanticIndexes: delegate.addSemanticIndexes,
        dragStartBehavior: gridView.dragStartBehavior,
        semanticChildCount: gridView.semanticChildCount,
        itemCount: viewCount,
        cacheExtent: gridView.cacheExtent,
        controller: _scrollController,
        key: gridView.key,
        padding: gridView.padding,
        physics: gridView.physics,
        primary: false,
        reverse: gridView.reverse,
        scrollDirection: gridView.scrollDirection,
        shrinkWrap: gridView.shrinkWrap,
        gridDelegate: gridView.gridDelegate,
      );
    }
    return gridView;
  }

  void _onScroll() {
    if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent &&
        !widget.isFinish) {
      widget.onLoadMore?.call();
    }
  }
}
