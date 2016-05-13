package me.chyc.linkedin.luoo;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by yicun.chen on 9/21/14.
 */
public class Journal {
    private int vol_number;
    private String vol_name;
    private String vol_desc;
    private String vol_cover;
    private List<String> vol_tags;
    private List<Song> vol_songs;

    public Journal(int no){
        this.vol_number = no;
    }

    public void setVol_number(int vol_number) {
        this.vol_number = vol_number;
    }

    public void setVol_name(String vol_name) {
        this.vol_name = vol_name;
    }

    public void setVol_cover(String vol_cover) {
        this.vol_cover = vol_cover;
    }

    public void setVol_desc(String vol_desc) {
        this.vol_desc = vol_desc;
    }

    public void setVol_songs(List<Song> vol_songs) {
        this.vol_songs = vol_songs;
    }

    public void setVol_tags(List<String> vol_tags) {
        this.vol_tags = vol_tags;
    }


    public int getVol_number() {
        return vol_number;
    }

    public String getVol_name() {
        return vol_name;
    }

    public List<Song> getVol_songs() {
        return vol_songs;
    }

    public List<String> getVol_tags() {

        return vol_tags;
    }

    public String getVol_cover() {

        return vol_cover;
    }

    public String getVol_desc() {

        return vol_desc;
    }

    @Override
    public String toString() {
        return "Journal{" +
                "\n\tvol_number=" + vol_number +
                ", \n\tvol_name='" + vol_name + '\'' +
                ", \n\tvol_desc='" + vol_desc + '\'' +
                ", \n\tvol_cover='" + vol_cover + '\'' +
                ", \n\tvol_tags=" + vol_tags +
                ", \n\tvol_songs=" + vol_songs +
                "\n}";
    }

    public JSONObject toJson(){
        JSONObject object = new JSONObject();
        object.put(Constant.VOL_NUMBER, this.vol_number);
        object.put(Constant.VOL_NAME, this.vol_name);
        object.put(Constant.VOL_DESC, this.vol_desc);
        object.put(Constant.VOL_COVER, this.vol_cover);
        object.put(Constant.VOL_TAGS, this.vol_tags);
        List<JSONObject> songs = new ArrayList<JSONObject>();
        for (Song song: this.vol_songs)
            songs.add(song.toJson());
        object.put(Constant.VOL_SONGS, songs);
        return object;
    }

    public static void main(String args[]){
        String journalStr = "{\"vol_name\":\"如你所愿\",\"vol_songs\":[{\"artist\":\"The Black Seeds\",\"album\":\"Dust And Dirt\",\"name\":\"Dust And Dirt\",\"id\":12503},{\"artist\":\"Tribal Seeds\",\"album\":\"Representing\",\"name\":\"Night & Day\",\"id\":12504},{\"artist\":\"UB40\",\"album\":\"The Best of Labour of Love\",\"name\":\"Kingston Town\",\"id\":12505},{\"artist\":\"스컬\",\"album\":\"Ya Man !!\",\"name\":\"부산 바캉스\",\"id\":12506},{\"artist\":\"Dirty Heads\",\"album\":\"Any Port in a Storm\",\"name\":\"Stand Tall\",\"id\":12507},{\"artist\":\"5'nizza\",\"album\":\"Пятница\",\"name\":\"Солдат\",\"id\":12508},{\"artist\":\"The Red Eyes\",\"album\":\"Red Army\",\"name\":\"Titokowaru's War\",\"id\":12509},{\"artist\":\"Stick Figure\",\"album\":\"Smoke Stack\",\"name\":\"Hawaii Song\",\"id\":12510},{\"artist\":\"Kultiration\",\"album\":\"Kultiration\",\"name\":\"Seen and gone\",\"id\":12511},{\"artist\":\"老黑\",\"album\":\"云南民间的回响\",\"name\":\"通撒美\",\"id\":12512},{\"artist\":\"Collie Buddz\",\"album\":\"Won't Be Long\",\"name\":\"Won't Be Long\",\"id\":12513},{\"artist\":\"Sweet & Irie\",\"album\":\"Localize It\",\"name\":\"Gimme Your Love\",\"id\":12514},{\"artist\":\"Iration\",\"album\":\"Automatic\",\"name\":\"Go That Road\",\"id\":12515},{\"artist\":\"Tomorrows Bad Seeds\",\"album\":\"The Great Escape\",\"name\":\"War Letter\",\"id\":12516}],\"vol_cover\":\"http://img2.luoo.net/pics/vol/541c77d35e149.jpg_640x452.jpg\",\"vol_number\":651,\"vol_desc\":\"本期为雷鬼（Reggae）音乐专题。 雷鬼乐基本上算是牙买加的多种舞曲的总称。它的一个显著特点是强拍在二、四拍上。雷鬼在1960年代开始对西方流行音乐产生了很大的影响，在1970年代和1980年代非常普及。雷鬼的名称由来，是来自于牙买加某个街道名称，意思是日常生活上一些琐碎的事情。雷鬼乐的代表人物是鲍勃·马利（Bob Marley），他带动了雷鬼乐的流行，可惜英年早逝，年仅36岁就死于癌症。 本期雷鬼音乐主要风格为现代雷鬼，其所谓的现代是指保持传统的强拍在二、四拍上，还融合了电子、爵士、以及一些区域化特色。比如这一期雷鬼音乐基本为拉美国家之外的德国、韩国、美国、瑞典、美国、俄罗斯、中国等国家，具有较强的民族特性。如果你想和传统的雷鬼音乐进行对比试听，可以听一下之前的Vol.418期。 一种文化的诞生总是要经历几代人的时间沉淀，才能够成型、才能够发光发亮，雷鬼乐亦如此。鲍勃·马利曾经说过:\\u201c我们应该一起去创造音乐和爱,因为这个世界上有那么多艰难与贫困.没有什么我们不能做的,我们不能呆立着眼看着他们把我们埋葬!\\u201d 另外,提前预告下。 落网十一周年纪念T恤将于下周一上线，因为数量有限，请勿错过。大家请收藏购买地址：http://indier.taobao.com/\",\"vol_tags\":[\"#独立音乐\",\"#迷幻\",\"#世界音乐\"]}";
        JSONObject journal = new JSONObject(journalStr);
        JSONArray songs = journal.getJSONArray(Constant.VOL_SONGS);
        System.out.println(songs.toString());
        for (int i = 0; !songs.isNull(i); i ++) {

            System.out.println(songs.getJSONObject(i).toString());
        }
    }
}
