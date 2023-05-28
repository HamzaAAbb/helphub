import 'package:flutter/material.dart';
import '../utilities/detailedevent.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'organiserpage.dart';

DetailedEventsEngine newDetailedEventsEngine = DetailedEventsEngine();

class EventPage extends StatefulWidget {
  final int i;
  EventPage(this.i);

  @override
  State<EventPage> createState() => _EventPageState(i);
}

class _EventPageState extends State<EventPage> {
  int activeIndex = 0;
  int i;


  List<Widget> getList() {
    List<Widget> res = [];
    res.add(CarouselSlider.builder(
        itemCount: newDetailedEventsEngine.eventsList[i].numberOfImages,
        itemBuilder: (BuildContext context, int itemIndex, int pageviewindex) =>
            newDetailedEventsEngine.containerWithImage(itemIndex, i),
        options: CarouselOptions(
            height: 310,
            aspectRatio: 1.5,
            viewportFraction: 0.92,
            onPageChanged: (index, reason) {
              setState(() {
                activeIndex = index;
              });
            },
        )));
    res.add(const SizedBox(height: 10,));
    res.add(Center(
      child: AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: newDetailedEventsEngine.eventsList[i].numberOfImages,
        effect: const ScrollingDotsEffect(
          dotHeight: 13,
          dotWidth: 13,
          radius: 13,
          activeDotColor: Color(0xFF1F8894),
          dotColor: Color(0xFFCBCBCB),
          activeDotScale: 1.2,
        ),
      ),
    ));
    newDetailedEventsEngine.addDescription(res, i);
    newDetailedEventsEngine.addRequirements(res, i);
    res.add(Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => OrganiserPage(newDetailedEventsEngine.indexOfOrganiser(i))),
            );
          },
          child: Container(
            height: 70,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color(0xFF1F8894),
            ),
            child: const Center(
              child: Text('A propos de nous', style: TextStyle(
                color: Colors.white,
                fontFamily: 'Pacifico',
                fontSize: 25,
              ),),
            ),
          ),
        ),
        const SizedBox(height: 30),
        Container(
          height: 70,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xFF1F8894),
          ),
          child: const Center(
            child: Text('Participer', style: TextStyle(
              color: Colors.white,
              fontFamily: 'Pacifico',
              fontSize: 25,
            ),),
          ),
        ),
        const SizedBox(height: 30),
        Container(
          height: 70,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xFF1F8894),
          ),
          child: const Center(
            child: Text('Contribuer', style: TextStyle(
              color: Colors.white,
              fontFamily: 'Pacifico',
              fontSize: 25,
            ),),
          ),
        ),
        const SizedBox(height: 10),
      ],
    ));
    return res;
  }

  _EventPageState(this.i);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(newDetailedEventsEngine.eventsList[i].eventTitle),
        backgroundColor: const Color(0xFF1F8894),
      ),
      body: SafeArea(
        child: ListView(
          children: getList(),
        ),
      ),
    );
  }
}
