//
//  appendData.swift
//  LearnEnglish
//
//  Created by mac on 17/11/22.
//

import Foundation

struct Convert{
    
    let From:String
    let To:String
    
    init(from:String , to:String){
        From = from
        To = to
    }
}

struct Words{
    
    let English:String
    let Gujrati:String
    let Hindi:String
    let Tamil:String
    
    init(eng:String , guj:String,hindi:String , tamil:String){
        English = eng
        Gujrati = guj
        Hindi = hindi
        Tamil = tamil
    }
}

struct Sentence{
    
    let English:String
    let Gujrati:String
    let Hindi:String
    let Tamil:String
    
    init(eng:String , guj:String,hindi:String , tamil:String){
        English = eng
        Gujrati = guj
        Hindi = hindi
        Tamil = tamil
    }
}


struct Vowels {
    
    let Gujrati:String
    let English:String
    
    init(Guj:String , Eng:String){
        Gujrati = Guj
        English = Eng
    }
}
extension ConsonentsVC{
    
    func appendVovelsFromGujrati(){
        
        listVovels.append(Vowels(Guj: "બી", Eng: "B"))
        listVovels.append(Vowels(Guj: "સી ", Eng: "C"))
        listVovels.append(Vowels(Guj: "ડી ", Eng: "D"))
        listVovels.append(Vowels(Guj: "એફ ", Eng: "F"))
        listVovels.append(Vowels(Guj: "જી ", Eng: "G"))
        listVovels.append(Vowels(Guj: "એસ", Eng: "H"))
        listVovels.append(Vowels(Guj: "જે", Eng: "J"))
        listVovels.append(Vowels(Guj: "કે", Eng: "K"))
        listVovels.append(Vowels(Guj: "એલ", Eng: "L"))
        listVovels.append(Vowels(Guj: "એમ ", Eng: "M"))
        listVovels.append(Vowels(Guj: "એન ", Eng: "N"))
        listVovels.append(Vowels(Guj: "પી", Eng: "P"))
        listVovels.append(Vowels(Guj: "ક્યુ", Eng: "Q"))
        listVovels.append(Vowels(Guj: "આર", Eng: "R"))
        listVovels.append(Vowels(Guj: "એસ", Eng: "S"))
        listVovels.append(Vowels(Guj: "ટી", Eng: "T"))
        listVovels.append(Vowels(Guj: "વી", Eng: "V"))
        listVovels.append(Vowels(Guj: "ડબલ્યુ", Eng: "W"))
        listVovels.append(Vowels(Guj: "એક્સ", Eng: "X"))
        listVovels.append(Vowels(Guj: "વાય", Eng: "Y"))
        listVovels.append(Vowels(Guj: "ઝેડ", Eng: "Z"))
       
    }
    func appendVovelsFromHindi(){
        
        listVovels.append(Vowels(Guj: "बी ", Eng: "B"))
        listVovels.append(Vowels(Guj: "सी ", Eng: "C"))
        listVovels.append(Vowels(Guj: "डी ", Eng: "D"))
        listVovels.append(Vowels(Guj: "एफ़ ", Eng: "F"))
        listVovels.append(Vowels(Guj: "जी ", Eng: "G"))
        listVovels.append(Vowels(Guj: "एच ", Eng: "H"))
        listVovels.append(Vowels(Guj: "जे ", Eng: "J"))
        listVovels.append(Vowels(Guj: "के ", Eng: "K"))
        listVovels.append(Vowels(Guj: "एल ", Eng: "L"))
        listVovels.append(Vowels(Guj: "एम ", Eng: "M"))
        listVovels.append(Vowels(Guj: "एन ", Eng: "N"))
        listVovels.append(Vowels(Guj: "पी ", Eng: "P"))
        listVovels.append(Vowels(Guj: "क्यू ", Eng: "Q"))
        listVovels.append(Vowels(Guj: "आर ", Eng: "R"))
        listVovels.append(Vowels(Guj: "एस ", Eng: "S"))
        listVovels.append(Vowels(Guj: "टी ", Eng: "T"))
        listVovels.append(Vowels(Guj: "वी ", Eng: "V"))
        listVovels.append(Vowels(Guj: "डबल्यू ", Eng: "W"))
        listVovels.append(Vowels(Guj: "एक्स ", Eng: "X"))
        listVovels.append(Vowels(Guj: "वाय ", Eng: "Y"))
        listVovels.append(Vowels(Guj: "ज़ेड ", Eng: "Z"))
    }
    func appendVovelsFromTamil(){
        
        listVovels.append(Vowels(Guj: "பி", Eng: "B"))
        listVovels.append(Vowels(Guj: "சி", Eng: "C"))
        listVovels.append(Vowels(Guj: "டி", Eng: "D"))
        listVovels.append(Vowels(Guj: "எஃப்", Eng: "F"))
        listVovels.append(Vowels(Guj: "ஜி", Eng: "G"))
        listVovels.append(Vowels(Guj: "எச்", Eng: "H"))
        listVovels.append(Vowels(Guj: "ஜே", Eng: "J"))
        listVovels.append(Vowels(Guj: "கே", Eng: "K"))
        listVovels.append(Vowels(Guj: "எல்", Eng: "L"))
        listVovels.append(Vowels(Guj: "எம்", Eng: "M"))
        listVovels.append(Vowels(Guj: "என்", Eng: "N"))
        listVovels.append(Vowels(Guj: "பி", Eng: "P"))
        listVovels.append(Vowels(Guj: "கே", Eng: "Q"))
        listVovels.append(Vowels(Guj: "ஆர்", Eng: "R"))
        listVovels.append(Vowels(Guj: "எஸ்", Eng: "S"))
        listVovels.append(Vowels(Guj: "டி", Eng: "T"))
        listVovels.append(Vowels(Guj: "வி", Eng: "V"))
        listVovels.append(Vowels(Guj: "டபிள்யூ", Eng: "W"))
        listVovels.append(Vowels(Guj: "எக்ஸ்", Eng: "X"))
        listVovels.append(Vowels(Guj: "ஒய்", Eng: "Y"))
        listVovels.append(Vowels(Guj: "மண்டலம்", Eng: "Z"))
    }

}


