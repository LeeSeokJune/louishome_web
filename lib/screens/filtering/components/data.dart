enum Category {
  PETFOOD(
      name: '사료',
      subtitle: ['ALL', '건식', '습식', '자연식', '동결건조/에어드라이', '처방식', '토퍼/믹서']),
  SNACK(name: '간식', subtitle: []),
  NUTRIENTS(name: '영양제', subtitle: []),
  TOYS(name: '장난감', subtitle: []),
  LEASHES(name: '목줄/리드줄/하네스', subtitle: []),
  WALKING(name: '산책용품', subtitle: []),
  BEAUTY(name: '미용/위생 용품', subtitle: []),
  DEFECATION(name: '배변', subtitle: []),
  FASHION(name: '미용/위생 용품', subtitle: []),
  HOME(name: '홈/리빙', subtitle: []),
  CARRIERS(name: '이동장', subtitle: []),
  ;

  const Category({required this.name, required this.subtitle});
  final String name;
  final List subtitle;
}
