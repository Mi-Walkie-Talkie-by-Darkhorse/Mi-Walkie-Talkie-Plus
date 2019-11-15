package org.osmdroid.tileprovider.tilesource;

import android.content.Context;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.util.ManifestUtil;

public class MapQuestTileSource extends OnlineTileSourceBase {
    private static final String ACCESS_TOKEN = "MAPQUEST_ACCESS_TOKEN";
    private static final String MAPBOX_MAPID = "MAPQUEST_MAPID";
    private static final String[] mapBoxBaseUrl = {"http://api.tiles.mapbox.com/v4/"};
    private String accessToken;
    private String mapBoxMapId = "mapquest.streets-mb";

    public MapQuestTileSource(Context context) {
        super("MapQuest", 1, 19, 256, ".png", mapBoxBaseUrl, "MapQuest");
        retrieveAccessToken(context);
        retrieveMapBoxMapId(context);
        this.mName = "MapQuest" + this.mapBoxMapId;
    }

    public MapQuestTileSource(String str, String str2) {
        super("MapQuest" + str, 1, 19, 256, ".png", mapBoxBaseUrl, "MapQuest");
        this.accessToken = str2;
        this.mapBoxMapId = str;
    }

    public MapQuestTileSource(String str, int i, int i2, int i3, String str2) {
        super(str, i, i2, i3, str2, mapBoxBaseUrl, "MapQuest");
    }

    public MapQuestTileSource(String str, int i, int i2, int i3, String str2, String str3, String str4) {
        int i4 = i;
        int i5 = i2;
        int i6 = i3;
        String str5 = str2;
        super(str + str3, i4, i5, i6, str5, new String[]{str4}, "MapQuest");
        this.mapBoxMapId = str3;
    }

    public final void retrieveMapBoxMapId(Context context) {
        String retrieveKey = ManifestUtil.retrieveKey(context, MAPBOX_MAPID);
        if (retrieveKey != null && retrieveKey.length() > 0) {
            this.mapBoxMapId = retrieveKey;
        }
    }

    public final void retrieveAccessToken(Context context) {
        this.accessToken = ManifestUtil.retrieveKey(context, ACCESS_TOKEN);
    }

    public void setMapboxMapid(String str) {
        this.mapBoxMapId = str;
    }

    public String getMapBoxMapId() {
        return this.mapBoxMapId;
    }

    public String getTileURLString(MapTile mapTile) {
        StringBuilder sb = new StringBuilder(getBaseUrl());
        sb.append(getMapBoxMapId());
        sb.append("/");
        sb.append(mapTile.getZoomLevel());
        sb.append("/");
        sb.append(mapTile.getX());
        sb.append("/");
        sb.append(mapTile.getY());
        sb.append(".png");
        sb.append("?access_token=").append(getAccessToken());
        return sb.toString();
    }

    public String getAccessToken() {
        return this.accessToken;
    }

    public void setAccessToken(String str) {
        this.accessToken = str;
    }
}
