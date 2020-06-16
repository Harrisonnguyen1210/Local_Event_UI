import 'package:flutter/cupertino.dart';
import 'package:local_event/models/event.dart';

class EventProvider extends ChangeNotifier {
  final List<Event> _events = [
    Event(
      imagePath:
          "https://cdn.tgdd.vn/Files/2019/06/19/1174302/duongchaycolormerun_800x450.jpg",
      title: "5 Kilometer Downtown Run",
      description:
          "An annual road race held at the end of summer in the capital of Finland. All runners take on the 5 km loop with a large part of the course giving everyone a view of the gulf of Finland",
      location: "Pleasant Park",
      duration: "3h",
      punchLine1: "Marathon!",
      punchLine2: "One of the greatest marathons from around the world.",
      galleryImages: [
        'https://www.carnifest.com/wp-content/uploads/2018/10/Color_Me_Run.jpg',
        'https://cdn.images.express.co.uk/img/dynamic/11/590x/The-Color-Run-498541.jpg',
        'https://www.keepmovingforwardwithme.com/wp-content/uploads/2013/04/colorrunrunner.jpeg',
        'https://2.bp.blogspot.com/-hShFzVtcQZY/UnUxFKwYsRI/AAAAAAAAs-U/nF7SEowIBuU/s1600/%2523TheColorRun+Ventura+13b+%2528136%2529+%2528700x493%2529.png',
      ],
      categoryIds: [0, 1],
      guests: [
        'https://asiasociety.org/sites/default/files/styles/1200w/public/2017-10/rezaaslan.jpg',
        'https://i.pinimg.com/736x/9b/8d/b2/9b8db262c86ec8f808f902c148c508bc.jpg',
        'https://cms.qz.com/wp-content/uploads/2018/12/earring2.png',
        'https://mymodernmet.com/wp/wp-content/uploads/2019/09/100k-ai-faces-3.jpg',
        'https://cdn3.dpmag.com/2017/09/005a-beauty_shot.jpg',
      ],
    ),
    Event(
      imagePath:
          "https://whatsnewindonesia.com/wp-content/uploads/2020/03/Cooking-IG_2.jpg",
      title: "Granite Cooking Class",
      description:
          "Guest list fill up fast so be sure to apply beforehand to secure a spot.",
      location: "Food Court Avenue",
      duration: "4h",
      punchLine1: "Granite Cooking!",
      punchLine2: "The latest fad in foodology, get the inside scoup.",
      categoryIds: [0, 2],
      galleryImages: [
        "https://www.eatright.org/-/media/eatrightimages/food/planningandprep/cookingtipsandtrends/culinary-lingo-688005624.jpg",
        "https://www.bbcgoodfood.com/sites/default/files/recipe-collections/collection-image/2013/05/chorizo-mozarella-gnocchi-bake-cropped.jpg",
        "https://thumbor.forbes.com/thumbor/960x0/https%3A%2F%2Fspecials-images.forbesimg.com%2Fimageserve%2F601063988%2F960x0.jpg",
        "https://assets.bonappetit.com/photos/5e7a6c79edf206000862e452/3:2/w_2280,h_1520,c_limit/Cooking-Home-Collection.jpg",
      ],
      guests: [
        'https://asiasociety.org/sites/default/files/styles/1200w/public/2017-10/rezaaslan.jpg',
        'https://cms.qz.com/wp-content/uploads/2018/12/earring2.png',
        'https://nerdist.com/wp-content/uploads/2017/10/Nvidia-AI-Celebrity-Face-Body-Image-10302017.jpg'
      ],
    ),
    Event(
      imagePath:
          "https://blog.radissonblu.com/wp-content/uploads/2019/03/Crowd-At-Music-Concert-copenhagen.jpg",
      title: "Arijit Music Concert",
      description: "Listen to Arijit's latest compositions.",
      location: "D.Y. Patil Stadium, Mumbai",
      duration: "5h",
      punchLine1: "Music Lovers!",
      punchLine2:
          "Call me AC/DC, because I am going to rock you all night long.",
      galleryImages: [
        "https://si.wsj.net/public/resources/images/B3-BY031_TRUCKE_IM_20181002114854.jpg",
        "https://wvuafm.ua.edu/wp-content/uploads/2013/04/Concert1.jpg",
        "https://www.aboutbrasil.com/modules/images/552.jpg",
        'https://thump-images.vice.com/images/2015/1/27/death-by-avicii-or-the-dangerous-mayhem-of-edm-club-shows-1422361460962.jpg',
      ],
      guests: [
        'https://i.insider.com/5bad1be2e55aa8fa0e8b4567?width=1000&format=jpeg&auto=webp',
        'https://res.cloudinary.com/jerrick/image/upload/c_crop,fl_progressive,h_630,q_auto,w_1200/cb65tfs6bixfgynzawcc.jpg',
        'https://psmag.com/.image/t_share/MTM3NTk5NTUzMDM2NjI1MTM2/5283271566_390ff9b3fc_ojpg.jpg',
        'https://miro.medium.com/max/3928/1*CPl6YA5tFLWqCdl-HjOiuw.jpeg'
      ],
      categoryIds: [0, 1],
    ),
    Event(
      imagePath:
          "https://static1.squarespace.com/static/572a1a4e8259b5cad2ac0fca/t/5b031e6f1ae6cf4792f21554/1526931067643/golf.jpg?format=1500w",
      title: "Season 2 Golf Estate",
      description:
          "This event will be a fundraiser to benefit the construction of our new Field Complex this year and will consist of 18 Holes of world-class championship golf, range balls, golf cart, a drink coupon, and dinner buffet during awards reception.",
      location: "NSIC Ground, Okhla",
      duration: "1d",
      punchLine1: "Golf!",
      punchLine2:
          "San Juan Soccer Club is proud to present our Season 2 Golf Tournament!",
      galleryImages: [
        "https://images.squarespace-cdn.com/content/v1/59cb760c3e00be12e66753fb/1587225795213-OX11H2TKXKTA0Z5QSDZP/ke17ZwdGBToddI8pDm48kFO_ptFNKx-4sQsLVimWkhh7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1Ued4MyeThqyEqOnxOimpudJ17Yr8Z5FJePhDYOS8IfR1fjyInzPBuCesXwhHa2W1Hw/1A+copy.JPG",
        "https://static1.squarespace.com/static/58091ae4bebafbc65c37c4f5/581b7c9137c581e667eb7424/5b995051aa4a998b0bd3cfeb/1536774485435/IMG_1817.JPG",
        "https://www.hydeparkgolfclub.com/wp-content/uploads/2019/10/Kelowna_Springs_Golf_Tournament-1.jpg",
        "https://imavex.vo.llnwd.net/o18/clients/monarchbeach/images/NewTourneyGallery/TravisMathewShoppingExperience.JPG",
      ],
      guests: [
        'https://www.globalvillagespace.com/wp-content/uploads/2019/12/Saudi-Arabia-to-stage-first-womens-pro-golf-event.jpg',
        'https://i.pinimg.com/originals/db/66/1a/db661ac525adc82c4b89e2e8c8336dea.jpg',
        'https://dvh1deh6tagwk.cloudfront.net/finder-au/wp-uploads/2020/02/Golf_Kayo_450x250.jpg',
        'https://i.pinimg.com/originals/7a/b6/67/7ab66777ac9a0a5d5314f5478a8ddda9.jpg',
      ],
      categoryIds: [0, 3],
    ),
  ];

  List<Event> get events {
    return _events;
  }

  List<Event> filterEvent(int categoryId) {
    return _events
        .where((event) => event.categoryIds.contains(categoryId))
        .toList();
  }
}
