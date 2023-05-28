import 'event.dart';
import 'package:flutter/material.dart';

class DetailedEventsEngine extends EventEngine {
  Widget containerWithImage(int index, int i) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
                'images/event${eventsList[i].eventId}_image$index.jpg'),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  void addDescription(List<Widget> list, int i) {
    list.add(Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'A propos de cet événement:',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            eventsList[i].eventDetailedDescription,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    ));
  }

  void addRequirements(List<Widget> list, int i) {
    list.add(Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Les différents requis:',
            style: TextStyle(fontSize: 30),
          ),
          Text(
            '\n${eventsList[i].eventRequirement.physicalRequirements}${eventsList[i].eventRequirement.physicalRequirements == '' ? '' : '\n\n'}${eventsList[i].eventRequirement.clothingRequirements}${eventsList[i].eventRequirement.clothingRequirements == '' ? '' : '\n\n'}${eventsList[i].eventRequirement.timeRequirements}${eventsList[i].eventRequirement.timeRequirements == '' ? '' : '\n\n'}${eventsList[i].eventRequirement.financialRequirements}',
            style:const TextStyle(fontSize: 16),
          )
        ],
      ),
    ));
  }

}
