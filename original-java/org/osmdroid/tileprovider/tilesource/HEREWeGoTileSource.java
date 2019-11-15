package org.osmdroid.tileprovider.tilesource;

import android.content.Context;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.util.ManifestUtil;

public class HEREWeGoTileSource extends OnlineTileSourceBase {
    private static final String APPCODE = "HEREWEGO_APPCODE";
    private static final String HEREWEGO_APPID = "HEREWEGO_APPID";
    private static final String HEREWEGO_DOMAIN_OVERRIDE = "HEREWEGO_OVERRIDE";
    private static final String HEREWEGO_MAPID = "HEREWEGO_MAPID";
    private static final String[] mapBoxBaseUrl = {"http://1.{domain}/maptile/2.1/maptile/newest/", "http://2.{domain}/maptile/2.1/maptile/newest/", "http://3.{domain}/maptile/2.1/maptile/newest/", "http://4.{domain}/maptile/2.1/maptile/newest/"};
    private String appCode = "";
    private String appId = "";
    private String domainOverride = "aerial.maps.cit.api.here.com";
    private String herewegoMapId = "hybrid.day";

    public HEREWeGoTileSource() {
        super("herewego", 1, 20, 256, ".png", mapBoxBaseUrl, "© 1987 - 2017 HERE. All rights reserved.");
    }

    public HEREWeGoTileSource(Context context) {
        super("herewego", 1, 20, 256, ".png", mapBoxBaseUrl, "© 1987 - 2017 HERE. All rights reserved.");
        retrieveAppId(context);
        retrieveMapBoxMapId(context);
        retrieveAppCode(context);
        retrieveDomainOverride(context);
        this.mName = "herewego" + this.herewegoMapId;
    }

    private void retrieveDomainOverride(Context context) {
        String retrieveKey = ManifestUtil.retrieveKey(context, HEREWEGO_DOMAIN_OVERRIDE);
        if (retrieveKey != null && retrieveKey.length() > 0) {
            this.domainOverride = retrieveKey;
        }
    }

    public void setDomainOverride(String str) {
        this.domainOverride = str;
    }

    public HEREWeGoTileSource(String str, String str2, String str3) {
        super("herewego" + str, 1, 20, 256, ".png", mapBoxBaseUrl, "© 1987 - 2017 HERE. All rights reserved.");
        this.appId = str2;
        this.herewegoMapId = str;
        this.appCode = str3;
    }

    public HEREWeGoTileSource(String str, int i, int i2, int i3, String str2) {
        super(str, i, i2, i3, str2, mapBoxBaseUrl, "© 1987 - 2017 HERE. All rights reserved.");
    }

    public HEREWeGoTileSource(String str, int i, int i2, int i3, String str2, String str3, String str4) {
        String str5 = str;
        int i4 = i;
        int i5 = i2;
        int i6 = i3;
        String str6 = str2;
        super(str5, i4, i5, i6, str6, new String[]{str4}, "© 1987 - 2017 HERE. All rights reserved.");
    }

    public final void retrieveAppCode(Context context) {
        this.appCode = ManifestUtil.retrieveKey(context, APPCODE);
    }

    public final void retrieveMapBoxMapId(Context context) {
        this.herewegoMapId = ManifestUtil.retrieveKey(context, HEREWEGO_MAPID);
    }

    public final void retrieveAppId(Context context) {
        this.appId = ManifestUtil.retrieveKey(context, HEREWEGO_APPID);
    }

    public void setHereWeGoMapid(String str) {
        this.herewegoMapId = str;
        this.mName = "herewego" + this.herewegoMapId;
    }

    public String getHerewegoMapId() {
        return this.herewegoMapId;
    }

    public String getTileURLString(MapTile mapTile) {
        StringBuilder sb = new StringBuilder(getBaseUrl().replace("{domain}", this.domainOverride));
        sb.append(getHerewegoMapId());
        sb.append("/");
        sb.append(mapTile.getZoomLevel());
        sb.append("/");
        sb.append(mapTile.getX());
        sb.append("/");
        sb.append(mapTile.getY());
        sb.append("/").append(getTileSizePixels()).append("/png8?");
        sb.append("app_id=").append(getAppId());
        sb.append("&app_code=").append(getAppCode());
        sb.append("&lg=pt-BR");
        return sb.toString();
    }

    public String getAppId() {
        return this.appId;
    }

    public void setAppId(String str) {
        this.appId = str;
    }

    public String getAppCode() {
        return this.appCode;
    }

    public void setAppCode(String str) {
        this.appCode = str;
    }
}
