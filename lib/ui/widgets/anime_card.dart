part of 'widgets.dart';

class AnimeCard extends StatelessWidget {
  final OngoingAnime ongoingAnime;

  AnimeCard(this.ongoingAnime);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        width: 100,
        height: 170,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    ongoingAnime.imageUrl!,
                    height: 140,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    height: 13,
                    width: 41,
                    decoration: BoxDecoration(
                      color: purpleColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(8),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Episdoe ${ongoingAnime.episode!}",
                        style: whiteTextStyle.copyWith(fontSize: 5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 3),
            Center(
              child: Text(
                ongoingAnime.name!,
                style: whiteTextStyle.copyWith(fontSize: 10),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
