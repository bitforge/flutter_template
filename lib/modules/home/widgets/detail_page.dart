import 'package:flutter/material.dart';
import 'package:flutter_template/modules/home/widgets/custom_appbar.dart';
import 'package:flutter_template/modules/home/widgets/rich_text_widget.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final List<DetailSection> sections;

  const DetailPage({required this.title, required this.sections, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: title),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(221, 54, 54, 54),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ...sections.map(_buildSection),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(DetailSection section) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          section.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Color.fromARGB(221, 54, 54, 54),
          ),
        ),
        const Divider(color: Color(0xFFB5B5FA)),
        ...section.items.map(
          (item) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichTextWidget(
                title: item.title,
                value: item.value,
                action: item.action,
              ),
              const Divider(color: Color(0xFFE4E4E4)),
            ],
          ),
        ),
      ],
    );
  }
}

class DetailSection {
  final String title;
  final List<DetailItem> items;

  const DetailSection({required this.title, required this.items});
}

class DetailItem {
  final String title;
  final String? value;
  final Widget? action;

  const DetailItem({required this.title, required this.value, this.action});
}
