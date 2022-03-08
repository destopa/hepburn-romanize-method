#!/usr/bin/pike

#include "HIRAKANA_hepburn.h"

void main()
{
    // Fichero de entrada
    string fjap = "Japones.txt";
    string utf8 = Stdio.read_bytes(fjap);  
    
    // Creamos el fichero de salida
    string roma = "Romanji.txt";
    Stdio.write_file(roma, romanize_jap_to_hirakana(utf8));
}


void out(string t)
{
   Stdio.stdout.write(t+"\n");
}

    string romanize_jap_to_hirakana(string jap)
    {
        mapping hir2lat=([]);

        hir2lat = hirakana + numbers + puntuation;
        //out("HIRA A LATIN: "+sprintf("%O",hir2lat));

        //mapping lat2hir=mkmapping(values(hir2lat), indices(hir2lat));
        //out("LATIN A HIRA: "+sprintf("%O",lat2hir));

       return replace(jap, hir2lat);
    }
    string romanize_jap_to_katakana(string jap)
    {
        mapping kat2lat=([]);

        kat2lat = katakana + numbers + puntuation;
        //out("KATA A LATIN: "+sprintf("%O",hir2lat));

        //mapping lat2hir=mkmapping(values(kat2lat), indices(kat2lat));
        //out("LATIN A KATA: "+sprintf("%O",lat2kat));

        return replace(jap, kat2lat);
    }
    string deromanize_hirakana(string latin)
    {
        mapping hir2lat=([]);

        hir2lat = hirakana + numbers + puntuation;
        //out("HIRA A LATIN: "+sprintf("%O",hir2lat));

        mapping lat2hir=mkmapping(values(hir2lat), indices(hir2lat));
        //out("LATIN A HIRA: "+sprintf("%O",lat2hir));

        return replace(latin, lat2hir);
    }
    string deromanize_katakana(string latin)
    {
        mapping kat2lat=([]);

        kat2lat = katakana + numbers + puntuation;
        //out("KATA A LATIN: "+sprintf("%O",kat2lat));

        mapping lat2kat=mkmapping(values(kat2lat), indices(kat2lat));
        //out("LATIN A KATA: "+sprintf("%O",lat2hir));

        return replace(latin, lat2kat);
    }

    
