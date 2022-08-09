part of 'pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(height: edge),
            //* TITLE/HEADER
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Explore Now",
                style: whiteTextStyle.copyWith(fontSize: 24),
              ),
            ),
            const SizedBox(height: 2),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Streaming Anime Sub Indo Terbaru",
                style: greyTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 30),
            //* Ongoing Anime
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Ongoing Anime",
                style: whiteTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(width: 24),
                  AnimeCard(OngoingAnime(
                      id: 1,
                      imageUrl: 'assets/anime1.png',
                      episode: 1,
                      name: 'One Piece')),
                  const SizedBox(width: 18),
                  AnimeCard(OngoingAnime(
                      id: 1,
                      imageUrl: 'assets/anime2.png',
                      episode: 1,
                      name: 'Overlord Season IV')),
                  const SizedBox(width: 18),
                  AnimeCard(OngoingAnime(
                      id: 1,
                      imageUrl: 'assets/anime3.png',
                      episode: 1,
                      name: 'Spy X Family')),
                  const SizedBox(width: 18),
                  AnimeCard(OngoingAnime(
                      id: 1,
                      imageUrl: 'assets/anime4.png',
                      episode: 1,
                      name: 'Attack on Titan Season IV')),
                  const SizedBox(width: 24),
                ],
              ),
            ),
            const SizedBox(height: 15),
            //* COMPLETE ANIME
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Ongoing Anime",
                style: whiteTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
      // NAVIGATION
      // floatingActionButton: Container(
      //   height: 65,
      //   width: MediaQuery.of(context).size.width - (2 * edge),
      //   margin: EdgeInsets.symmetric(horizontal: edge),
      //   decoration: BoxDecoration(
      //     color: const Color(0xffF6F7F8),
      //     borderRadius: BorderRadius.circular(23),
      //   ),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceAround,
      //     children: [],
      //   ),
      // ),
    );
  }
}
