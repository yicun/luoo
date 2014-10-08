package me.chyc.luoo;

import me.chyc.http.WebPageGetter;
import org.json.JSONArray;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.io.*;

/**
 * Created by yicun.chen on 9/22/14.
 */
public class MusicDownloader {
    public static void main(String args[]) throws Exception {
        BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(new File("luoo/src/main/resources/all.journal"))));
        String line;


        while ((line = br.readLine()) != null) {
            JSONObject journal = new JSONObject(line);
            int no = journal.getInt(Constant.VOL_NUMBER);
            File dir = new File("luoo/src/main/resources/journals/" + no + "/");
            if (!dir.exists() || !dir.isDirectory())
                dir.mkdirs();

            BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(dir.getAbsolutePath() + "/run.sh")));
            bw.write("#!/bin/bash\n\n");
            bw.write("mkdir -p " + dir.getAbsolutePath() + "\n");
            bw.write("cd " + dir.getCanonicalPath() + "\n\n");
            bw.flush();

            JSONArray songs = journal.getJSONArray(Constant.VOL_SONGS);
            for (int i = 0; !songs.isNull(i); i++) {
                JSONObject song = songs.getJSONObject(i);
                String name = song.getString(Constant.SONG_NAME);

                String artist = song.getString(Constant.SONG_ARTIST);

                System.out.println(name + "\t" + artist);
                bw.write("## No." + i + "\t" + name + "\t" + artist + "\n");
                String surl = "http://box.zhangmen.baidu.com/x?op=12&count=1&title=" + name.replace("  ", " ").replace(" ", "%20") + "$$" + artist.replace("  ", " ").replace(" ", "%20") + "$$$$";
                bw.write("## URL:\t" + surl + "\n");
                System.out.println(surl);
                String html = WebPageGetter.getWebPage(surl);
                Document music = Jsoup.parse(html);
                int count = Integer.valueOf(music.getElementsByTag("result").first().getElementsByTag("count").first().text());
                bw.write("## COUNT:\t" + count + "\n");
                bw.write("echo -ne \"\\nNo." + i + "\t" + name + " - " + artist + "\\n\"\n");
                bw.write("echo -ne \"COUNT=" + count + "\\n\"\n");
                int index = 0;
                bw.write("FILE_SIZE=0\n\n");

                bw.write("## DURL:\n");
                bw.flush();
                Elements durls = music.getElementsByTag("durl");
                if (durls != null) {
                    for (Element durl : durls) {
                        if (durl == null || durl.getElementsByTag("encode").first() == null || durl.getElementsByTag("decode").first() == null)
                            continue;
                        String encode = durl.getElementsByTag("encode").first().text();
                        String decode = durl.getElementsByTag("decode").first().text();
                        String song_durl = encode.substring(0, encode.lastIndexOf("/") + 1) + decode;
                        bw.write("# durl:\t" + song_durl + "\n");
                        bw.write("wget -q " + song_durl + " &\n");
                        bw.write("PID=$!\n");
                        bw.write("wait\n");
                        String tmp = song_durl.substring(song_durl.lastIndexOf("/") + 1, song_durl.contains("&mid=") ? song_durl.lastIndexOf("&mid=") : song_durl.length());
                        String file = (i + 1) + "_" + name.replaceAll("  ", " ").replaceAll(" ", "_") + ".mp3";
                        bw.write("TMP_SIZE=`ls -al | grep " + tmp + " | awk '{print $5}'`" + "\n");
                        bw.write("echo -ne \"\tNo." + index + ":\t$TMP_SIZE\t$FILE_SIZE\"\n");
                        index++;
                        bw.write("if [ $TMP_SIZE -gt $FILE_SIZE ]; then" + "\n");
                        bw.write("    echo -ne \"\tcopy\\n\"\n");
                        bw.write("    mv " + tmp + " " + file + "\n");
                        bw.write("    FILE_SIZE=$TMP_SIZE" + "\n");
                        bw.write("    TMP_SIZE=0" + "\n");
                        bw.write("else\n");
                        bw.write("    echo -ne \"\tskipped\\n\"\n");
                        bw.write("    rm -rf " + tmp + "\n");
                        bw.write("fi\n");
                    }
                }
                bw.write("\n");
                bw.write("## URL:\n");
                Elements urls = music.getElementsByTag("url");
                if (urls != null) {
                    for (Element url : urls) {
                        if (url == null || url.getElementsByTag("encode").first() == null || url.getElementsByTag("decode").first() == null)
                            continue;
                        String encode = url.getElementsByTag("encode").first().text();
                        String decode = url.getElementsByTag("decode").first().text();
                        String song_url = encode.substring(0, encode.lastIndexOf("/") + 1) + decode;
                        bw.write("# url:\t" + song_url + "\n");
                        bw.write("wget -q " + song_url + " &\n");
                        bw.write("PID=$!\n");
                        bw.write("wait\n");
                        System.out.println(song_url);
                        String tmp = song_url.substring(song_url.lastIndexOf("/") + 1, song_url.contains("&mid=") ? song_url.lastIndexOf("&mid=") : song_url.length());
                        String file = (i + 1) + "_" + name.replaceAll("  ", " ").replaceAll(" ", "_") + ".mp3";
                        bw.write("TMP_SIZE=`ls -al | grep " + tmp + " | awk '{print $5}'`" + "\n");
                        bw.write("echo -ne \"\tNo." + index + ":\t$TMP_SIZE\t$FILE_SIZE\"\n");
                        index++;
                        bw.write("if [ $TMP_SIZE -gt $FILE_SIZE ]; then" + "\n");
                        bw.write("    echo -ne \"\tcopy\\n\"\n");
                        bw.write("    mv " + tmp + " " + file + "\n");
                        bw.write("    FILE_SIZE=$TMP_SIZE" + "\n");
                        bw.write("    TMP_SIZE=0" + "\n");
                        bw.write("else\n");
                        bw.write("    echo -ne \"\tskipped\\n\"\n");
                        bw.write("    rm -rf " + tmp + "\n");
                        bw.write("fi\n");
                    }
                }

                bw.write("\n\n");
                System.out.println("============================================================================================");
            }

            bw.flush();
            bw.close();
            break;
        }
    }
}
