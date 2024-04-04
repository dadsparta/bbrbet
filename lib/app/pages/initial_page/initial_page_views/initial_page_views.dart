import 'package:bbrbet/app/pages/calculators/calculators_page_view/calculator_page_view.dart';
import 'package:bbrbet/app/pages/initial_page/initial_page_controllers/initial_page_controller.dart';
import 'package:bbrbet/app/pages/main/views/main_view.dart';
import 'package:bbrbet/app/pages/settings/settings_page_views/settings_page_view.dart';
import 'package:bbrbet/core/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InitialPageView extends GetView<InitialPageController> {
  InitialPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [MainView(), CalculatorsPageView(), SettingsPageView()];

    return Obx(
      () => Scaffold(
        body: Stack(
          children: [
            PageView.builder(
              itemCount: pages.length,
              controller: controller.pageController,
              physics: AlwaysScrollableScrollPhysics(),
              onPageChanged: (value) =>
                  controller.selectedPageIndex.value = value,
              itemBuilder: (context, index) {
                return Container(
                    color: AppColors.firstColor,
                    padding: const EdgeInsets.all(20),
                    child: pages[index]);
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 40),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: BottomNavigationBar(
                    onTap: controller.onSelectPage,
                    currentIndex: controller.selectedPageIndex.value,
                    backgroundColor: AppColors.secondColor,
                    unselectedItemColor: AppColors.unactiveIconColor,
                    selectedItemColor: AppColors.activeIconColor,
                    showUnselectedLabels: false,
                    showSelectedLabels: false,
                    selectedLabelStyle: GoogleFonts.sourceCodePro(
                      fontSize: 12,
                    ),
                    items: [
                      BottomNavigationBarItem(
                          icon: Icon(Icons.sports_football), label: ''),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.calculate_outlined), label: ''),
                      BottomNavigationBarItem(
                          icon: Icon(Icons.settings), label: ''),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
