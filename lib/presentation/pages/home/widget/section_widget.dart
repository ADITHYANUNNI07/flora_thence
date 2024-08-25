import 'package:flora/application/choice_chip_bloc/choice_chip_bloc.dart';
import 'package:flora/application/plant_bloc/plants_bloc.dart';
import 'package:flora/core/colors/colors.dart';
import 'package:flora/core/constants/constants.dart';
import 'package:flora/core/style/style.dart';
import 'package:flora/data/model/plant_model.dart';
import 'package:flora/presentation/pages/home/widget/home_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:redacted/redacted.dart';

class TopSection extends StatelessWidget {
  const TopSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Text(
                    'All plants',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  FaIcon(FontAwesomeIcons.magnifyingGlass, color: iconColor)
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
            child: BlocBuilder<PlantsBloc, PlantsState>(
              builder: (context, state) {
                return state.when(
                  initial: () => ChoiceChipsListShimmerWidget(size: size),
                  loading: () => ChoiceChipsListShimmerWidget(size: size),
                  error: (message) => const ChoiceChipsListWidget(),
                  success: (model) => const ChoiceChipsListWidget(),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}

class SecondSection extends StatelessWidget {
  const SecondSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: BlocBuilder<PlantsBloc, PlantsState>(
        builder: (context, state) {
          return state.when(
            initial: () => Column(
              children: List.generate(
                5,
                (index) => PlantListWidgetShimmer(size: size).redacted(
                  context: context,
                  redact: true,
                  configuration: RedactedConfiguration(
                    redactedColor: const Color(0XFFF4F4F4).withOpacity(0.1),
                    animationDuration: const Duration(milliseconds: 800),
                  ),
                ),
              ),
            ),
            loading: () => Column(
              children: List.generate(
                5,
                (index) => PlantListWidgetShimmer(size: size).redacted(
                  context: context,
                  redact: true,
                  configuration: RedactedConfiguration(
                    redactedColor: const Color(0XFFF4F4F4),
                    animationDuration: const Duration(milliseconds: 800),
                  ),
                ),
              ),
            ),
            success: (model) {
              List<PlantModel> newList = [...model, model.first];
              return Column(
                children: List.generate(
                  newList.length,
                  (index) => PlantListWidget(
                      size: size, plantModel: newList[index], index: index),
                ),
              );
            },
            error: (message) => message == 'Network is unreachable'
                ? SizedBox(
                    height: size.height * 0.7,
                    child: Image.asset('assets/images/networkerror.png'),
                  )
                : Text(message),
          );
        },
      ),
    );
  }
}
