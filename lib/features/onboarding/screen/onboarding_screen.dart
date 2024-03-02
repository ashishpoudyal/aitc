import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_storage/get_storage.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task_app/config/theme/app_color.dart';
import 'package:task_app/config/theme/constant/storage_constant.dart';
import 'package:task_app/features/onboarding/provider/on_boarding_page_provider.dart';
import 'package:task_app/features/onboarding/view/on_boarding_page1.dart';
import 'package:task_app/features/onboarding/view/on_boarding_page2.dart';
import 'package:task_app/features/onboarding/view/on_boarding_page3.dart';
import 'package:task_app/features/onboarding/view/on_boarding_page4.dart';
import 'package:task_app/features/onboarding/widget/next_text_widget.dart';
import 'package:task_app/features/onboarding/widget/skip_text_widget.dart';
import 'package:task_app/widgets/custom_button.dart';

class OnBoardingScreen extends ConsumerStatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OnBoardingScreenState();
}

class _OnBoardingScreenState extends ConsumerState<OnBoardingScreen> {
  final getStorage = GetStorage();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ref.watch(onBoardingPageProvider);
    var currentPageNo = ref.watch(onBoardingPageProvider.notifier).state;
    ref.watch(pageController);
    return Scaffold(
        backgroundColor: AppColor.primaryColor,
        body: Stack(
          children: [
            PageView(
              onPageChanged: (value) => ref
                  .read(onBoardingPageProvider.notifier)
                  .update((state) => value),
              controller: ref.watch(pageController),
              children: const [
                OnboardingPage1(),
                OnboardingPage2(),
                OnboardingPage3(),
                OnboardingPage4(),
              ],
            ),
            Positioned(
              bottom: 36,
              right: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: currentPageNo == 3
                    ? SizedBox(
                        height: 48,
                        child: FittedBox(
                          child: CustomButton(
                            onPressed: () {
                              getStorage.write(
                                  StorageConstant.isOnBoarded, true);
                            },
                            child: const Text("Get Started"),
                          ),
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SkipTextWidget(),
                          SmoothPageIndicator(
                            controller: ref.watch(pageController),
                            count: 4,
                            effect: WormEffect(
                              spacing: 8,
                              dotHeight: 10,
                              dotWidth: 10,
                              dotColor:
                                  AppColor.secondaryColor.withOpacity(0.50),
                              activeDotColor: AppColor.secondaryColor,
                            ),
                          ),
                          NextTextWidget(
                            onTap: () {
                              var jumpTo = currentPageNo + 1;
                              ref.read(pageController).jumpToPage(jumpTo);
                            },
                          ),
                        ],
                      ),
              ),
            )
          ],
        ));
  }
}
