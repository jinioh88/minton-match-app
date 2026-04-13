/// API `interestLoc` 예시와 맞춘 행정구역 코드 프리셋 (데모·간단 선택기용).
typedef KoreaRegionPreset = ({String code, String label});

const List<KoreaRegionPreset> koreaRegionPresets = [
  (code: '1159010500', label: '서울 영등포구'),
  (code: '1168010100', label: '서울 강남구'),
  (code: '1174010100', label: '서울 강동구'),
  (code: '1130510100', label: '서울 노원구'),
  (code: '1168010800', label: '서울 서초구'),
  (code: '2644010100', label: '부산 해운대구'),
  (code: '2914010100', label: '광산구 일대'),
  (code: '4113510300', label: '성남시 분당구'),
];

String regionCodeLabel(String? code) {
  if (code == null || code.isEmpty) return '-';
  for (final p in koreaRegionPresets) {
    if (p.code == code) return p.label;
  }
  return '코드 $code';
}
