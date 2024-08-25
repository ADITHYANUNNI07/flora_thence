import 'package:flora/application/choice_chip_bloc/choice_chip_bloc.dart';
import 'package:flora/core/colors/colors.dart';
import 'package:flora/core/constants/constants.dart';
import 'package:flora/core/style/style.dart';
import 'package:flora/core/widget/widget.dart';
import 'package:flora/data/model/plant_model.dart';
import 'package:flora/presentation/pages/home/widget/home_widget.dart';
import 'package:flora/presentation/widgets/choice_chips.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.plantModel});
  final PlantModel plantModel;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (_) => ChoiceChipBloc()
        ..add(ChoiceChipEvent.sizeSelected(plantModel.displaySize)),
      child: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              BlocBuilder<ChoiceChipBloc, ChoiceChipState>(
                builder: (context, state) => Stack(
                  children: [
                    Stack(
                      children: [
                        Container(
                          color: detailpageImagebgColor,
                          height: size.height * 0.5,
                          width: size.width,
                        ),
                        Positioned(
                          bottom: 0,
                          child: SizedBox(
                            width: size.width,
                            child: Container(
                              height: size.height * state.selectedSize * 0.01,
                              width: size.height * state.selectedSize * 0.01,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(25),
                                  bottomRight: Radius.circular(25),
                                ),
                                image: DecorationImage(
                                    image: NetworkImage(plantModel.imageUrl),
                                    fit: BoxFit.fitHeight),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        CupertinoIcons.arrow_left,
                        color: Color(0xff242424),
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
              sizedBox15H,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(plantModel.name, style: headingStyle1()),
                        const Spacer(),
                        Text(
                          '${plantModel.price}${plantModel.priceUnit}',
                          style: headingStyle2(),
                        )
                      ],
                    ),
                    sizedBox5H,
                    RatingWidget(rating: plantModel.rating.toString()),
                    sizedBox15H,
                    const Text('Choose size', style: detailpgstyle),
                    sizedBox5H,
                    SizedBox(
                      height: size.height * 0.05,
                      width: size.width,
                      child: ListView.separated(
                        itemCount: plantModel.availableSize.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final size = plantModel.availableSize[index];
                          bool isSelected = context
                                  .watch<ChoiceChipBloc>()
                                  .state
                                  .selectedSize ==
                              size;

                          return ChoiceChipsWidget(
                            choicechipNumber: index,
                            title: '$size cm',
                            onSelected: () {
                              context
                                  .read<ChoiceChipBloc>()
                                  .add(ChoiceChipEvent.sizeSelected(size));
                            },
                            isSelected: isSelected,
                          );
                        },
                        separatorBuilder: (context, index) => sizedBox10W,
                      ),
                    ),
                    sizedBox15H,
                    const Text('Description', style: detailpgstyle),
                    sizedBox5H,
                    Text(
                      plantModel.description,
                      style: const TextStyle(color: colorGrey, fontSize: 15),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        floatingActionButton: Container(
          height: size.height * 0.1,
          width: size.width - 30,
          padding: const EdgeInsetsDirectional.symmetric(vertical: 15),
          child: Row(
            children: [
              LikeBtnWidget(
                  iconColor: colorBlack,
                  borderRadius: 16,
                  colorContainer: const Color(0XFFF4F4F4),
                  height: size.height * 0.1 - 15,
                  width: size.height * 0.1 - 15),
              const Spacer(),
              SizedBox(
                width: (size.width - 30) * 0.7,
                child: ElevatedBtnWidget(
                  onPressed: () {},
                  title: 'Add to cart',
                  btnColor: colorApp,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
