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
      "https://images.thalia.media/00/-/3b61c0fac5e4434180305644aca2014e/a-court-of-mist-and-fury-taschenbuch-sarah-j-maas-englisch.jpeg"),
  Book("Harry Potter und der Feuerkelch", "J. K. Rowling", "1999", "Fiction",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCckcL8H3dQOqDC0rph3LbW0W-4Ey6MEAiKw&usqp=CAU"),
  Book("The Gruffalo", "Julia Donaldson", "1999", "Fiction",
      "https://pictures.abebooks.com/inventory/md/md31497786270.jpg"),
  Book("The Wrong Wife", "Carolyn McSparren", "2000", "Romance",
      "https://m.media-amazon.com/images/I/51U3VyVA0ML._SY346_.jpg"),
  Book("A kingdom of dreams", "Judith McNaught", "1989", "Romance",
      "https://i.ebayimg.com/images/g/a7sAAOSweyRkPCdV/s-l500.jpg"),
  Book(
      "The Seven Husbands of Evelyn Hugo",
      "Taylor Jenkins Reid",
      "2017",
      "Fiction",
      "https://m.media-amazon.com/images/I/51RUJq8gupL._SY264_BO1,204,203,200_QL40_ML2_.jpg"),
  Book("The Shining", "Stephen King", "1977", "Fiction",
      "https://drive.google.com/file/d/15o7_2EvB_gBW8oLKjnEJPNU2qzeIVni0/view?usp=drive_link")
];

List<Book> newBooks = [
  Book("Voice & speech in the theatre", "J. Clifford Turner", "1950", "Culture",
      "https://m.media-amazon.com/images/I/41CeEe4dVkL._SX322_BO1,204,203,200_.jpg"),
  Book(
      "King Arthur: The Making of the Legend",
      "Nicholas J. Higham",
      "2010",
      "History",
      "https://res.cloudinary.com/bookbub/image/upload/t_ci_ar_6:9_padded,f_auto,q_auto,dpr_1/v1670515114/pro_pbid_4259637.jpg"),
  Book("Those barren leaves", "Aldous Huxley", "1925", "Classic",
      "https://m.media-amazon.com/images/I/31l6uFhGAAS._SY291_BO1,204,203,200_QL40_FMwebp_.jpg"),
  Book("The savage pilgrimage", "Catherine Carswell", "1932", "Classic",
      "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1408939575i/8142412.jpg"),
  Book("The human polity", "Kay Lawson", "1984", "Political science",
      "https://m.media-amazon.com/images/I/51z1Qlg4+uL._SX409_BO1,204,203,200_.jpg"),
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
      "https://media.istockphoto.com/id/1236903031/photo/saving-money-for-future-growth-concept-water-being-poured-on-green-sprout-on-rows-of.jpg?b=1&s=612x612&w=0&k=20&c=E91Iz1QtznEfBH0W4XipeBMovrQdNcqWZzUbx9QLDkQ=",
      "This textbook is intended for use in introductory Entrepreneurship classes at the undergraduate level. Due to the wide range of audiences and course approaches, the book is designed to be as flexible as possible. Theoretical and practical aspects are presented in a balanced manner, and specific components such as the business plan are provided in multiple formats. Entrepreneurship aims to drive students toward active participation in entrepreneurial roles, and exposes them to a wide range of companies and scenarios.",
      "https://assets.openstax.org/oscms-prodcms/media/documents/Entrepreneurship-WEB_qNSArxT.pdf?_gl=1*4o7k0d*_ga*NjA1Mjg0NDU3LjE2ODk4NjIxNjY.*_ga_T746F8B0QC*MTY4OTg2MjE3MC4xLjEuMTY4OTg2MjM5OC41OS4wLjA.",
      "OpenStax"),
  RecommendedBook(
      "Principles of Microeconomics 3e",
      "David Shapiro, Daniel MacDonald, Steven A. Greenlaw",
      "2022",
      "Business",
      "https://media.istockphoto.com/id/471457150/photo/microeconomics-wordcloud-concept-illustration-glowing.jpg?b=1&s=612x612&w=0&k=20&c=6rRdLodAEQjKjLdiRUUMDXlPW41YKXRF9Rx-0BtxuhU=",
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
      "data:image/jpeg;base64,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",
      "Introduction to Intellectual Property provides a clear, effective introduction to patents, copyright, trademarks, and trade secrets. The text may be used by students and instructors in formal courses, as well as those applying intellectual property considerations to entrepreneurship, marketing, law, computer science, engineering, design, or other fields. The luminaries involved with this project represent the forefront of knowledge and experience, and the material offers considerable examples and scenarios, as well as exercises and references.",
      "https://assets.openstax.org/oscms-prodcms/media/documents/Introduction_to_Intellectual_Property_2PYaEdp.pdf?_gl=1*9iwybg*_ga*NjA1Mjg0NDU3LjE2ODk4NjIxNjY.*_ga_T746F8B0QC*MTY4OTg2MjE3MC4xLjEuMTY4OTg2MzQ0OC41OC4wLjA.",
      "OpenStax"),
  RecommendedBook(
      "Mind of the Leader: How to Lead Yourself, Your People, and Your Organization for Extraordinary Results",
      "Rasmus Hougaard",
      "2018",
      "Finance, Management",
      "https://m.media-amazon.com/images/I/41DkII2Dw4L._SX331_BO1,204,203,200_.jpg",
      "Join the global movement that's making corporations more people-centric to achieve great results. The world is facing a global leadership crisis. Seventy-seven percent of leaders think they do a good job of engaging their people, yet 88 percent of employees say their leaders don't engage enough. There is also a high level of suffering in the workplace: 35 percent of employees would forgo a pay raise to see their leaders fired. This is an enormous waste of human talent--despite the fact that \$46 billion is spent each year on leadership development. Based on extensive research, including assessments of more than 35,000 leaders and interviews with 250 C-level executives, The Mind of the Leader concludes that organizations and leaders aren't meeting employees' basic human needs of finding meaning, purpose, connection, and genuine happiness in their work. But more than a description of the problem, The Mind of the Leader offers a radical, yet practical, solution. To solve the leadership crisis, organizations need to put people at the center of their strategy. They need to develop managers and executives who lead with three core mental qualities: mindfulness, selflessness, and compassion. Using real-world inspirational examples from Marriott, Accenture, McKinsey & Company, LinkedIn, and many more, The Mind of the Leader shows how this new kind of leadership turns conventional leadership thinking upside down. It represents a radical redefinition of what it takes to be an effective leader--and a practical, hard-nosed solution to every organization's engagement and execution problems.",
      "https://www.amazon.de/Mind-Leader-Rasmus-Hougaard/dp/1633693422/ref=asc_df_1633693422/?tag=googshopde-21&linkCode=df0&hvadid=310779890634&hvpos=&hvnetw=g&hvrand=16910282578673381008&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1004351&hvtargid=pla-426021483056&psc=1&th=1&psc=1&tag=&ref=&adgrpid=70301320708&hvpone=&hvptwo=&hvadid=310779890634&hvpos=&hvnetw=g&hvrand=16910282578673381008&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=1004351&hvtargid=pla-426021483056",
      "Amazon")
];
