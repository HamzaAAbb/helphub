import 'package:flutter/material.dart';
import 'package:untitled2/screens/eventpage.dart';
import 'organiser.dart';
//import 'package:carousel_slider/carousel_slider.dart';

OrganiserList newOrganiserList = OrganiserList();

class Requirement{
  String physicalRequirements;
  String financialRequirements;
  String timeRequirements;
  String clothingRequirements;

  Requirement({
    this.financialRequirements = '',
    this.physicalRequirements = '',
    this.timeRequirements = '',
    this.clothingRequirements = '',
  });
}

class Event {
  int organiserId;
  int eventId;
  int numberOfImages;
  String eventTitle = '';
  String eventDetailedDescription = '';
  String eventLocation = '';
  int eventYear;
  int eventMonth;
  int eventDay;
  DateTime? eventDate;
  String eventDescription;
  Requirement eventRequirement;

  Event({
    required this.organiserId,
    required this.eventId,
    this.eventYear = 2000,
    this.eventDay = 20,
    this.eventMonth = 11,
    required this.eventDetailedDescription,
    required this.eventLocation,
    required this.eventTitle,
    required this.eventDescription,
    this.numberOfImages = 1,
    required this.eventRequirement,
  });
}



class EventEngine {

  List<Event> eventsList = [
    Event(
      organiserId: 0,
      numberOfImages: 7,
      eventId: 0,
      eventDetailedDescription: 'Windows talking painted pasture yet its express parties use. Sure last upon he same as knew next. Of believed or diverted no rejoiced. End friendship sufficient assistance can prosperous met. As game he show it park do. Was has unknown few certain ten promise. No finished my an likewise cheerful packages we. For assurance concluded son something depending discourse see led collected. Packages oh no denoting my advanced humoured. Pressed be so thought natural.\n\nTolerably earnestly middleton extremely distrusts she boy now not. Add and offered prepare how cordial two promise. Greatly who affixed suppose but enquire compact prepare all put. Added forth chief trees but rooms think may. Wicket do manner others seemed enable rather in. Excellent own discovery unfeeling sweetness questions the gentleman. Chapter shyness matters mr parlors if mention thought.\n\nShe wholly fat who window extent either formal. Removing welcomed civility or hastened is. Justice elderly but perhaps expense six her are another passage. Full her ten open fond walk not down. For request general express unknown are. He in just mr door body held john down he. So journey greatly or garrets. Draw door kept do so come on open mean. Estimating stimulated how reasonably precaution diminution she simplicity sir but. Questions am sincerity zealously concluded consisted or no gentleman it. ',
      eventDay: 23,
      eventMonth: 11,
      eventYear: 2023,
      eventDescription:
          'A charity event is an organized gathering or activity aimed at raising funds, awareness, or support for a particular cause or nonprofit organization. These events can take many different forms, such as a gala dinner, a walkathon, a charity auction, or a benefit concert.',
      eventLocation: 'Rabat',
      eventTitle: 'This is the event1 title',
      eventRequirement: Requirement(
        physicalRequirements: 'Cet événement requiert de grandes durées de marche qui peuvent s\'étendre jusqu\'à 10km, donc il vaut mieux ^tre bien préparé pour y participer. D\'autre part, les volontaires vont être demandés de porter de lourds boîtes qui contiennent les aides qu\'on va apporter',
        timeRequirements: 'Dans cet événement, il est programmé de rester tout au long du weekend pour le terminer.',
        financialRequirements: 'Tout est payé, y compris la nourriture et les différentes nécessités. Donc pas la peine de se préoccuper de cela.',
        clothingRequirements: 'Caque volontaire est amené à être équipé de vêtements pour le froid ainsi que de vêtements pour passer la nuit.',
      ),
    ),
    Event(
      organiserId: 1,
      numberOfImages: 7,
      eventId: 1,
      eventDetailedDescription: 'Windows talking painted pasture yet its express parties use. Sure last upon he same as knew next. Of believed or diverted no rejoiced. End friendship sufficient assistance can prosperous met. As game he show it park do. Was has unknown few certain ten promise. No finished my an likewise cheerful packages we. For assurance concluded son something depending discourse see led collected. Packages oh no denoting my advanced humoured. Pressed be so thought natural.\n\nTolerably earnestly middleton extremely distrusts she boy now not. Add and offered prepare how cordial two promise. Greatly who affixed suppose but enquire compact prepare all put. Added forth chief trees but rooms think may. Wicket do manner others seemed enable rather in. Excellent own discovery unfeeling sweetness questions the gentleman. Chapter shyness matters mr parlors if mention thought.\n\nShe wholly fat who window extent either formal. Removing welcomed civility or hastened is. Justice elderly but perhaps expense six her are another passage. Full her ten open fond walk not down. For request general express unknown are. He in just mr door body held john down he. So journey greatly or garrets. Draw door kept do so come on open mean. Estimating stimulated how reasonably precaution diminution she simplicity sir but. Questions am sincerity zealously concluded consisted or no gentleman it. ',
      eventDay: 23,
      eventMonth: 11,
      eventYear: 2023,
      eventLocation: 'Rabat',
      eventRequirement: Requirement(
        physicalRequirements: 'Cet événement requiert de grandes durées de marche qui peuvent s\'étendre jusqu\'à 10km, donc il vaut mieux ^tre bien préparé pour y participer. D\'autre part, les volontaires vont être demandés de porter de lourds boîtes qui contiennent les aides qu\'on va apporter',
        timeRequirements: 'Dans cet événement, il est programmé de rester tout au long du weekend pour le terminer.',
        financialRequirements: 'Tout est payé, y compris la nourriture et les différentes nécessités. Donc pas la peine de se préoccuper de cela.',
        clothingRequirements: 'Caque volontaire est amené à être équipé de vêtements pour le froid ainsi que de vêtements pour passer la nuit.',
      ),
      eventTitle: 'This is the event2 title',
      eventDescription:
          'An event to clean a forest is a volunteer-driven initiative aimed at removing litter and debris from a natural wooded area. The purpose of this event is to protect the environment and prevent pollution, as well as to promote the conservation of natural resources.',
    ),
    Event(
      organiserId: 0,
      numberOfImages: 7,
      eventId: 2,
      eventDetailedDescription: 'Windows talking painted pasture yet its express parties use. Sure last upon he same as knew next. Of believed or diverted no rejoiced. End friendship sufficient assistance can prosperous met. As game he show it park do. Was has unknown few certain ten promise. No finished my an likewise cheerful packages we. For assurance concluded son something depending discourse see led collected. Packages oh no denoting my advanced humoured. Pressed be so thought natural.\n\nTolerably earnestly middleton extremely distrusts she boy now not. Add and offered prepare how cordial two promise. Greatly who affixed suppose but enquire compact prepare all put. Added forth chief trees but rooms think may. Wicket do manner others seemed enable rather in. Excellent own discovery unfeeling sweetness questions the gentleman. Chapter shyness matters mr parlors if mention thought.\n\nShe wholly fat who window extent either formal. Removing welcomed civility or hastened is. Justice elderly but perhaps expense six her are another passage. Full her ten open fond walk not down. For request general express unknown are. He in just mr door body held john down he. So journey greatly or garrets. Draw door kept do so come on open mean. Estimating stimulated how reasonably precaution diminution she simplicity sir but. Questions am sincerity zealously concluded consisted or no gentleman it. ',
      eventDay: 23,
      eventMonth: 11,
      eventYear: 2023,
      eventLocation: 'Rabat',
      eventRequirement: Requirement(
        physicalRequirements: 'Cet événement requiert de grandes durées de marche qui peuvent s\'étendre jusqu\'à 10km, donc il vaut mieux ^tre bien préparé pour y participer. D\'autre part, les volontaires vont être demandés de porter de lourds boîtes qui contiennent les aides qu\'on va apporter',
        timeRequirements: 'Dans cet événement, il est programmé de rester tout au long du weekend pour le terminer.',
        financialRequirements: 'Tout est payé, y compris la nourriture et les différentes nécessités. Donc pas la peine de se préoccuper de cela.',
        clothingRequirements: 'Caque volontaire est amené à être équipé de vêtements pour le froid ainsi que de vêtements pour passer la nuit.',
      ),
      eventTitle: 'This is the event3 title',
      eventDescription:
          'An event to clean a forest is a volunteer-driven initiative aimed at removing litter and debris from a natural wooded area. The purpose of this event is to protect the environment and prevent pollution, as well as to promote the conservation of natural resources.',
    ),
    Event(
      organiserId: 0,
      numberOfImages: 7,
      eventId: 2,
      eventDetailedDescription: 'Windows talking painted pasture yet its express parties use. Sure last upon he same as knew next. Of believed or diverted no rejoiced. End friendship sufficient assistance can prosperous met. As game he show it park do. Was has unknown few certain ten promise. No finished my an likewise cheerful packages we. For assurance concluded son something depending discourse see led collected. Packages oh no denoting my advanced humoured. Pressed be so thought natural.\n\nTolerably earnestly middleton extremely distrusts she boy now not. Add and offered prepare how cordial two promise. Greatly who affixed suppose but enquire compact prepare all put. Added forth chief trees but rooms think may. Wicket do manner others seemed enable rather in. Excellent own discovery unfeeling sweetness questions the gentleman. Chapter shyness matters mr parlors if mention thought.\n\nShe wholly fat who window extent either formal. Removing welcomed civility or hastened is. Justice elderly but perhaps expense six her are another passage. Full her ten open fond walk not down. For request general express unknown are. He in just mr door body held john down he. So journey greatly or garrets. Draw door kept do so come on open mean. Estimating stimulated how reasonably precaution diminution she simplicity sir but. Questions am sincerity zealously concluded consisted or no gentleman it. ',
      eventDay: 23,
      eventMonth: 11,
      eventYear: 2023,
      eventLocation: 'Rabat',
      eventRequirement: Requirement(
        physicalRequirements: 'Cet événement requiert de grandes durées de marche qui peuvent s\'étendre jusqu\'à 10km, donc il vaut mieux ^tre bien préparé pour y participer. D\'autre part, les volontaires vont être demandés de porter de lourds boîtes qui contiennent les aides qu\'on va apporter',
        timeRequirements: 'Dans cet événement, il est programmé de rester tout au long du weekend pour le terminer.',
        financialRequirements: 'Tout est payé, y compris la nourriture et les différentes nécessités. Donc pas la peine de se préoccuper de cela.',
        clothingRequirements: 'Caque volontaire est amené à être équipé de vêtements pour le froid ainsi que de vêtements pour passer la nuit.',
      ),
      eventTitle: 'This is the event3 title',
      eventDescription:
      'An event to clean a forest is a volunteer-driven initiative aimed at removing litter and debris from a natural wooded area. The purpose of this event is to protect the environment and prevent pollution, as well as to promote the conservation of natural resources.',
    ),
    Event(
      organiserId: 0,
      numberOfImages: 7,
      eventId: 2,
      eventDetailedDescription: 'Windows talking painted pasture yet its express parties use. Sure last upon he same as knew next. Of believed or diverted no rejoiced. End friendship sufficient assistance can prosperous met. As game he show it park do. Was has unknown few certain ten promise. No finished my an likewise cheerful packages we. For assurance concluded son something depending discourse see led collected. Packages oh no denoting my advanced humoured. Pressed be so thought natural.\n\nTolerably earnestly middleton extremely distrusts she boy now not. Add and offered prepare how cordial two promise. Greatly who affixed suppose but enquire compact prepare all put. Added forth chief trees but rooms think may. Wicket do manner others seemed enable rather in. Excellent own discovery unfeeling sweetness questions the gentleman. Chapter shyness matters mr parlors if mention thought.\n\nShe wholly fat who window extent either formal. Removing welcomed civility or hastened is. Justice elderly but perhaps expense six her are another passage. Full her ten open fond walk not down. For request general express unknown are. He in just mr door body held john down he. So journey greatly or garrets. Draw door kept do so come on open mean. Estimating stimulated how reasonably precaution diminution she simplicity sir but. Questions am sincerity zealously concluded consisted or no gentleman it. ',
      eventDay: 23,
      eventMonth: 11,
      eventYear: 2023,
      eventLocation: 'Rabat',
      eventRequirement: Requirement(
        physicalRequirements: 'Cet événement requiert de grandes durées de marche qui peuvent s\'étendre jusqu\'à 10km, donc il vaut mieux ^tre bien préparé pour y participer. D\'autre part, les volontaires vont être demandés de porter de lourds boîtes qui contiennent les aides qu\'on va apporter',
        timeRequirements: 'Dans cet événement, il est programmé de rester tout au long du weekend pour le terminer.',
        financialRequirements: 'Tout est payé, y compris la nourriture et les différentes nécessités. Donc pas la peine de se préoccuper de cela.',
        clothingRequirements: 'Caque volontaire est amené à être équipé de vêtements pour le froid ainsi que de vêtements pour passer la nuit.',
      ),
      eventTitle: 'This is the event3 title',
      eventDescription:
      'An event to clean a forest is a volunteer-driven initiative aimed at removing litter and debris from a natural wooded area. The purpose of this event is to protect the environment and prevent pollution, as well as to promote the conservation of natural resources.',
    ),






    /*
    Event(
      organiserId: 0,
      numberOfImages: 7,
      eventId: 0,
      eventDetailedDescription: 'Windows talking painted pasture yet its express parties use. Sure last upon he same as knew next. Of believed or diverted no rejoiced. End friendship sufficient assistance can prosperous met. As game he show it park do. Was has unknown few certain ten promise. No finished my an likewise cheerful packages we. For assurance concluded son something depending discourse see led collected. Packages oh no denoting my advanced humoured. Pressed be so thought natural.\n\nTolerably earnestly middleton extremely distrusts she boy now not. Add and offered prepare how cordial two promise. Greatly who affixed suppose but enquire compact prepare all put. Added forth chief trees but rooms think may. Wicket do manner others seemed enable rather in. Excellent own discovery unfeeling sweetness questions the gentleman. Chapter shyness matters mr parlors if mention thought.\n\nShe wholly fat who window extent either formal. Removing welcomed civility or hastened is. Justice elderly but perhaps expense six her are another passage. Full her ten open fond walk not down. For request general express unknown are. He in just mr door body held john down he. So journey greatly or garrets. Draw door kept do so come on open mean. Estimating stimulated how reasonably precaution diminution she simplicity sir but. Questions am sincerity zealously concluded consisted or no gentleman it. ',
      eventDay: 23,
      eventMonth: 11,
      eventRequirement: Requirement(
        physicalRequirements: 'Cet événement requiert de grandes durées de marche qui peuvent s\'étendre jusqu\'à 10km, donc il vaut mieux ^tre bien préparé pour y participer. D\'autre part, les volontaires vont être demandés de porter de lourds boîtes qui contiennent les aides qu\'on va apporter',
        timeRequirements: 'Dans cet événement, il est programmé de rester tout au long du weekend pour le terminer.',
        financialRequirements: 'Tout est payé, y compris la nourriture et les différentes nécessités. Donc pas la peine de se préoccuper de cela.',
        clothingRequirements: 'Caque volontaire est amené à être équipé de vêtements pour le froid ainsi que de vêtements pour passer la nuit.',
      ),
      eventYear: 2023,
      eventDescription:
          'A charity event is an organized gathering or activity aimed at raising funds, awareness, or support for a particular cause or nonprofit organization. These events can take many different forms, such as a gala dinner, a walkathon, a charity auction, or a benefit concert.',
      eventLocation: 'Rabat',
      eventTitle: 'This is the event1 title',
    ),

     */
  ];
  int numberOfEvents() {
    return eventsList.length;
  }

