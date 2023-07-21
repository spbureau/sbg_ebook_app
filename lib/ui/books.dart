// Books Data

class Book {
  String bookTitle;
  String author;
  String yearPublished;
  String category;
  String bookCover;

  Book(this.bookTitle, this.author, this.yearPublished, this.category,
      this.bookCover);
}

List<Book> popularBooks = [
  Book("Court of Mist and Fury", " Sarah J. Maas", "2014", "Fiction",
      "pexels-7"),
  Book("Harry Potter und der Feuerkelch", "J. K. Rowling", "1999", "Fiction",
      "pexels-6"),
  Book("The Gruffalo", "Julia Donaldson", "1999", "Fiction", "pexels-9"),
  Book("The Wrong Wife", "Carolyn McSparren", "2000", "Romance", "pexels-4"),
  Book("A kingdom of dreams", "Judith McNaught", "1989", "Romance", "pexels-3"),
  Book("The Seven Husbands of Evelyn Hugo", "Taylor Jenkins Reid", "2017",
      "Fiction", "pexels-2"),
  Book("The Shining", "Stephen King", "1977", "Fiction", "pexels-1")
];

List<Book> newBooks = [
  Book("Voice & speech in the theatre", "J. Clifford Turner", "1950", "Culture",
      "pexels-1"),
  Book("Anlass zur Unruhe", "Eric Ambler", "1838", "Classic", "pexels-2"),
  Book("Those barren leaves", "Aldous Huxley", "1925", "Classic", "pexels-5"),
  Book("The savage pilgrimage", "Catherine Carswell", "1932", "Classic",
      "pexels-4"),
  Book("The human polity", "Kay Lawson", "1984", "Political science",
      "pexels-5"),
];

class RecommendedBook extends Book {
  String description;
  String sourceUrl;
  String sourceLibrary;

  RecommendedBook(
      super.bookTitle,
      super.author,
      super.yearPublished,
      super.category,
      super.bookCover,
      this.description,
      this.sourceUrl,
      this.sourceLibrary);
}

