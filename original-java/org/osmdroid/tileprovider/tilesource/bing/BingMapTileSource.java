package org.osmdroid.tileprovider.tilesource.bing;

import android.content.Context;
import android.util.Log;
import java.util.Locale;
import microsoft.mappoint.TileSystem;
import org.osmdroid.api.IMapView;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.tilesource.IStyledTileSource;
import org.osmdroid.tileprovider.tilesource.QuadTreeTileSource;
import org.osmdroid.tileprovider.util.ManifestUtil;

public class BingMapTileSource extends QuadTreeTileSource implements IStyledTileSource<String> {
    private static final String BASE_URL_PATTERN = "http://dev.virtualearth.net/REST/V1/Imagery/Metadata/%s?mapVersion=v1&output=json&key=%s";
    private static final String BING_KEY = "BING_KEY";
    private static final String FILENAME_ENDING = ".jpeg";
    public static final String IMAGERYSET_AERIAL = "Aerial";
    public static final String IMAGERYSET_AERIALWITHLABELS = "AerialWithLabels";
    public static final String IMAGERYSET_ROAD = "Road";
    private static String mBingMapKey = "";
    private String mBaseUrl;
    private ImageryMetaDataResource mImageryData = ImageryMetaDataResource.getDefaultInstance();
    private String mLocale;
    private String mStyle = IMAGERYSET_ROAD;
    private String mUrl;

    public BingMapTileSource(String str) {
        super("BingMaps", 0, 19, 256, FILENAME_ENDING, null);
        this.mLocale = str;
        if (this.mLocale == null) {
            this.mLocale = Locale.getDefault().getLanguage() + "-" + Locale.getDefault().getCountry();
        }
    }

    public static void retrieveBingKey(Context context) {
        mBingMapKey = ManifestUtil.retrieveKey(context, BING_KEY);
    }

    public static String getBingKey() {
        return mBingMapKey;
    }

    public static void setBingKey(String str) {
        mBingMapKey = str;
    }

    public String getBaseUrl() {
        if (!this.mImageryData.m_isInitialised) {
            initMetaData();
        }
        return this.mBaseUrl;
    }

    public String getTileURLString(MapTile mapTile) {
        if (!this.mImageryData.m_isInitialised) {
            initMetaData();
        }
        return String.format(this.mUrl, new Object[]{quadTree(mapTile)});
    }

    public int getMinimumZoomLevel() {
        return this.mImageryData.m_zoomMin;
    }

    public int getMaximumZoomLevel() {
        return this.mImageryData.m_zoomMax;
    }

    public int getTileSizePixels() {
        return this.mImageryData.m_imageHeight;
    }

    public String pathBase() {
        return this.mName + this.mStyle;
    }

    public String getCopyrightNotice() {
        return this.mImageryData.copyright;
    }

    public void setStyle(String str) {
        if (!str.equals(this.mStyle)) {
            synchronized (this.mStyle) {
                this.mUrl = null;
                this.mBaseUrl = null;
                this.mImageryData.m_isInitialised = false;
            }
        }
        this.mStyle = str;
        this.mName = pathBase();
    }

    public String getStyle() {
        return this.mStyle;
    }

    public ImageryMetaDataResource initMetaData() {
        if (!this.mImageryData.m_isInitialised) {
            synchronized (this) {
                if (!this.mImageryData.m_isInitialised) {
                    ImageryMetaDataResource metaData = getMetaData();
                    if (metaData != null) {
                        this.mImageryData = metaData;
                        TileSystem.setTileSize(getTileSizePixels());
                        updateBaseUrl();
                    }
                }
            }
        }
        return this.mImageryData;
    }

