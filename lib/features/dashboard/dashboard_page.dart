import 'package:flutter/material.dart';
import 'package:stream_app/widgets/filter_chips_widget.dart';
import 'package:stream_app/widgets/live_now_widget.dart';
import 'package:stream_app/widgets/popular_streamers_widget.dart';
import 'package:stream_app/widgets/title_widget.dart';
import 'package:stream_app/widgets/trasparent_bottom_bar_widget.dart';
import '../../widgets/big_title_widget.dart';
import '../../widgets/top_categories_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.format_align_left),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 10),
            child: Center(
              child: Material(
                borderRadius: BorderRadius.circular(150),
                color: Colors.blue,
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(150),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        padding: const EdgeInsets.all(8),
                        child: const Icon(Icons.person),
                      ),
                      Positioned(
                        top: -5,
                        right: -5,
                        child: CircleAvatar(
                          backgroundColor: Colors.green.shade400,
                          radius: 4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
        title: const Text('Minha App Bar'),
      ),
      body: ListView(
        children: [
          const Padding(padding: EdgeInsets.symmetric(horizontal: 24)),
          const BigTitleWidget(),
          FilterChipsWidget(
            onChange: (data) {
              debugPrint('Selected ${data.join(',')}');
            },
            filtros: const [
              'Esport',
              'Channels',
              'Categorie',
              'Food',
              'Esport 1',
              'Channels 1',
              'Categorie 1',
              'Food 1',
              'Esport 2',
              'Channels 2',
              'Categorie 2',
              'Food 2',
            ],
          ),
          const TitleWidget(title: 'Live Now'),
          const SizedBox(height: 16),
          const LiveNowWidget(),
          const SizedBox(height: 16),
          const TitleWidget(title: 'Popular Streamers'),
          const SizedBox(height: 16),
          const PopularStreamersWidget(),
          const SizedBox(height: 16),
          const TitleWidget(title: 'Top Categories'),
          const SizedBox(height: 16),
          const TopCategoriesWidget(),
          const SizedBox(height: 10),
        ],
      ),
      bottomNavigationBar: TrasparentBottomBarWidget(),
      extendBody: true,
    );
  }
}
