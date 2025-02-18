import 'package:flutter/material.dart';
import 'package:flutter_template/modules/home/widgets/custom_appbar.dart';

typedef ListItemBuilder<T> = Widget Function(BuildContext context, T item);

class DynamicListPage<T> extends StatefulWidget {
  final String title;
  final List<T> items;
  final ListItemBuilder<T> itemBuilder;
  final bool Function(T item, String query)? filterCondition;

  const DynamicListPage({
    required this.title,
    required this.items,
    required this.itemBuilder,
    this.filterCondition,
    super.key,
  });

  @override
  State<DynamicListPage<T>> createState() => _DynamicListPageState<T>();
}

class _DynamicListPageState<T> extends State<DynamicListPage<T>> {
  Key _pageKey = UniqueKey();
  late List<T> _filteredItems;

  @override
  void initState() {
    super.initState();
    _filteredItems = widget.items;
  }

  void _filterItems(String query) {
    setState(() {
      if (widget.filterCondition != null) {
        _filteredItems = widget.items
            .where((item) => widget.filterCondition!(item, query))
            .toList();
      } else {
        _filteredItems = widget.items;
      }
    });
  }

  Future<void> _refreshPage() async {
    setState(() {
      _pageKey = UniqueKey();
      _filteredItems = widget.items;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          content: const Text('Page refreshed!'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: widget.title,
        onRefresh: _refreshPage,
      ),
      body: SafeArea(
        key: _pageKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  const Icon(Icons.search),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: 'Search',
                        border: UnderlineInputBorder(),
                      ),
                      onChanged: _filterItems,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: _filteredItems.isEmpty
                  ? const Center(child: Text('No results found!'))
                  : ListView.builder(
                      itemCount: _filteredItems.length,
                      itemBuilder: (context, index) {
                        return widget.itemBuilder(
                            context, _filteredItems[index]);
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
