import 'package:travelappui/models/placesModel.dart';

class RESTAPI {
  List<PlaceModel> dummyFeatured = [
    PlaceModel(
        placeTitle: "Student Life",
        description:
            "Our residential campus is home to a multicultural community of innovative and aspiring leaders from inside and outside of Cambodia.",
        duration: "1 hora 35 minutos",
        imgUrl: "assets/image/_D.jpg",
        locationShort: "Phnom Penh, Cambodia",
        costumbres: "",
        tradiciones: "",
        zonasTuristicas: "",
        rating: 4.5),
    PlaceModel(
        placeTitle: "Campus Life",
        description:
            "Despierta entre verdes y cantos de aves. Prepárate para oír las voces nahuas que con su cocina o artesanía te regalan un poco de ellos. O bien, explora sus cavernas, toma una sesión de medicina tradicional",
        duration: "1 hora 35 minutos",
        imgUrl: "assets/image/hm.JPG",
        locationShort: "Honshu, Japan",
        costumbres: "",
        tradiciones: "",
        zonasTuristicas: "",
        rating: 4.5),
    PlaceModel(
        placeTitle: "Internship",
        description:
            "Despierta entre verdes y cantos de aves. Prepárate para oír las voces nahuas que con su cocina o artesanía te regalan un poco de ellos. O bien, explora sus cavernas, toma una sesión de medicina tradicional",
        duration: "1 hora 35 minutos",
        imgUrl: "assets/image/_A.png",
        locationShort: "Honshu, Japan",
        costumbres: "",
        tradiciones: "",
        zonasTuristicas: "",
        rating: 4.5),
    PlaceModel(
        placeTitle: "Course",
        description:
            "Despierta entre verdes y cantos de aves. Prepárate para oír las voces nahuas que con su cocina o artesanía te regalan un poco de ellos. O bien, explora sus cavernas, toma una sesión de medicina tradicional",
        duration: "1 hora 35 minutos",
        imgUrl: "assets/image/gather.JPG",
        locationShort: "Honshu, Japan",
        costumbres: "",
        tradiciones: "",
        zonasTuristicas: "",
        rating: 4.5),
  ];

  List<PlaceModel> dummyAllPlaces = [
    PlaceModel(
        placeTitle: "Acedemic",
        description:
            "Despierta entre verdes y cantos de aves. Prepárate para oír las voces nahuas que con su cocina o artesanía te regalan un poco de ellos. O bien, explora sus cavernas, toma una sesión de medicina tradicional",
        duration: "1 hora 35 minutos",
        imgUrl: "assets/image/activities.JPG",
        locationShort: "Honshu, Japan",
        costumbres: "",
        tradiciones: "",
        zonasTuristicas: "",
        rating: 4.5),
    PlaceModel(
        placeTitle: "Our Lecture",
        description:
            "Despierta entre verdes y cantos de aves. Prepárate para oír las voces nahuas que con su cocina o artesanía te regalan un poco de ellos. O bien, explora sus cavernas, toma una sesión de medicina tradicional",
        duration: "1 hora 35 minutos",
        imgUrl: "assets/image/internship.jpg",
        locationShort: "Honshu, Japan",
        costumbres: "",
        tradiciones: "",
        zonasTuristicas: "",
        rating: 4.5),
    PlaceModel(
        placeTitle: "Chignahuapan",
        description:
            "Despierta entre verdes y cantos de aves. Prepárate para oír las voces nahuas que con su cocina o artesanía te regalan un poco de ellos. O bien, explora sus cavernas, toma una sesión de medicina tradicional",
        duration: "1 hora 35 minutos",
        imgUrl: "assets/image/student.jpg",
        locationShort: "Honshu, Japan",
        costumbres: "",
        tradiciones: "",
        zonasTuristicas: "",
        rating: 4.5),
    PlaceModel(
        placeTitle: "Huauchinango",
        description:
            "Despierta entre verdes y cantos de aves. Prepárate para oír las voces nahuas que con su cocina o artesanía te regalan un poco de ellos. O bien, explora sus cavernas, toma una sesión de medicina tradicional",
        duration: "1 hora 35 minutos",
        imgUrl: "assets/image/_D.jpg",
        locationShort: "Honshu, Japan",
        costumbres: "",
        tradiciones: "",
        zonasTuristicas: "",
        rating: 4.5),
    PlaceModel(
        placeTitle: "Pahuatlan",
        description:
            "Despierta entre verdes y cantos de aves. Prepárate para oír las voces nahuas que con su cocina o artesanía te regalan un poco de ellos. O bien, explora sus cavernas, toma una sesión de medicina tradicional",
        duration: "1 hora 35 minutos",
        imgUrl: "assets/image/images.jpg",
        locationShort: "Honshu, Japan",
        costumbres: "",
        tradiciones: "",
        zonasTuristicas: "",
        rating: 4.5),
    PlaceModel(
        placeTitle: "Tlatlauquitepec",
        description:
            "Despierta entre verdes y cantos de aves. Prepárate para oír las voces nahuas que con su cocina o artesanía te regalan un poco de ellos. O bien, explora sus cavernas, toma una sesión de medicina tradicional",
        duration: "1 hora 35 minutos",
        imgUrl: "assets/image/testing.jpg",
        locationShort: "Honshu, Japan",
        costumbres: "",
        tradiciones: "",
        zonasTuristicas: "",
        rating: 4.5),
  ];

  Future<List<PlaceModel>> getFeaturedPlaces() async {
    await Future.delayed(Duration(milliseconds: 50));
    return dummyFeatured;
  }

  Future<List<PlaceModel>> getAllPlaces() async {
    await Future.delayed(Duration(milliseconds: 50));
    return dummyAllPlaces;
  }
}
