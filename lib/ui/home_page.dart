import 'package:bookfinder/ui/books.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // var timeToday = TimeOfDay.now().toString();
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Column(
          children: [
            // Head Banner
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage("assets/images/pexels-0.jpg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Welcome to SBG Finder",
                        style: TextStyle(
                            fontFamily: 'Tangerine', color: Colors.white)),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Browse, find and manage ebooks for free",
                        style: TextStyle(
                            fontFamily: 'Tangerine', color: Colors.white)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(DateTime.now().toString()),
                  ),
                ],
              ),
            ),

            // Popular Column items
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    "Popular Now",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/popularBooksScreen');
                    },
                    child: const Text("See all")),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            // PopularBooks Row with ListView
            SizedBox(
              // width: double.infinity,
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  popularBookBox(popularBooks[0]),
                  popularBookBox(popularBooks[1]),
                  popularBookBox(popularBooks[2]),
                  popularBookBox(popularBooks[3]),
                  popularBookBox(popularBooks[4]),
                  popularBookBox(popularBooks[5]),
                ],
              ),
            ),

            ///////////////////
            // NewBooks Section
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "New Books",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                TextButton(onPressed: () {}, child: const Text("See more")),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            // NewBooks Row with ListView
            SizedBox(
              // width: double.infinity,
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  newBookBox(newBooks[0]),
                  newBookBox(newBooks[1]),
                  newBookBox(newBooks[2]),
                  newBookBox(newBooks[3]),
                  newBookBox(newBooks[4]),
                ],
              ),
            ), // NewBooks Section Ends

            // Recommended Books
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Recommended For You",
                            style: TextStyle(fontSize: 20)),
                        TextButton(
                            onPressed: () {}, child: const Text("See all")),
                      ],
                    ),
                  ),
                  // First recommdended book ends
                  recommededBookBox(recommendedBooks[14]),
                  recommededBookBox(recommendedBooks[0]),
                  recommededBookBox(recommendedBooks[1]),
                  recommededBookBox(recommendedBooks[2]),
                  recommededBookBox(recommendedBooks[3]),
                  recommededBookBox(recommendedBooks[5]),
                  recommededBookBox(recommendedBooks[4]),
                  recommededBookBox(recommendedBooks[6]),
                  recommededBookBox(recommendedBooks[7]),
                  recommededBookBox(recommendedBooks[8]),
                  recommededBookBox(recommendedBooks[9]),
                  recommededBookBox(recommendedBooks[10]),
                  recommededBookBox(recommendedBooks[11]),
                  recommededBookBox(recommendedBooks[12]),
                  recommededBookBox(recommendedBooks[13]),
                ],
              ),
            )
          ],
        ),
      ),
    );
    // Body Ends;
  }
}

// Methods below
// Popular Books Box method
Widget popularBookBox(Book popularBooks) {
  // debugPrint("image url: ${popularBooks.bookCover}.jpg");
  return Container(
    padding: const EdgeInsets.all(15.0),
    width: 180,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 180,
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(popularBooks.bookCover),
                  fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Expanded(
          child: Text(
            "${popularBooks.bookTitle} by ${popularBooks.author} (${popularBooks.yearPublished})",
            style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 14),
          ),
        )
      ],
    ),
  );
}

// New Books Box method
Widget newBookBox(Book newBooks) {
  // debugPrint("image url: ${newBooks.bookCover}.jpg");
  return Container(
    padding: const EdgeInsets.all(15.0),
    width: 151,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 150,
          height: 200,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(newBooks.bookCover), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Expanded(
          child: Text(
            "${newBooks.bookTitle} by ${newBooks.author} (${newBooks.yearPublished})",
            style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 14),
          ),
        )
      ],
    ),
  );
}