    /* JADX WARNING: type inference failed for: r1v0 */
    /* JADX WARNING: type inference failed for: r1v1, types: [java.net.HttpURLConnection] */
    /* JADX WARNING: type inference failed for: r2v2, types: [java.net.HttpURLConnection] */
    /* JADX WARNING: type inference failed for: r1v5 */
    /* JADX WARNING: type inference failed for: r2v4 */
    /* JADX WARNING: type inference failed for: r2v9 */
    /* JADX WARNING: type inference failed for: r1v8 */
    /* JADX WARNING: type inference failed for: r1v10 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00ec A[SYNTHETIC, Splitter:B:29:0x00ec] */
    /* JADX WARNING: Unknown variable types count: 3 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private org.osmdroid.tileprovider.tilesource.bing.ImageryMetaDataResource getMetaData() {
        /*
            r7 = this;
            r1 = 0
            java.lang.String r0 = "OsmDroid"
            java.lang.String r2 = "getMetaData"
            android.util.Log.d(r0, r2)
            java.net.URL r0 = new java.net.URL     // Catch:{ Exception -> 0x00d2, all -> 0x00e9 }
            java.lang.String r2 = "http://dev.virtualearth.net/REST/V1/Imagery/Metadata/%s?mapVersion=v1&output=json&key=%s"
            r3 = 2
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ Exception -> 0x00d2, all -> 0x00e9 }
            r4 = 0
            java.lang.String r5 = r7.mStyle     // Catch:{ Exception -> 0x00d2, all -> 0x00e9 }
            r3[r4] = r5     // Catch:{ Exception -> 0x00d2, all -> 0x00e9 }
            r4 = 1
            java.lang.String r5 = mBingMapKey     // Catch:{ Exception -> 0x00d2, all -> 0x00e9 }
            r3[r4] = r5     // Catch:{ Exception -> 0x00d2, all -> 0x00e9 }
            java.lang.String r2 = java.lang.String.format(r2, r3)     // Catch:{ Exception -> 0x00d2, all -> 0x00e9 }
            r0.<init>(r2)     // Catch:{ Exception -> 0x00d2, all -> 0x00e9 }
            java.net.URLConnection r0 = r0.openConnection()     // Catch:{ Exception -> 0x00d2, all -> 0x00e9 }
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ Exception -> 0x00d2, all -> 0x00e9 }
            java.net.HttpURLConnection r0 = (java.net.HttpURLConnection) r0     // Catch:{ Exception -> 0x00d2, all -> 0x00e9 }
            java.lang.String r2 = "OsmDroid"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            r3.<init>()     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            java.lang.String r4 = "make request "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            java.net.URL r4 = r0.getURL()     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            android.util.Log.d(r2, r3)     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            org.osmdroid.config.IConfigurationProvider r2 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            java.lang.String r2 = r2.getUserAgentHttpHeader()     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            org.osmdroid.config.IConfigurationProvider r3 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            java.lang.String r3 = r3.getUserAgentValue()     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            r0.setRequestProperty(r2, r3)     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            r0.connect()     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            int r2 = r0.getResponseCode()     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            r3 = 200(0xc8, float:2.8E-43)
            if (r2 == r3) goto L_0x00a6
            java.lang.String r2 = "OsmDroid"
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            r3.<init>()     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            java.lang.String r4 = "Cannot get response for url "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            java.net.URL r4 = r0.getURL()     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            java.lang.String r4 = " "
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            java.lang.String r4 = r0.getResponseMessage()     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            android.util.Log.e(r2, r3)     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            if (r0 == 0) goto L_0x009d
            r0.disconnect()     // Catch:{ Exception -> 0x00f7 }
        L_0x009d:
            java.lang.String r0 = "OsmDroid"
            java.lang.String r2 = "end getMetaData"
            android.util.Log.d(r0, r2)
            r0 = r1
        L_0x00a5:
            return r0
        L_0x00a6:
            java.io.InputStream r2 = r0.getInputStream()     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            java.io.ByteArrayOutputStream r3 = new java.io.ByteArrayOutputStream     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            r3.<init>()     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            java.io.BufferedOutputStream r4 = new java.io.BufferedOutputStream     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            r5 = 8192(0x2000, float:1.14794E-41)
            r4.<init>(r3, r5)     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            org.osmdroid.tileprovider.util.StreamUtils.copy(r2, r4)     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            r4.flush()     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            java.lang.String r2 = r3.toString()     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            org.osmdroid.tileprovider.tilesource.bing.ImageryMetaDataResource r1 = org.osmdroid.tileprovider.tilesource.bing.ImageryMetaData.getInstanceFromJSON(r2)     // Catch:{ Exception -> 0x0107, all -> 0x00ff }
            if (r0 == 0) goto L_0x00c9
            r0.disconnect()     // Catch:{ Exception -> 0x00f9 }
        L_0x00c9:
            java.lang.String r0 = "OsmDroid"
            java.lang.String r2 = "end getMetaData"
            android.util.Log.d(r0, r2)
            r0 = r1
            goto L_0x00a5
        L_0x00d2:
            r0 = move-exception
            r2 = r1
        L_0x00d4:
            java.lang.String r3 = "OsmDroid"
            java.lang.String r4 = "Error getting imagery meta data"
            android.util.Log.e(r3, r4, r0)     // Catch:{ all -> 0x0104 }
            if (r2 == 0) goto L_0x00e0
            r2.disconnect()     // Catch:{ Exception -> 0x00fb }
        L_0x00e0:
            java.lang.String r0 = "OsmDroid"
            java.lang.String r2 = "end getMetaData"
            android.util.Log.d(r0, r2)
            r0 = r1
            goto L_0x00a5
        L_0x00e9:
            r0 = move-exception
        L_0x00ea:
            if (r1 == 0) goto L_0x00ef
            r1.disconnect()     // Catch:{ Exception -> 0x00fd }
        L_0x00ef:
            java.lang.String r1 = "OsmDroid"
            java.lang.String r2 = "end getMetaData"
            android.util.Log.d(r1, r2)
            throw r0
        L_0x00f7:
            r0 = move-exception
            goto L_0x009d
        L_0x00f9:
            r0 = move-exception
            goto L_0x00c9
        L_0x00fb:
            r0 = move-exception
            goto L_0x00e0
        L_0x00fd:
            r1 = move-exception
            goto L_0x00ef
        L_0x00ff:
            r1 = move-exception
            r6 = r1
            r1 = r0
            r0 = r6
            goto L_0x00ea
        L_0x0104:
            r0 = move-exception
            r1 = r2
            goto L_0x00ea
        L_0x0107:
            r2 = move-exception
            r6 = r2
            r2 = r0
            r0 = r6
            goto L_0x00d4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.osmdroid.tileprovider.tilesource.bing.BingMapTileSource.getMetaData():org.osmdroid.tileprovider.tilesource.bing.ImageryMetaDataResource");
    }

    /* access modifiers changed from: protected */
    public void updateBaseUrl() {
        Log.d(IMapView.LOGTAG, "updateBaseUrl");
        String subDomain = this.mImageryData.getSubDomain();
        int lastIndexOf = this.mImageryData.m_imageUrl.lastIndexOf("/");
        if (lastIndexOf > 0) {
            this.mBaseUrl = this.mImageryData.m_imageUrl.substring(0, lastIndexOf);
        } else {
            this.mBaseUrl = this.mImageryData.m_imageUrl;
        }
        this.mUrl = this.mImageryData.m_imageUrl;
        if (subDomain != null) {
            this.mBaseUrl = String.format(this.mBaseUrl, new Object[]{subDomain});
            this.mUrl = String.format(this.mUrl, new Object[]{subDomain, "%s", this.mLocale});
        }
        Log.d(IMapView.LOGTAG, "updated url = " + this.mUrl);
        Log.d(IMapView.LOGTAG, "end updateBaseUrl");
    }
}
