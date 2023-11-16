import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/modules/home/actions/show_info_modal.dart';
import 'package:flutter_template/modules/home/widgets/classic_counter.dart';
import 'package:flutter_template/modules/home/widgets/riverpod_counter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Counters'),
          actions: [
            IconButton(
              onPressed: () => showInfoModal(context),
              icon: const Icon(Icons.info),
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(text: 'home.counter_classic'.tr()),
              Tab(text: 'home.counter_riverpod'.tr()),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ClassicCounter(),
            RiverpodCounter(),
          ],
        ),
      ),
    );
  }
}