//     this.title, 1
//     this.author, 2
//     this.yearPublished, 3
//     this.category, 4
//     this.bookCover, 5
//     this.description, 6
//     this.sourceUrl, 7
//     this.sourceLibrary, 8
// Recommended Book
List<RecommendedBook> recommendedBooks = [
  RecommendedBook(
      "P.S. Never in a Million Years",
      "J. S. Cooper",
      "2022",
      "Novel, Romance",
      "https://res.cloudinary.com/bookbub/image/upload/t_ci_ar_6:9_padded,f_auto,q_auto,dpr_1/v1644663700/pro_pbid_5003791.jpg",
      "A scorching series starter from a New York Times bestselling author! Marcia cant stand her arrogant new boss. But when she accidentally sends an email insulting his looks and cocky attitude, he summons her to his office to teach her a lesson she will never forget…",
      "https://r.bookbub.com/promotion_site_active_check/210701?promotion_type=deals&retailer_id=1",
      "Amazon"),
  RecommendedBook(
      "Faking Love with the Billionaire Boss",
      "Serenity Woods",
      "2023",
      "Novel, Romance",
      "https://res.cloudinary.com/bookbub/image/upload/t_ci_ar_6:9_padded,f_auto,q_auto,dpr_1,c_scale,w_405/v1677594428/pro_pbid_5655539.jpg",
      "Heidi has never forgotten the kiss she shared years ago with Titus, her brother’s best friend. When he turns up in need of a date for a swanky party, she agrees to spend the night posing as his girlfriend — but unexpectedly sharing a room makes their attraction impossible to resist…",
      "https://r.bookbub.com/promotion_site_active_check/212562?affiliate_batch=0&affiliate_label=a&affiliate_variant=individualbookpagesite&promotion_type=deals&retailer_id=1&traffic_source=",
      "Amazon"),
  RecommendedBook(
      "The Way West",
      "James A. Crutchfield",
      "2015",
      "History",
      "https://res.cloudinary.com/bookbub/image/upload/t_ci_ar_6:9_padded,f_auto,q_auto,dpr_1/v1687973277/pro_pbid_353296.jpg",
      "The journey westward has long been shrouded in legend and myth. Setting the record straight, this essential collection documents the exploration of the American frontier — from the network of trails traversed by pioneers to daily life as a Texas Ranger.",
      "https://r.bookbub.com/promotion_site_active_check/211536?promotion_type=deals&retailer_id=1",
      "Amazon"),
  RecommendedBook(
      "The French & Indian War",
      "Walter R. Borneman",
      "2021",
      "History",
      "https://res.cloudinary.com/bookbub/image/upload/t_ci_ar_6:9_padded,f_auto,q_auto,dpr_1/v1588399060/pro_pbid_269461.jpg",
      "No description available",
      "https://r.bookbub.com/promotion_site_active_check/209741?promotion_type=deals&retailer_id=4",
      "Google"),
  RecommendedBook(
      "Entrepreneurship",
      "Michael Laverty, Chris Littel, North Carolina State University",
      "2020",
      "Business",
      "https://assets.openstax.org/oscms-prodcms/media/documents/entrepreneurship_book_card_2k8vDF2.svg",
      "This textbook is intended for use in introductory Entrepreneurship classes at the undergraduate level. Due to the wide range of audiences and course approaches, the book is designed to be as flexible as possible. Theoretical and practical aspects are presented in a balanced manner, and specific components such as the business plan are provided in multiple formats. Entrepreneurship aims to drive students toward active participation in entrepreneurial roles, and exposes them to a wide range of companies and scenarios.",
      "https://assets.openstax.org/oscms-prodcms/media/documents/Entrepreneurship-WEB_qNSArxT.pdf?_gl=1*4o7k0d*_ga*NjA1Mjg0NDU3LjE2ODk4NjIxNjY.*_ga_T746F8B0QC*MTY4OTg2MjE3MC4xLjEuMTY4OTg2MjM5OC41OS4wLjA.",
      "OpenStax"),
  RecommendedBook(
      "Principles of Microeconomics 3e",
      "David Shapiro, Daniel MacDonald, Steven A. Greenlaw",
      "2022",
      "Business",
      "https://assets.openstax.org/oscms-prodcms/media/documents/principles-microeconomics-3e-web-card.svg",
      "Principles of Microeconomics 3e covers the scope and sequence of most one semester introductory microeconomics courses. The third edition takes a balanced approach to the theory and application of microeconomics concepts. The text uses conversational language and ample illustrations to explore economic theories, and provides a wide array of examples using both fictional and real-world applications.",
      "https://assets.openstax.org/oscms-prodcms/media/documents/Microeconomics3e-WEB.pdf?_gl=1*fr13n5*_ga*NjA1Mjg0NDU3LjE2ODk4NjIxNjY.*_ga_T746F8B0QC*MTY4OTg2MjE3MC4xLjEuMTY4OTg2MjkxMS41OS4wLjA.",
      "OpenStax"),
  RecommendedBook(
      "Faking Love with the Billionaire Boss",
      "Serenity Woods",
      "2023",
      "Novel, Romance",
      "https://res.cloudinary.com/bookbub/image/upload/t_ci_ar_6:9_padded,f_auto,q_auto,dpr_1,c_scale,w_405/v1677594428/pro_pbid_5655539.jpg",
      "Heidi has never forgotten the kiss she shared years ago with Titus, her brother’s best friend. When he turns up in need of a date for a swanky party, she agrees to spend the night posing as his girlfriend — but unexpectedly sharing a room makes their attraction impossible to resist…",
      "https://r.bookbub.com/promotion_site_active_check/212562?affiliate_batch=0&affiliate_label=a&affiliate_variant=individualbookpagesite&promotion_type=deals&retailer_id=1&traffic_source=",
      "Amazon"),
  RecommendedBook(
      "Wish",
      "Morgan Rice",
      "2020",
      "Novel, Fantasy, Teen and Young Adult",
      "https://res.cloudinary.com/bookbub/image/upload/t_ci_ar_6:9_padded,f_auto,q_auto,dpr_1/v1674230490/pro_pbid_5649592.jpg",
      "As 17-year-old Taylor adjusts to life at a juvenile detention camp in the Pacific Northwest, she explores her own mysterious power… But does the Mistfalls Wilderness Camp have a dark secret? An engrossing fantasy from a USA Today bestselling author!",
      "https://r.bookbub.com/promotion_site_active_check/208602?promotion_type=deals&retailer_id=4",
      "Google"),
  RecommendedBook(
      "Honeymoon for One",
      "Chris Keniston",
      "2018",
      "Novel, Romance",
      "https://res.cloudinary.com/bookbub/image/upload/t_ci_ar_6:9_padded,f_auto,q_auto,dpr_1/v1626361877/pro_pbid_9064.jpg",
      "First in a series: When she’s left at the altar, Michelle goes on her honeymoon alone — and decides to ditch her good-girl reputation with a handsome stranger. But then he shows up on her first day back at work… “A feel-good escape” (New York Times bestselling author Roxanne St. Claire) with over 4,200 five-star Amazon ratings!",
      "https://r.bookbub.com/promotion_site_active_check/210880?promotion_type=deals&retailer_id=1",
      "Amazon"),
  RecommendedBook(
      "The Hanging Tree",
      "Ellery Kane",
      "2019",
      "Novel, Crime Fiction, Psychological Thrillers",
      "https://res.cloudinary.com/bookbub/image/upload/t_ci_ar_6:9_padded,f_auto,q_auto,dpr_1/v1563225145/pro_pbid_4073037.jpg",
      "Young Evie witnesses a vicious attack on her best friend, but she can’t remember the assailant’s face. When another girl is strangled years later, she must recover her memories of that lost night to identify the culprit — who might be closer than she thinks. \“Generates genuine suspense… Excellent\” (Kirkus Reviews).",
      "https://r.bookbub.com/promotion_site_active_check/211743?promotion_type=deals&retailer_id=1",
      "Amazon"),
  RecommendedBook(
      "Quintessentially the One",
      "Aleatha Romig",
      "Unknown",
      "Novel, Contemporary Romance",
      "https://res.cloudinary.com/bookbub/image/upload/t_ci_ar_6:9_padded,f_auto,q_auto,dpr_1/v1676739306/pro_pbid_5008116.jpg",
      "From a New York Times bestselling author: When Dax returns home to small-town Riverbend, he learns his late grandmother left something treasured to his college love, Kandace. But little does Dax know that Kandace has been hiding a precious secret of her own for the past five years… one who looks just like him!",
      "https://r.bookbub.com/promotion_site_active_check/211658?promotion_type=deals&retailer_id=1",
      "Amazon"),
  RecommendedBook(
      "King Arthur: The Making of the Legend",
      "Nicholas J. Higham",
      "2010",
      "History",
      "https://res.cloudinary.com/bookbub/image/upload/t_ci_ar_6:9_padded,f_auto,q_auto,dpr_1/v1670515114/pro_pbid_4259637.jpg",
      'Was King Arthur real? Written by a leading medievalist, this \“fascinating, authoritative analysis\” (The Guardian) seeks the origins of the mythic British ruler, evaluating previous investigations while examining the details of Arthur’s story. \“A thoughtful and patient, rational and fair-minded book\” (The Sunday Times).',
      "https://r.bookbub.com/promotion_site_active_check/211732?promotion_type=deals&retailer_id=1",
      "Amazon"),
  RecommendedBook(
      "Mourning Lincoln",
      "Martha Hodes",
      "2017",
      "History",
      "https://res.cloudinary.com/bookbub/image/upload/t_ci_ar_6:9_padded,f_auto,q_auto,dpr_1/v1689351207/pro_pbid_1114134.jpg",
      'Longlisted for the National Book Award: Witness the public response to Abraham Lincoln’s assassination in a history that mines diaries, letters, and more for a unique window into a pivotal period. “The amount of research is simply staggering… Highly original, lucidly written” (Pulitzer Prize–winning author James M. McPherson).',
      "https://r.bookbub.com/promotion_site_active_check/211733?promotion_type=deals&retailer_id=1",
      "Amazon"),
  RecommendedBook(
      "Introduction to Intellectual Property",
      "David Kline, David Kappos",
      "2021",
      "Business",
      "https://assets.openstax.org/oscms-prodcms/media/documents/introduction_to_intellectual_property_web_card.svg",
      "Introduction to Intellectual Property provides a clear, effective introduction to patents, copyright, trademarks, and trade secrets. The text may be used by students and instructors in formal courses, as well as those applying intellectual property considerations to entrepreneurship, marketing, law, computer science, engineering, design, or other fields. The luminaries involved with this project represent the forefront of knowledge and experience, and the material offers considerable examples and scenarios, as well as exercises and references.",
      "https://assets.openstax.org/oscms-prodcms/media/documents/Introduction_to_Intellectual_Property_2PYaEdp.pdf?_gl=1*9iwybg*_ga*NjA1Mjg0NDU3LjE2ODk4NjIxNjY.*_ga_T746F8B0QC*MTY4OTg2MjE3MC4xLjEuMTY4OTg2MzQ0OC41OC4wLjA.",
      "OpenStax"),
];
