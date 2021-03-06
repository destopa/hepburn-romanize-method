// Mappings per romanitzar japones al silabari llati (Sons segons la norma hepburn)
// puntuation 
// numbers  - Numeros del 0 al 9 (ojo) no pot traduirse un numero major aixi
// katakana - alfabet per extrangerismes
// hirakana - alfabet normal

mapping(string:string) puntuation = ([ "（":"(", "）":")", "「":"«", "」":"»", "『":"«", "』":"»",  "〔":"«", "〕":"»", "［":"«", "］":"»", "〈":"«", "〉":"»", 
	                                   "《":"«", "》":"»",  "【":"«", "】":"»", "〖":"«", "〗":"»", "〘":"«", "〙":"»", "〚":"«", "〛":"»" ]);

mapping(string:string) numbers = ([ "零":"0", "一":"1", "二":"2", "三":"3", "四":"4", "五":"5", "六":"6", "七":"7", "八":"8", "九":"9" ]);

mapping(string:string) katakana = ([
"ア":"a",
"イ":"i",
"ウ":"u",
"エ":"e",
"オ":"o",
"カ":"ka",
// キkiクkuケkeコkoサsaシshiスsuセseソsoタtaチchiツtsuっtテteトtoナnaニniヌnuネneノnoハhaヒhiフfuヘheホhoマmaミmiムmuメmeモmoヤyaユyuヨyoラraリriルruレreロroワwaヰwiヱweヲwoンnガgaギgiグguゲgeゴgoザzaジjiズzuゼzeゾzoダdaヂjiヅzuデdeドdoバbaビbiブbuベbeボboパpaピpiプpuペpeポpoキャkyaキュkyuキョkyoシャshaシュshuショshoニャnyaニュnyuニョnyoヒャhyaヒュhyuヒョhyoミャmyaミュmyuミョmyoリャryaリュryuリョryoギャgyaギュgyuギョgyoジャjaジュjuジョjoヂャjaヂュjuヂョjoチャchaチュchuチョchoビャbyaビュbyuビョbyoピャpyaピュpyuピョpyo
]);

mapping(string:string) hirakana = ([ 
"あ":"a",
"い":"i",
"う":"u",
"え":"e",
"お":"o",
"か":"ka",
"き":"ki",
"く":"ku",
"け":"ke",
"こ":"ko",
"さ":"sa",
"し":"shi",
"す":"su",
"せ":"se",
"そ":"so",
"た":"ta",
"ち":"chi",
"つ":"tsu",
"っ":"t",
"て":"te",
"と":"to",
"な":"na",
"に":"ni",
"ぬ":"nu",
"ね":"ne",
"の":"no",
"は":"ha",
"ひ":"hi",
"ふ":"fu",
"へ":"he",
"ほ":"ho",
"ま":"ma",
"み":"mi",
"む":"mu",
"め":"me",
"も":"mo",
"や":"ya",
"ゆ":"yu",
"よ":"yo",
"ら":"ra",
"り":"ri",
"る":"ru",
"れ":"re",
"ろ":"ro",
"わ":"wa",
"ゐ":"wi",
"ゑ":"we",
"を":"wo",
"ん":"n",
"が":"ga",
"ぎ":"gi",
"ぐ":"gu",
"げ":"ge",
"ご":"go",
"ざ":"za",
"じ":"ji",
"ず":"zu",
"ぜ":"ze",
"ぞ":"zo",
"だ":"da",
"ぢ":"ji",
"づ":"zu",
"で":"de",
"ど":"do",
"ば":"ba",
"び":"bi",
"ぶ":"bu",
"べ":"be",
"ぼ":"bo",
"ぱ":"pa",
"ぴ":"pi",
"ぷ":"pu",
"ぺ":"pe",
"ぽ":"po",
"きゃ":"kya",
"きゅ":"kyu",
"きょ":"kyo",
"しゃ":"sha",
"しゅ":"shu",
"しょ":"sho",
"ちゃ":"cha",
"ちゅ":"chu",
"ちょ":"cho",
"にゃ":"nya",
"にゅ":"nyu",
"にょ":"nyo",
"ひゃ":"hya",
"ひゅ":"hyu",
"ひょ":"hyo",
"みゃ":"mya",
"みゅ":"myu",
"みょ":"myo",
"りゃ":"rya",
"りゅ":"ryu",
"りょ":"ryo",
"ぎゃ":"gya",
"ぎゅ":"gyu",
"ぎょ":"gyo",
"じゃ":"ja",
"じゅ":"ju",
"じょ":"jo",
"ぢゃ":"ja",
"ぢゅ":"ju",
"ぢょ":"jo",
"びゃ":"bya",
"びゅ":"byu",
"びょ":"byo",
"ぴゃ":"pya",
"ぴゅ":"pyu",
"ぴょ":"pyo" ]);
