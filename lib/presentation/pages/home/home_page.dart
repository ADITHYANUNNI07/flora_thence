import 'package:flora/application/choice_chip/choice_chip_bloc.dart';
import 'package:flora/core/colors/colors.dart';
import 'package:flora/core/constants/constants.dart';
import 'package:flora/core/routes/routes.dart';
import 'package:flora/core/style/style.dart';
import 'package:flora/data/model/plant_model.dart';
import 'package:flora/presentation/pages/details/details.dart';
import 'package:flora/presentation/widgets/choice_chips.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(left: 15, top: 15),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(right: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'All plants',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Spacer(),
                            FaIcon(FontAwesomeIcons.magnifyingGlass,
                                color: iconColor)
                          ],
                        ),
                        sizedBox15H,
                        Text('Houseplants', style: headingStyle1()),
                        sizedBox15H,
                      ],
                    ),
                  ),
                  BlocProvider(
                    create: (_) => ChoiceChipBloc(),
                    child: SizedBox(
                      height: size.height * 0.05,
                      width: size.width,
                      child: ListView.separated(
                        itemCount: choiceChiplist.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          bool isSelected = context
                                  .watch<ChoiceChipBloc>()
                                  .state
                                  .selectedSize ==
                              index;

                          return ChoiceChipsWidget(
                            choicechipNumber: index,
                            title: choiceChiplist[index],
                            isSelected: isSelected,
                            onSelected: () {
                              context
                                  .read<ChoiceChipBloc>()
                                  .add(ChoiceChipEvent.sizeSelected(index));
                            },
                          );
                        },
                        separatorBuilder: (context, index) => sizedBox10W,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: Column(
                  children: [
                    PlantListWidget(size: size),
                    Padding(
                      padding: const EdgeInsets.only(top: 0),
                      child: Stack(
                        children: [
                          Container(height: size.height * 0.17),
                          Positioned(
                            bottom: 0,
                            child: Container(
                              height: size.height * 0.14,
                              width: size.width - 30,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFFDCEEFF),
                                    Color(0xFFFFE6CF)
                                  ],
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                ),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('Free shipping', style: headingStyle2()),
                                  Row(
                                    children: [
                                      Text('on orders',
                                          style:
                                              headingStyle2(color: colorGrey)),
                                      sizedBox5W,
                                      Container(
                                        padding: const EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: ratingColor),
                                        child: Text('over \$100',
                                            style: headingStyle2(
                                                color: colorWhite)),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: Container(
                              width: size.width * 0.38,
                              height: size.height * 0.17,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          NetworkImage(ImageHanler.offerImage),
                                      fit: BoxFit.fitHeight)),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}

class PlantListWidget extends StatelessWidget {
  const PlantListWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        NavigationHandler.navigateTo(context, DetailsScreen(plantModel: plant));
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: size.width * 0.34,
                width: size.width * 0.34,
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  decoration: BoxDecoration(
                      color: colorGreen.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10)),
                  height: size.width * 0.24,
                  width: size.width * 0.34,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(ImageHanler.networkimagetest),
                      fit: BoxFit.fitHeight),
                ),
                height: size.width * 0.34,
                width: size.width * 0.3,
              ),
              Positioned(
                  bottom: 7,
                  right: 7,
                  child: LikeBtnWidget(height: 30, width: 30))
            ],
          ),
          sizedBox10W,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: size.width * 0.1),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Text('Adromiscus', style: headingStyle2()),
                      ),
                      const RatingWidget(rating: '4,5')
                    ],
                  ),
                ),
                sizedBox5H,
                const Text(
                  '16 cm',
                  style: TextStyle(color: colorGrey),
                ),
                sizedBox15H,
                const Text(
                  "16,5 \$",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LikeBtnWidget extends StatelessWidget {
  const LikeBtnWidget({
    super.key,
    required this.height,
    required this.width,
    this.colorContainer,
    this.borderRadius,
    this.iconColor,
  });
  final double height;
  final double width;
  final Color? colorContainer;
  final double? borderRadius;
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: colorContainer ?? colorWhite,
        borderRadius: BorderRadius.circular(borderRadius ?? 6),
      ),
      child: LikeButton(
        size: 19,
        circleColor: const CircleColor(
          start: colorRed,
          end: colorRed,
        ),
        bubblesColor: const BubblesColor(
          dotPrimaryColor: colorRed,
          dotSecondaryColor: colorRed,
        ),
        likeBuilder: (bool isLiked) {
          return Icon(
            isLiked ? FontAwesomeIcons.solidHeart : FontAwesomeIcons.heart,
            color: isLiked ? colorRed : iconColor ?? const Color(0xffBFC2C8),
          );
        },
      ),
    );
  }
}

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    super.key,
    required this.rating,
  });
  final String rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const FaIcon(
          FontAwesomeIcons.solidStar,
          color: ratingColor,
          size: 18,
        ),
        sizedBox5W,
        Text(
          rating,
          style: const TextStyle(color: ratingColor),
        ),
      ],
    );
  }
}

// class _SliverTabSectionDelegate extends SliverPersistentHeaderDelegate {
//   _SliverTabSectionDelegate(this._widget, {required this.size});

//   final Widget _widget;
//   final Size size;

//   @override
//   double get minExtent => _widget is TabSection ? (_widget).minHeight : 60.0;
//   @override
//   double get maxExtent => minExtent;

//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     bool isPinned = shrinkOffset > 0;
//     return _widget is TabSection
//         ? (_widget).copyWith(isPinned: isPinned)
//         : _widget;
//   }

//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
//     return true;
//   }
// }
