class Organiser {
  int organiserId;
  String urlInstagramPage;
  String urlFacebookPage;
  String urlYoutubePage;
  String organiserName;
  String organiserDescripton;

  Organiser({
    required this.organiserId,
    this.urlInstagramPage = '',
    this.urlFacebookPage = '',
    this.urlYoutubePage = '',
    required this.organiserName,
    required this.organiserDescripton,
  });
}

class OrganiserList {
  List<Organiser> listOfOrganisers = [
    Organiser(
      organiserId: 0,
      urlInstagramPage: 'https://instagram.com/casinpt?igshid=YmMyMTA2M2Y=',
      urlFacebookPage: 'https://www.facebook.com/cas.inpt?mibextid=ZbWKwL',
      urlYoutubePage: 'https://youtube.com/@casinpt4163',
      organiserName: 'Club des Affaires Sociales de l\'INPT',
      organiserDescripton: 'A club of charity in a college is a student organization dedicated to promoting philanthropic efforts and social responsibility within the campus community. The primary focus of the club is to raise awareness and funds for various charitable causes and organizations, both locally and globally.\n\nThe club members work together to organize fundraising events such as charity runs, bake sales, auctions, and other activities to raise money for their chosen causes. They also collaborate with other campus groups and organizations to maximize their impact and reach a wider audience.\n\nIn addition to fundraising, the club may also engage in volunteering and community service activities to support the causes they support. This may include organizing donation drives, volunteering at local charities, or participating in community service projects.\n\nThrough their efforts, a club of charity in a college helps to foster a sense of social responsibility and civic engagement among students, as well as to make a positive impact on the world around them.',
    ),
    Organiser(
      organiserId: 1,
      urlInstagramPage: 'https://instagram.com/casinpt?igshid=YmMyMTA2M2Y=',
      urlFacebookPage: 'https://www.facebook.com/cas.inpt?mibextid=ZbWKwL',
      urlYoutubePage: 'https://youtube.com/@casinpt4163',
      organiserName: 'Club des Affaires Sociales de l\'INPT',
      organiserDescripton: 'A club of charity in a college is a student organization dedicated to promoting philanthropic efforts and social responsibility within the campus community. The primary focus of the club is to raise awareness and funds for various charitable causes and organizations, both locally and globally.\n\nThe club members work together to organize fundraising events such as charity runs, bake sales, auctions, and other activities to raise money for their chosen causes. They also collaborate with other campus groups and organizations to maximize their impact and reach a wider audience.\n\nIn addition to fundraising, the club may also engage in volunteering and community service activities to support the causes they support. This may include organizing donation drives, volunteering at local charities, or participating in community service projects.\n\nThrough their efforts, a club of charity in a college helps to foster a sense of social responsibility and civic engagement among students, as well as to make a positive impact on the world around them.',
    ),
    Organiser(
      organiserId: 2,
      urlInstagramPage: 'https://instagram.com/casinpt?igshid=YmMyMTA2M2Y=',
      urlFacebookPage: 'https://www.facebook.com/cas.inpt?mibextid=ZbWKwL',
      urlYoutubePage: 'https://youtube.com/@casinpt4163',
      organiserName: 'Club des Affaires Sociales de l\'INPT',
      organiserDescripton: 'A club of charity in a college is a student organization dedicated to promoting philanthropic efforts and social responsibility within the campus community. The primary focus of the club is to raise awareness and funds for various charitable causes and organizations, both locally and globally.\n\nThe club members work together to organize fundraising events such as charity runs, bake sales, auctions, and other activities to raise money for their chosen causes. They also collaborate with other campus groups and organizations to maximize their impact and reach a wider audience.\n\nIn addition to fundraising, the club may also engage in volunteering and community service activities to support the causes they support. This may include organizing donation drives, volunteering at local charities, or participating in community service projects.\n\nThrough their efforts, a club of charity in a college helps to foster a sense of social responsibility and civic engagement among students, as well as to make a positive impact on the world around them.',
    ),
  ];
}
