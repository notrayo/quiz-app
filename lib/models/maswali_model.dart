class Maswali {
  const Maswali(this.swali, this.majibu);

  final String swali;
  final List<String> majibu;

  //shuffled list, to avoid changing the original list

  List<String> getShuffledMajibu() {
    final shuffledList = List.of(majibu);
    shuffledList.shuffle();
    return shuffledList;
  }
}
