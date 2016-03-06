package me.chyc.linkedin.luoo;

import org.json.JSONObject;

/**
 * Created by yicun.chen on 9/21/14.
 */
public class Song {
    private int id;
    private String name;
    private String artist;
    private String album;

    public Song(int id, String name, String artist, String album){
        this.id = id;
        this.name = name;
        this.artist = artist;
        this.album = album;
    }


    @Override
    public String toString() {
        return "Song{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", artist='" + artist + '\'' +
                ", album='" + album + '\'' +
                '}';
    }

    public JSONObject toJson(){
        JSONObject object = new JSONObject();
        object.put(Constant.SONG_ID, this.id);
        object.put(Constant.SONG_NAME, this.name);
        object.put(Constant.SONG_ARTIST, this.artist);
        object.put(Constant.SONG_ALBUM, this.album);
        return object;
    }
}