// Recommended Book Box
Widget recommededBookBox(RecommendedBook recommendedBooks) {
  return Padding(
    padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
    child: SizedBox(
      width: double.infinity,
      height: 200,
      child: Row(
        children: [
          Container(
            // Image Container
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  image: NetworkImage(recommendedBooks.bookCover),
                  fit: BoxFit.cover),
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(recommendedBooks.bookTitle,
                      style: const TextStyle(
                          fontSize: 14.0, fontStyle: FontStyle.normal)),
                  Text(
                      "Author(s): ${recommendedBooks.author} (${recommendedBooks.yearPublished})"),
                  Text("Category: ${recommendedBooks.category}"),
                  Flexible(
                      child: Text(recommendedBooks.description,
                          style: const TextStyle(fontStyle: FontStyle.italic),
                          overflow: TextOverflow.ellipsis)),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: TextButton(
                              onPressed: () {},
                              child: const Text("View Details")),
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            child: Text(
                                "Get on ${recommendedBooks.sourceLibrary}")),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}

// RecommendedBook List
// Didn't work
// So I'm using the recommemdedBooksBox for now
List<Widget> recommededBooksList(List<dynamic> recommendedBooks) {
  List<Widget> recommendedList = [];
  for (var book in recommendedBooks) {
    recommendedList.add(Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
      child: SizedBox(
        width: double.infinity,
        height: 200,
        child: Row(
          children: [
            Container(
              // Image Container
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: NetworkImage(book.bookCover), fit: BoxFit.cover),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(book.bookTitle,
                        style: const TextStyle(fontSize: 14.0)),
                    Text("Author(s): ${book.author} (${book.yearPublished})"),
                    Text("Category: ${book.category}"),
                    Flexible(
                        child: Text(book.description,
                            style: const TextStyle(fontStyle: FontStyle.italic),
                            overflow: TextOverflow.ellipsis)),
                    Expanded(
                      flex: 1,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: TextButton(
                                onPressed: () {},
                                // onPressed: () => showModalBottomSheet(
                                //     // isScrollControlled: true,
                                //     shape: const RoundedRectangleBorder(
                                //       borderRadius: BorderRadius.vertical(
                                //           top: Radius.circular(16)),
                                //     ),
                                //     builder: (context) =>
                                //         bookDetailsSheet()),
                                child: Container(
                                    decoration: const BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: const Text("View Details"))),
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text("Get book at ${book.sourceLibrary}")),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
  return recommendedList;
}

Widget bookDetailsSheet() {
  return ListView(
    children: [
      Row(
        // mainAxisAlignment: M
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("Book Details",
                style: TextStyle(color: Colors.green, fontSize: 18)),
          ),
          IconButton(
              icon: const Icon(Icons.clear),
              onPressed: () {
                // Navigator.pop(BuildContext context);
              }),
        ],
      ),
      Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextField(
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                prefixIcon: const Icon(Icons.search_outlined),
                hintText: "Type keyword here to search",
                suffixIcon: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.clear))),
            // controller: searchController,
          ),
        ),
      ),
    ],
  );
}

// // Initial Popular Book Container Design

// Second Column item
// SizedBox(
//   width: double.infinity,
//   child: ListView(
//     scrollDirection: Axis.horizontal,
//     children: [
//       // First Pop Book
//       Padding(
//         padding: const EdgeInsets.only(right: 15.0),
//         child: Container(
//           width: 150,
//           height: 200,
//           decoration: BoxDecoration(
//               image: const DecorationImage(
//                   image: AssetImage("assets/images/pexels-5.jpg"),
//                   fit: BoxFit.cover),
//               borderRadius: BorderRadius.circular(10)),
//         ),
//       ),
//       // Second Popular Book
//       Padding(
//         padding: const EdgeInsets.only(right: 15.0),
//         child: Container(
//           width: 150,
//           height: 200,
//           decoration: BoxDecoration(
//               image: const DecorationImage(
//                   image: AssetImage("assets/images/pexels-4.jpg"),
//                   fit: BoxFit.cover),
//               borderRadius: BorderRadius.circular(10)),
//         ),
//       ),
//       // Third Popular Book
//       Padding(
//         padding: const EdgeInsets.only(right: 15.0),
//         child: Container(
//           width: 150,
//           height: 200,
//           decoration: BoxDecoration(
//               image: const DecorationImage(
//                   image: AssetImage("assets/images/pexels-3.jpg"),
//                   fit: BoxFit.cover),
//               borderRadius: BorderRadius.circular(10)),
//         ),
//       ),
//       // Fourth Popular Book
//       Padding(
//         padding: const EdgeInsets.only(right: 15.0),
//         child: Container(
//           width: 150,
//           height: 200,
//           decoration: BoxDecoration(
//               image: const DecorationImage(
//                   image: AssetImage("assets/images/pexels-2.jpg"),
//                   fit: BoxFit.cover),
//               borderRadius: BorderRadius.circular(10)),
//         ),
//       ),
//       // Last Popular Book
//       Padding(
//         padding: const EdgeInsets.only(right: 15.0),
//         child: Container(
//           width: 150,
//           height: 200,
//           decoration: BoxDecoration(
//               image: const DecorationImage(
//                   image: AssetImage("assets/images/pexels-3.jpg"),
//                   fit: BoxFit.cover),
//               borderRadius: BorderRadius.circular(10)),
//         ),
//       ),
//     ],
//   ),
// ),