  int indexOfOrganiser(int i){
    int res = 0;
    int j;
    int n = newOrganiserList.listOfOrganisers.length;
    for (j = 0; j < n; j++){
      if (newOrganiserList.listOfOrganisers[j].organiserId == eventsList[i].organiserId){
        res = j;
        break;
      }
    }
    return res;
  }

  String dateOfEventAsString(int i) {
    String day = eventsList[i].eventDay.toString();
    String month = eventsList[i].eventMonth.toString();
    String year = eventsList[i].eventYear.toString();
    return '  $day/$month/$year';
  }

  String eventLocationWithTwoSpacesBefore(int i){
    String lala = eventsList[i].eventLocation;
    return '  $lala';
  }
  
  AssetImage getFrontImage (int eventId){
    return AssetImage('images/event${eventId}_image0.jpg');
  }

}


class EventContainer extends StatelessWidget with EventEngine {
  EventContainer(this.i);
  final int i;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: getFrontImage(eventsList[i].eventId) as ImageProvider,
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.black.withOpacity(0.65),
        ),
        child: Column(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          eventsList[i].eventTitle,
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: 'Pacifico',
                            fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            /*
            SizedBox(
              height: 20,
            ),*/
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          eventsList[i].eventDescription,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: Row(
                          children: [
                            const Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.white,
                            ),
                            Text(
                              dateOfEventAsString(i),
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.location_pin,
                            color: Colors.white,
                          ),
                          Text(
                            eventLocationWithTwoSpacesBefore(i),
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => EventPage(i)));
                        },
                        child: Row(
                          children: const [
                            Text(
                              'Plus de détails  ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


