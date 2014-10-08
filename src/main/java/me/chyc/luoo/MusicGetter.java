package me.chyc.luoo;

import me.chyc.http.WebPageGetter;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;

import java.io.BufferedWriter;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by yicun.chen on 9/21/14.
 */
public class MusicGetter {
    public static Journal getJournal(int no) throws Exception {
        Journal journal = new Journal(no);


        String url = "http://www.luoo.net/music/" + no;
        String html = WebPageGetter.getWebPage(url, "UTF8");
        Document jour = Jsoup.parse(html);

        Element container = jour.getElementsByAttributeValue("class", "container ct-sm").first();
        if (container == null)
            return null;

        Element h1 = jour.select("h1.vol-name").first();
        int vol_number = Integer.valueOf(h1.select("span.vol-number").first().text());
        String vol_title = h1.select("span.vol-title").first().text();
        List<String> vol_tags = new ArrayList<String>();
        for (Element element : jour.getElementsByAttributeValue("class", "vol-tag-item"))
            vol_tags.add(element.text());
        String vol_cover = jour.getElementsByAttributeValue("class", "vol-cover").first().attr("src");
        String vol_desc = jour.getElementsByAttributeValue("class", "vol-desc").first().text();

        journal.setVol_cover(vol_cover);
        journal.setVol_desc(vol_desc);
        journal.setVol_name(vol_title);
        journal.setVol_tags(vol_tags);


        List<Song> vol_songs = new ArrayList<Song>();
        for (Element element : jour.getElementsByAttributeValue("class", "track-item rounded")) {
            Element el = element.select("div.track-detail-wrapper").first();
            int id = Integer.valueOf(el.getElementsByAttributeValue("class", "track-detail-wrapper").first().attr("id").replaceAll("[^0-9]", ""));
            String name = el.getElementsByAttributeValue("class", "name").first().text();
            String artist = el.getElementsByAttributeValue("class", "artist").first().text().replace("Artist: ", "");
            String album = el.getElementsByAttributeValue("class", "album").first().text().replace("Album: ", "");
            Song song = new Song(id, name, artist, album);

//            System.out.println(song.toJson().toString());
            vol_songs.add(song);
        }

        journal.setVol_songs(vol_songs);
//        System.out.println(journal.toJson().toString());
        return journal;
    }

    public static void main(String args[]) throws Exception {
        BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream("luoo/src/main/resources/all.journal")));
        for (int i = 1; i <= 651; i++) {
            Journal journal = getJournal(i);
            if (journal == null)
                continue;
            System.out.println("No." + i + ":\t" + journal.getVol_name());
            bw.write(journal.toJson().toString());
            bw.newLine();
            bw.flush();
        }
    }

}
