import 'package:flora/application/choice_chip_bloc/choice_chip_bloc.dart';
import 'package:flora/core/colors/colors.dart';
import 'package:flora/core/constants/constants.dart';
import 'package:flora/core/routes/routes.dart';
import 'package:flora/core/style/style.dart';
import 'package:flora/data/model/plant_model.dart';
import 'package:flora/presentation/pages/details/details_page.dart';
import 'package:flora/presentation/widgets/choice_chips.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:like_button/like_button.dart';
import 'package:redacted/redacted.dart';

class ChoiceChipsListShimmerWidget extends StatelessWidget {
  const ChoiceChipsListShimmerWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: choiceChiplist.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Container(
              height: size.height * 0.03,
              width: size.width * choiceChiplist[index].length * 0.04,
              child: Text(choiceChiplist[index]),
            ).redacted(
              context: context,
              redact: true,
              configuration: RedactedConfiguration(
                redactedColor: const Color(0XFFF4F4F4).withOpacity(0.1),
                animationDuration: const Duration(milliseconds: 800),
              ),
            ),
        separatorBuilder: (context, index) => sizedBox10W);
  }
}

class ChoiceChipsListWidget extends StatelessWidget {
  const ChoiceChipsListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: choiceChiplist.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        bool isSelected =
            context.watch<ChoiceChipBloc>().state.selectedSize == index;

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
    );
  }
}

class FreeShippingWidget extends StatelessWidget {
  const FreeShippingWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height: size.height * 0.17),
        Positioned(
          bottom: 0,
          child: Container(
            height: size.height * 0.14,
            width: size.width - 30,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: const LinearGradient(
                colors: [Color(0xFFDCEEFF), Color(0xFFFFE6CF)],
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
                    Text('on orders', style: headingStyle2(color: colorGrey)),
                    sizedBox5W,
                    Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ratingColor),
                      child: Text('over \$100',
                          style: headingStyle2(color: colorWhite)),
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
                    image: NetworkImage(ImageHanler.offerImage),
                    fit: BoxFit.fitHeight)),
          ),
        )
      ],
    );
  }
}

class PlantListWidgetShimmer extends StatelessWidget {
  const PlantListWidgetShimmer({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: size.width * 0.34,
            width: size.width * 0.34,
          ),
          sizedBox10W,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizedBox25H,
              Container(height: 20, width: size.width * 0.5),
              sizedBox5H,
              Container(height: 20, width: size.width * 0.15),
              sizedBox10H,
              Container(height: 20, width: size.width * 0.15),
            ],
          )
        ],
      ),
    );
  }
}

class PlantListWidget extends StatelessWidget {
  const PlantListWidget({
    super.key,
    required this.size,
    required this.plantModel,
    required this.index,
  });
  final PlantModel plantModel;
  final Size size;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            NavigationHandler.navigateTo(
                context, DetailsScreen(plantModel: plantModel));
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
                          color: Colors.accents[index].withOpacity(0.2),
                          borderRadius: BorderRadius.circular(10)),
                      height: size.width * 0.24,
                      width: size.width * 0.34,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(plantModel.imageUrl),
                          fit: BoxFit.fitHeight),
                    ),
                    height: size.width * 0.34,
                    width: size.width * 0.3,
                  ),
                  const Positioned(
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
                            child:
                                Text(plantModel.name, style: headingStyle2()),
                          ),
                          RatingWidget(rating: plantModel.rating.toString())
                        ],
                      ),
                    ),
                    sizedBox5H,
                    Text(
                      '${plantModel.displaySize} cm',
                      style: const TextStyle(color: colorGrey),
                    ),
                    sizedBox15H,
                    Text(
                      "${plantModel.price} \$",
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        index == 1 ? FreeShippingWidget(size: size) : Container()
      ],
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