extension VowelsVC{
    
    func appendVovelsFromGujrati(){
        
        listVovels.append(Vowels(Guj: "એ", Eng: "A"))
        listVovels.append(Vowels(Guj: "ઇ", Eng: "E"))
        listVovels.append(Vowels(Guj: "આઇ", Eng: "I"))
        listVovels.append(Vowels(Guj: "ઓ", Eng: "O"))
        listVovels.append(Vowels(Guj: "ઉ", Eng: "U"))
       
    }
    func appendVovelsFromHindi(){
        
        listVovels.append(Vowels(Guj: "ए", Eng: "A"))
        listVovels.append(Vowels(Guj: "इ", Eng: "E"))
        listVovels.append(Vowels(Guj: "आइ", Eng: "I"))
        listVovels.append(Vowels(Guj: "ओ ", Eng: "O"))
        listVovels.append(Vowels(Guj: "यु", Eng: "U"))
       
    }
    func appendVovelsFromTamil(){
        
        listVovels.append(Vowels(Guj: "ஏ", Eng: "A"))
        listVovels.append(Vowels(Guj: "எ", Eng: "E"))
        listVovels.append(Vowels(Guj: "இ", Eng: "I"))
        listVovels.append(Vowels(Guj: "ஒ ", Eng: "O"))
        listVovels.append(Vowels(Guj: "உ", Eng: "U"))
       
    }
}

extension SentenceVC{
    
    func appendSentence(){
        arrSentence.append(Sentence(eng: "Hello Nick How Are You", guj: "હેલો નિક તમે કેમ છો", hindi: "हैलो निक आप कैसे हैं", tamil: "ஹலோ நிக் எப்படி இருக்கிறீர்கள்"))
        arrSentence.append(Sentence(eng: "My name is nick", guj: "મારું નામ નિક છે", hindi: "मेरा नाम निक है", tamil: "என் பெயர் நிக்"))
        arrSentence.append(Sentence(eng: "how can i help you", guj: "હું આપની શું મદદ કરી શકું", hindi: "मैं आपकी क्या मदद कर सकता हूँ", tamil: "நான் உங்களுக்கு எப்படி உதவ முடியும்"))
        arrSentence.append(Sentence(eng: "nice to meet you", guj: "તમને મળીને આનંદ થયો", hindi: "आपसे मिलकर अच्छा लगा", tamil: "உங்களை சந்தித்ததில் மகிழ்ச்சி"))
        arrSentence.append(Sentence(eng: "have a good day", guj: "તમારો દિવસ શુભ રહે", hindi: "आपका दिन शुभ हो", tamil: "இந்த நாள் இனிய நாளாகட்டும்"))
        arrSentence.append(Sentence(eng: "Hi, my name is Teena. What is your name?", guj: "હાય, મારું નામ ટીના છે. તમારું નામ શું છે?", hindi: "हाय, मेरा नाम टीना है। तुम्हारा नाम क्या हे?", tamil: "வணக்கம், என் பெயர் டீனா. உங்கள் பெயர் என்ன?"))
        arrSentence.append(Sentence(eng: "It was nice meeting you. Take care.", guj: "તમને મળીને આનંદ થયો. કાળજી રાખજો.", hindi: "आपसे मिल कर अच्छा लगा। देखभाल करना।", tamil: "உங்களை சந்தித்ததில் மகிழ்ச்சியாக இருந்தது. பார்த்துக்கொள்ளுங்கள்."))
        arrSentence.append(Sentence(eng: "have a good day", guj: "તમારો દિવસ શુભ રહે", hindi: "आपका दिन शुभ हो", tamil: "இந்த நாள் இனிய நாளாகட்டும்"))
    }
}


extension WordsVC{
    func apendData(){
    
        arrWordCatagory.append(Words(eng: "Cat", guj: "બિલાડી", hindi: "बिल्ली", tamil: "பூனை"))
        arrWordCatagory.append(Words(eng: "Dog", guj: "કૂતરો", hindi: "कुत्ता", tamil: "நாய்"))
        arrWordCatagory.append(Words(eng: "Tree", guj: "વૃક્ષ", hindi: "पेड़", tamil: "மரம்"))
        arrWordCatagory.append(Words(eng: "river", guj: "નદી", hindi: "नदी", tamil: "நதி"))
        arrWordCatagory.append(Words(eng: "Sun", guj: "સૂર્ય", hindi: "रवि", tamil: "சூரியன்"))
        arrWordCatagory.append(Words(eng: "Sea", guj: "સમુદ્ર", hindi: "समुद्र", tamil: "கடல்"))
        arrWordCatagory.append(Words(eng: "Spring", guj: "ઝરણું", hindi: "वसंत", tamil: "வசந்த"))
        arrWordCatagory.append(Words(eng: "people", guj: "લોકો", hindi: "लोग", tamil: "மக்கள்"))
        arrWordCatagory.append(Words(eng: "Goat", guj: "બકરી", hindi: "बकरी", tamil: "வெள்ளாடு"))
    }
}
