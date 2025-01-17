import 'package:flutter/material.dart';
import 'package:flutter_template/modules/home/widgets/custom_appbar.dart';

typedef ListItemBuilder = Widget Function(
  BuildContext context,
  Map<String, String> item,
);

class DynamicListPage extends StatefulWidget {
  final String title;
  final List<Map<String, String>> items;
  final ListItemBuilder itemBuilder;

  const DynamicListPage({
    required this.title,
    required this.items,
    required this.itemBuilder,
    super.key,
  });

  @override
  State<DynamicListPage> createState() => _DynamicListPageState();
}

class _DynamicListPageState extends State<DynamicListPage> {
  Key _pageKey = UniqueKey();
  late List<Map<String, String>> _filteredItems;

  @override
  void initState() {
    super.initState();
    _filteredItems = widget.items;
  }

  void _filterItems(String query) {
    setState(() {
      _filteredItems = widget.items
          .where(
            (item) => item.values.any(
              (value) => value.toLowerCase().contains(query.toLowerCase()),
            ),
          )
          .toList();
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
                  ? const Center(
                      child: Text('No resulsts found!'),
                    )
                  : ListView.builder(
                      itemCount: _filteredItems.length,
                      itemBuilder: (context, index) {
                        return widget.itemBuilder(
                          context,
                          _filteredItems[index],
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
