import '../app_functionalities/about_school.dart';
import '../app_functionalities/events.dart';
import '../app_functionalities/first_grade.dart';
import '../app_functionalities/information_and_contact.dart';
import '../app_functionalities/last_grade.dart';
import '../app_functionalities/library.dart';
import '../app_functionalities/notifications.dart';
import '../app_functionalities/program_description.dart';
import '../app_functionalities/projects.dart';
import '../app_functionalities/scedule.dart';
import '../app_functionalities/student_association.dart';
import '../projects/digitalni_casopis_aktiva_trgovine.dart';
import '../projects/eTwinning.dart';
import '../projects/epas_skola.dart';
import '../projects/financijska_pismenost.dart';
import '../projects/medunarodna_suradnja.dart';
import '../projects/program_potpore_napredovanju.dart';
import '../projects/skolske_pcele_medarice.dart';
import '../projects/volonteri.dart';
import '../widgets/all_categories.dart';
import '../widgets/favourites.dart';
import '../widgets/splash.dart';

var routes = {
  '/': (context) => const Splash(),
  'aboutSchool': (context) => const AboutSchool(),
  'programDescription': (context) => const ProgramDescription(),
  'scedule': (context) => const Scedule(),
  'events': (context) => const Events(),
  'projects': (context) => const Projects(),
  'studentAssociation': (context) => const StudentAssociation(),
  'firstGrade': (context) => FirstGrade(),
  'lastGrade': (context) => const LastGrade(),
  'notifications': (context) => const Notifications(),
  'informationAndContact': (context) => const InformationAndContact(),
  'library': (context) => Library(),
  'favourites': (context) => Favourites(),
  'allCategories': (context) => AllCategories(),
  'epas': (context) => const EpasSkola(),
  'eTwinning': (context) => const ETwinning(),
  'financialLiteracy': (context) => FinancialLiteracy(),
  'digitalMagazine': (context) => const DigitalMagazine(),
  'volunteers': (context) => const Volunteers(),
  'advancementSupportProgram': (context) => const AdvancementSupportProgram(),
  'schoolBees': (context) => const SchoolBees(),
  'internationalCooperation': (context) => const InternationalCooperation(),
};
