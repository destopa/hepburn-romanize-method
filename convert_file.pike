#!/usr/bin/pike

string THIS_PIKE_SCRIPT_DIR=getcwd();

void main()
{
    string fjap = "Japanese.txt";
    string utf8 = Stdio.read_bytes(fjap);  
    
    string roma = "Romanji.txt";
    Stdio.write_bytes(romanize_jap_to_hirakana(utf8));
}

string romanize_jap_to_hirakana(string jap)
    {
        mapping hir2lat=([]);

        string f_h=combine_path(THIS_PIKE_SCRIPT_DIR, "HIRAKANA_hepburn.h");
        if (!Stdio.is_file(f_h))
        {
            out("ERROR: No se encuentra el fichero "+f_h);
            exit(1);
        }

        program p=compile_file(f_h);

        hir2lat = p()->hirakana + p()->numbers + p()->puntuation;
        //out("HIRA A LATIN: "+sprintf("%O",hir2lat));

        //mapping lat2hir=mkmapping(values(hir2lat), indices(hir2lat));
        //out("LATIN A HIRA: "+sprintf("%O",lat2hir));

       return replace(jap, hir2lat);
    }
    string romanize_jap_to_katakana(string jap)
    {
        mapping kat2lat=([]);

        string f_h=combine_path(THIS_PIKE_SCRIPT_DIR, "HIRAKANA_hepburn.h");
        if (!Stdio.is_file(f_h))
        {
            out("ERROR: No se encuentra el fichero "+f_h);
            exit(1);
        }

        program p=compile_file(f_h);

        kat2lat = p()->katakana + p()->numbers + p()->puntuation;
        //out("KATA A LATIN: "+sprintf("%O",hir2lat));

        //mapping lat2hir=mkmapping(values(kat2lat), indices(kat2lat));
        //out("LATIN A KATA: "+sprintf("%O",lat2kat));

        return replace(jap, kat2lat);
    }
    string deromanize_hirakana(string latin)
    {
        mapping hir2lat=([]);

        string f_h=combine_path(THIS_PIKE_SCRIPT_DIR, "HIRAKANA_hepburn.h");
        if (!Stdio.is_file(f_h))
        {
            out("ERROR: No se encuentra el fichero "+f_h);
            exit(1);
        }

        program p=compile_file(f_h);

        hir2lat = p()->hirakana + p()->numbers + p()->puntuation;
        //out("HIRA A LATIN: "+sprintf("%O",hir2lat));

        mapping lat2hir=mkmapping(values(hir2lat), indices(hir2lat));
        //out("LATIN A HIRA: "+sprintf("%O",lat2hir));

        return replace(latin, lat2hir);
    }
    string deromanize_katakana(string latin)
    {
        mapping kat2lat=([]);

        string f_h=combine_path(THIS_PIKE_SCRIPT_DIR, "HIRAKANA_hepburn.h");
        if (!Stdio.is_file(f_h))
        {
            out("ERROR: No se encuentra el fichero "+f_h);
            exit(1);
        }

        program p=compile_file(f_h);

        kat2lat = p()->katakana + p()->numbers + p()->puntuation;
        //out("KATA A LATIN: "+sprintf("%O",kat2lat));

        mapping lat2kat=mkmapping(values(kat2lat), indices(kat2lat));
        //out("LATIN A KATA: "+sprintf("%O",lat2hir));

        return replace(latin, lat2kat);
    }
