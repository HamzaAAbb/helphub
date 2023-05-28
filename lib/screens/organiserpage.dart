import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../utilities/organiser.dart';
import 'package:url_launcher/url_launcher.dart';

OrganiserList newOrganiserList = OrganiserList();

class OrganiserPage extends StatefulWidget {
  final int organiserIndex;
  OrganiserPage(this.organiserIndex);

  @override
  State<OrganiserPage> createState() => _OrganiserPageState(organiserIndex);
}

class _OrganiserPageState extends State<OrganiserPage> {
  int organiserIndex;

  _OrganiserPageState(this.organiserIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F8894),
        title: Text(
            newOrganiserList.listOfOrganisers[organiserIndex].organiserName),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                newOrganiserList
                    .listOfOrganisers[organiserIndex].organiserDescripton,
                style: const TextStyle(fontSize: 17),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Check our pages:',
                style: TextStyle(fontSize: 27),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      launchUrl(Uri.parse(newOrganiserList.listOfOrganisers[organiserIndex].urlFacebookPage), mode: LaunchMode.externalApplication);
                    },
                    child:const Image(
                      image: AssetImage('images/facebooklogo.png'),
                      height: 60,
                    ),
                  ),
                  const SizedBox(width: 25),
                  GestureDetector(
                    onTap: (){
                      launchUrl(Uri.parse(newOrganiserList.listOfOrganisers[organiserIndex].urlInstagramPage), mode: LaunchMode.externalApplication);
                    },
                    child:const Image(
                      image: AssetImage('images/instagramlogo.png'),
                      height: 60,
                    ),
                  ),
                  const SizedBox(width: 25),
                  GestureDetector(
                    onTap: (){
                      launchUrl(Uri.parse(newOrganiserList.listOfOrganisers[organiserIndex].urlYoutubePage), mode: LaunchMode.externalApplication);
                    },
                    child:const Image(
                      image: AssetImage('images/youtubelogo.png'),
                      height: 75,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
