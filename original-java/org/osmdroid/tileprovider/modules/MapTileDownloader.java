package org.osmdroid.tileprovider.modules;

import android.graphics.drawable.Drawable;
import java.util.concurrent.atomic.AtomicReference;
import microsoft.mappoint.TileSystem;
import org.osmdroid.config.Configuration;
import org.osmdroid.tileprovider.BitmapPool;
import org.osmdroid.tileprovider.MapTileRequestState;
import org.osmdroid.tileprovider.ReusableBitmapDrawable;
import org.osmdroid.tileprovider.tilesource.ITileSource;
import org.osmdroid.tileprovider.tilesource.OnlineTileSourceBase;

public class MapTileDownloader extends MapTileModuleProviderBase {
    /* access modifiers changed from: private */
    public final IFilesystemCache mFilesystemCache;
    /* access modifiers changed from: private */
    public final INetworkAvailablityCheck mNetworkAvailablityCheck;
    /* access modifiers changed from: private */
    public final AtomicReference<OnlineTileSourceBase> mTileSource;

    protected class TileLoader extends TileLoader {
        protected TileLoader() {
            super();
        }

        /* JADX WARNING: Unknown top exception splitter block from list: {B:99:0x02a7=Splitter:B:99:0x02a7, B:91:0x026f=Splitter:B:91:0x026f, B:107:0x02df=Splitter:B:107:0x02df} */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public android.graphics.drawable.Drawable loadTile(org.osmdroid.tileprovider.MapTileRequestState r15) throws org.osmdroid.tileprovider.modules.MapTileModuleProviderBase.CantContinueException {
            /*
                r14 = this;
                r2 = 0
                org.osmdroid.tileprovider.modules.MapTileDownloader r0 = org.osmdroid.tileprovider.modules.MapTileDownloader.this
                java.util.concurrent.atomic.AtomicReference r0 = r0.mTileSource
                java.lang.Object r0 = r0.get()
                org.osmdroid.tileprovider.tilesource.OnlineTileSourceBase r0 = (org.osmdroid.tileprovider.tilesource.OnlineTileSourceBase) r0
                if (r0 != 0) goto L_0x0011
                r0 = r2
            L_0x0010:
                return r0
            L_0x0011:
                r1 = 0
                org.osmdroid.tileprovider.MapTile r7 = r15.getMapTile()
                org.osmdroid.tileprovider.modules.MapTileDownloader r3 = org.osmdroid.tileprovider.modules.MapTileDownloader.this     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                org.osmdroid.tileprovider.modules.INetworkAvailablityCheck r3 = r3.mNetworkAvailablityCheck     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                if (r3 == 0) goto L_0x0063
                org.osmdroid.tileprovider.modules.MapTileDownloader r3 = org.osmdroid.tileprovider.modules.MapTileDownloader.this     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                org.osmdroid.tileprovider.modules.INetworkAvailablityCheck r3 = r3.mNetworkAvailablityCheck     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                boolean r3 = r3.getNetworkAvailable()     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                if (r3 != 0) goto L_0x0063
                org.osmdroid.config.IConfigurationProvider r0 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                boolean r0 = r0.isDebugMode()     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                if (r0 == 0) goto L_0x0058
                java.lang.String r0 = "OsmDroid"
                java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                r3.<init>()     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                java.lang.String r4 = "Skipping "
                java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                org.osmdroid.tileprovider.modules.MapTileDownloader r4 = org.osmdroid.tileprovider.modules.MapTileDownloader.this     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                java.lang.String r4 = r4.getName()     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                java.lang.String r4 = " due to NetworkAvailabliltyCheck."
                java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                java.lang.String r3 = r3.toString()     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                android.util.Log.d(r0, r3)     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
            L_0x0058:
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r2)
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r2)
                r1.disconnect()     // Catch:{ Exception -> 0x0309 }
            L_0x0061:
                r0 = r2
                goto L_0x0010
            L_0x0063:
                java.lang.String r3 = r0.getTileURLString(r7)     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                org.osmdroid.config.IConfigurationProvider r4 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                boolean r4 = r4.isDebugMode()     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                if (r4 == 0) goto L_0x0089
                java.lang.String r4 = "OsmDroid"
                java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                r5.<init>()     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                java.lang.String r6 = "Downloading Maptile from url: "
                java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                java.lang.StringBuilder r5 = r5.append(r3)     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                java.lang.String r5 = r5.toString()     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                android.util.Log.d(r4, r5)     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
            L_0x0089:
                boolean r4 = android.text.TextUtils.isEmpty(r3)     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                if (r4 == 0) goto L_0x009b
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r2)
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r2)
                r1.disconnect()     // Catch:{ Exception -> 0x030c }
            L_0x0098:
                r0 = r2
                goto L_0x0010
            L_0x009b:
                java.net.URL r1 = new java.net.URL     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                r1.<init>(r3)     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                java.net.URLConnection r1 = r1.openConnection()     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                java.net.HttpURLConnection r1 = (java.net.HttpURLConnection) r1     // Catch:{ UnknownHostException -> 0x0350, LowMemoryException -> 0x0236, FileNotFoundException -> 0x026b, IOException -> 0x02a3, Throwable -> 0x02db, all -> 0x0317 }
                r4 = 1
                r1.setUseCaches(r4)     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                org.osmdroid.config.IConfigurationProvider r4 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                java.lang.String r4 = r4.getUserAgentHttpHeader()     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                org.osmdroid.config.IConfigurationProvider r5 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                java.lang.String r5 = r5.getUserAgentValue()     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                r1.setRequestProperty(r4, r5)     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                r1.connect()     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                int r4 = r1.getResponseCode()     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                r5 = 200(0xc8, float:2.8E-43)
                if (r4 == r5) goto L_0x010f
                java.lang.String r0 = "OsmDroid"
                java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                r4.<init>()     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                java.lang.String r5 = "Problem downloading MapTile: "
                java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                java.lang.StringBuilder r4 = r4.append(r7)     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                java.lang.String r5 = " HTTP response: "
                java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                java.lang.String r5 = r1.getResponseMessage()     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                java.lang.String r4 = r4.toString()     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                android.util.Log.w(r0, r4)     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                org.osmdroid.config.IConfigurationProvider r0 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                boolean r0 = r0.isDebugMapTileDownloader()     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                if (r0 == 0) goto L_0x00fd
                java.lang.String r0 = "OsmDroid"
                android.util.Log.d(r0, r3)     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
            L_0x00fd:
                int r0 = org.osmdroid.tileprovider.util.Counters.tileDownloadErrors     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                int r0 = r0 + 1
                org.osmdroid.tileprovider.util.Counters.tileDownloadErrors = r0     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r2)
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r2)
                r1.disconnect()     // Catch:{ Exception -> 0x030f }
            L_0x010c:
                r0 = r2
                goto L_0x0010
            L_0x010f:
                org.osmdroid.config.IConfigurationProvider r4 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                boolean r4 = r4.isDebugMapTileDownloader()     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                if (r4 == 0) goto L_0x0131
                java.lang.String r4 = "OsmDroid"
                java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                r5.<init>()     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                java.lang.StringBuilder r3 = r5.append(r3)     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                java.lang.String r5 = " success"
                java.lang.StringBuilder r3 = r3.append(r5)     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                java.lang.String r3 = r3.toString()     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                android.util.Log.d(r4, r3)     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
            L_0x0131:
                java.io.InputStream r6 = r1.getInputStream()     // Catch:{ UnknownHostException -> 0x0355, LowMemoryException -> 0x0345, FileNotFoundException -> 0x0339, IOException -> 0x032d, Throwable -> 0x0324, all -> 0x031c }
                java.io.ByteArrayOutputStream r8 = new java.io.ByteArrayOutputStream     // Catch:{ UnknownHostException -> 0x0359, LowMemoryException -> 0x0349, FileNotFoundException -> 0x033e, IOException -> 0x0332, Throwable -> 0x0328 }
                r8.<init>()     // Catch:{ UnknownHostException -> 0x0359, LowMemoryException -> 0x0349, FileNotFoundException -> 0x033e, IOException -> 0x0332, Throwable -> 0x0328 }
                java.io.BufferedOutputStream r5 = new java.io.BufferedOutputStream     // Catch:{ UnknownHostException -> 0x0359, LowMemoryException -> 0x0349, FileNotFoundException -> 0x033e, IOException -> 0x0332, Throwable -> 0x0328 }
                r3 = 8192(0x2000, float:1.14794E-41)
                r5.<init>(r8, r3)     // Catch:{ UnknownHostException -> 0x0359, LowMemoryException -> 0x0349, FileNotFoundException -> 0x033e, IOException -> 0x0332, Throwable -> 0x0328 }
                org.osmdroid.config.IConfigurationProvider r3 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                java.lang.Long r3 = r3.getExpirationOverrideDuration()     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                if (r3 == 0) goto L_0x0191
                java.util.Date r4 = new java.util.Date     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                long r10 = java.lang.System.currentTimeMillis()     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                long r12 = r3.longValue()     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                long r10 = r10 + r12
                r4.<init>(r10)     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
            L_0x0159:
                r7.setExpires(r4)     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                org.osmdroid.tileprovider.util.StreamUtils.copy(r6, r5)     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                r5.flush()     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                byte[] r3 = r8.toByteArray()     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                java.io.ByteArrayInputStream r4 = new java.io.ByteArrayInputStream     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                r4.<init>(r3)     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                org.osmdroid.tileprovider.modules.MapTileDownloader r3 = org.osmdroid.tileprovider.modules.MapTileDownloader.this     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                org.osmdroid.tileprovider.modules.IFilesystemCache r3 = r3.mFilesystemCache     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                if (r3 == 0) goto L_0x017f
                org.osmdroid.tileprovider.modules.MapTileDownloader r3 = org.osmdroid.tileprovider.modules.MapTileDownloader.this     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                org.osmdroid.tileprovider.modules.IFilesystemCache r3 = r3.mFilesystemCache     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                r3.saveFile(r0, r7, r4)     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                r4.reset()     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
            L_0x017f:
                android.graphics.drawable.Drawable r0 = r0.getDrawable(r4)     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r6)
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r5)
                r1.disconnect()     // Catch:{ Exception -> 0x018e }
                goto L_0x0010
            L_0x018e:
                r1 = move-exception
                goto L_0x0010
            L_0x0191:
                java.util.Date r4 = new java.util.Date     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                long r10 = java.lang.System.currentTimeMillis()     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                r12 = 604800000(0x240c8400, double:2.988109026E-315)
                long r10 = r10 + r12
                org.osmdroid.config.IConfigurationProvider r3 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                long r12 = r3.getExpirationExtendedDuration()     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                long r10 = r10 + r12
                r4.<init>(r10)     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                java.lang.String r3 = "Expires"
                java.lang.String r9 = r1.getHeaderField(r3)     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                if (r9 == 0) goto L_0x0159
                int r3 = r9.length()     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                if (r3 <= 0) goto L_0x0159
                org.osmdroid.config.IConfigurationProvider r3 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ Exception -> 0x01d2 }
                java.text.SimpleDateFormat r3 = r3.getHttpHeaderDateTimeFormat()     // Catch:{ Exception -> 0x01d2 }
                java.util.Date r4 = r3.parse(r9)     // Catch:{ Exception -> 0x01d2 }
                long r10 = r4.getTime()     // Catch:{ Exception -> 0x01d2 }
                org.osmdroid.config.IConfigurationProvider r3 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ Exception -> 0x01d2 }
                long r12 = r3.getExpirationExtendedDuration()     // Catch:{ Exception -> 0x01d2 }
                long r10 = r10 + r12
                r4.setTime(r10)     // Catch:{ Exception -> 0x01d2 }
                goto L_0x0159
            L_0x01d2:
                r3 = move-exception
                org.osmdroid.config.IConfigurationProvider r10 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                boolean r10 = r10.isDebugMapTileDownloader()     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                if (r10 == 0) goto L_0x0159
                java.lang.String r10 = "OsmDroid"
                java.lang.StringBuilder r11 = new java.lang.StringBuilder     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                r11.<init>()     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                java.lang.String r12 = "Unable to parse expiration tag for tile, using default, server returned "
                java.lang.StringBuilder r11 = r11.append(r12)     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                java.lang.StringBuilder r9 = r11.append(r9)     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                java.lang.String r9 = r9.toString()     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                android.util.Log.d(r10, r9, r3)     // Catch:{ UnknownHostException -> 0x01f7, LowMemoryException -> 0x034c, FileNotFoundException -> 0x0342, IOException -> 0x0336, Throwable -> 0x032b }
                goto L_0x0159
            L_0x01f7:
                r0 = move-exception
                r2 = r5
                r3 = r6
            L_0x01fa:
                java.lang.String r4 = "OsmDroid"
                java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ all -> 0x022a }
                r5.<init>()     // Catch:{ all -> 0x022a }
                java.lang.String r6 = "UnknownHostException downloading MapTile: "
                java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ all -> 0x022a }
                java.lang.StringBuilder r5 = r5.append(r7)     // Catch:{ all -> 0x022a }
                java.lang.String r6 = " : "
                java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ all -> 0x022a }
                java.lang.StringBuilder r5 = r5.append(r0)     // Catch:{ all -> 0x022a }
                java.lang.String r5 = r5.toString()     // Catch:{ all -> 0x022a }
                android.util.Log.w(r4, r5)     // Catch:{ all -> 0x022a }
                int r4 = org.osmdroid.tileprovider.util.Counters.tileDownloadErrors     // Catch:{ all -> 0x022a }
                int r4 = r4 + 1
                org.osmdroid.tileprovider.util.Counters.tileDownloadErrors = r4     // Catch:{ all -> 0x022a }
                org.osmdroid.tileprovider.modules.MapTileModuleProviderBase$CantContinueException r4 = new org.osmdroid.tileprovider.modules.MapTileModuleProviderBase$CantContinueException     // Catch:{ all -> 0x022a }
                org.osmdroid.tileprovider.modules.MapTileDownloader r5 = org.osmdroid.tileprovider.modules.MapTileDownloader.this     // Catch:{ all -> 0x022a }
                r4.<init>(r0)     // Catch:{ all -> 0x022a }
                throw r4     // Catch:{ all -> 0x022a }
            L_0x022a:
                r0 = move-exception
                r6 = r3
            L_0x022c:
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r6)
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r2)
                r1.disconnect()     // Catch:{ Exception -> 0x0314 }
            L_0x0235:
                throw r0
            L_0x0236:
                r0 = move-exception
                r1 = r2
                r6 = r2
            L_0x0239:
                int r3 = org.osmdroid.tileprovider.util.Counters.countOOM     // Catch:{ all -> 0x0269 }
                int r3 = r3 + 1
                org.osmdroid.tileprovider.util.Counters.countOOM = r3     // Catch:{ all -> 0x0269 }
                java.lang.String r3 = "OsmDroid"
                java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x0269 }
                r4.<init>()     // Catch:{ all -> 0x0269 }
                java.lang.String r5 = "LowMemoryException downloading MapTile: "
                java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ all -> 0x0269 }
                java.lang.StringBuilder r4 = r4.append(r7)     // Catch:{ all -> 0x0269 }
                java.lang.String r5 = " : "
                java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ all -> 0x0269 }
                java.lang.StringBuilder r4 = r4.append(r0)     // Catch:{ all -> 0x0269 }
                java.lang.String r4 = r4.toString()     // Catch:{ all -> 0x0269 }
                android.util.Log.w(r3, r4)     // Catch:{ all -> 0x0269 }
                org.osmdroid.tileprovider.modules.MapTileModuleProviderBase$CantContinueException r3 = new org.osmdroid.tileprovider.modules.MapTileModuleProviderBase$CantContinueException     // Catch:{ all -> 0x0269 }
                org.osmdroid.tileprovider.modules.MapTileDownloader r4 = org.osmdroid.tileprovider.modules.MapTileDownloader.this     // Catch:{ all -> 0x0269 }
                r3.<init>(r0)     // Catch:{ all -> 0x0269 }
                throw r3     // Catch:{ all -> 0x0269 }
            L_0x0269:
                r0 = move-exception
                goto L_0x022c
            L_0x026b:
                r0 = move-exception
                r1 = r2
                r5 = r2
                r6 = r2
            L_0x026f:
                int r3 = org.osmdroid.tileprovider.util.Counters.tileDownloadErrors     // Catch:{ all -> 0x0320 }
                int r3 = r3 + 1
                org.osmdroid.tileprovider.util.Counters.tileDownloadErrors = r3     // Catch:{ all -> 0x0320 }
                java.lang.String r3 = "OsmDroid"
                java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x0320 }
                r4.<init>()     // Catch:{ all -> 0x0320 }
                java.lang.String r8 = "Tile not found: "
                java.lang.StringBuilder r4 = r4.append(r8)     // Catch:{ all -> 0x0320 }
                java.lang.StringBuilder r4 = r4.append(r7)     // Catch:{ all -> 0x0320 }
                java.lang.String r7 = " : "
                java.lang.StringBuilder r4 = r4.append(r7)     // Catch:{ all -> 0x0320 }
                java.lang.StringBuilder r0 = r4.append(r0)     // Catch:{ all -> 0x0320 }
                java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0320 }
                android.util.Log.w(r3, r0)     // Catch:{ all -> 0x0320 }
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r6)
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r5)
                r1.disconnect()     // Catch:{ Exception -> 0x0312 }
            L_0x02a0:
                r0 = r2
                goto L_0x0010
            L_0x02a3:
                r0 = move-exception
                r1 = r2
                r5 = r2
                r6 = r2
            L_0x02a7:
                int r3 = org.osmdroid.tileprovider.util.Counters.tileDownloadErrors     // Catch:{ all -> 0x0320 }
                int r3 = r3 + 1
                org.osmdroid.tileprovider.util.Counters.tileDownloadErrors = r3     // Catch:{ all -> 0x0320 }
                java.lang.String r3 = "OsmDroid"
                java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x0320 }
                r4.<init>()     // Catch:{ all -> 0x0320 }
                java.lang.String r8 = "IOException downloading MapTile: "
                java.lang.StringBuilder r4 = r4.append(r8)     // Catch:{ all -> 0x0320 }
                java.lang.StringBuilder r4 = r4.append(r7)     // Catch:{ all -> 0x0320 }
                java.lang.String r7 = " : "
                java.lang.StringBuilder r4 = r4.append(r7)     // Catch:{ all -> 0x0320 }
                java.lang.StringBuilder r0 = r4.append(r0)     // Catch:{ all -> 0x0320 }
                java.lang.String r0 = r0.toString()     // Catch:{ all -> 0x0320 }
                android.util.Log.w(r3, r0)     // Catch:{ all -> 0x0320 }
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r6)
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r5)
                r1.disconnect()     // Catch:{ Exception -> 0x02d9 }
                goto L_0x02a0
            L_0x02d9:
                r0 = move-exception
                goto L_0x02a0
            L_0x02db:
                r0 = move-exception
                r1 = r2
                r5 = r2
                r6 = r2
            L_0x02df:
                int r3 = org.osmdroid.tileprovider.util.Counters.tileDownloadErrors     // Catch:{ all -> 0x0320 }
                int r3 = r3 + 1
                org.osmdroid.tileprovider.util.Counters.tileDownloadErrors = r3     // Catch:{ all -> 0x0320 }
                java.lang.String r3 = "OsmDroid"
                java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ all -> 0x0320 }
                r4.<init>()     // Catch:{ all -> 0x0320 }
                java.lang.String r8 = "Error downloading MapTile: "
                java.lang.StringBuilder r4 = r4.append(r8)     // Catch:{ all -> 0x0320 }
                java.lang.StringBuilder r4 = r4.append(r7)     // Catch:{ all -> 0x0320 }
                java.lang.String r4 = r4.toString()     // Catch:{ all -> 0x0320 }
                android.util.Log.e(r3, r4, r0)     // Catch:{ all -> 0x0320 }
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r6)
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r5)
                r1.disconnect()     // Catch:{ Exception -> 0x0307 }
                goto L_0x02a0
            L_0x0307:
                r0 = move-exception
                goto L_0x02a0
            L_0x0309:
                r0 = move-exception
                goto L_0x0061
            L_0x030c:
                r0 = move-exception
                goto L_0x0098
            L_0x030f:
                r0 = move-exception
                goto L_0x010c
            L_0x0312:
                r0 = move-exception
                goto L_0x02a0
            L_0x0314:
                r1 = move-exception
                goto L_0x0235
            L_0x0317:
                r0 = move-exception
                r1 = r2
                r6 = r2
                goto L_0x022c
            L_0x031c:
                r0 = move-exception
                r6 = r2
                goto L_0x022c
            L_0x0320:
                r0 = move-exception
                r2 = r5
                goto L_0x022c
            L_0x0324:
                r0 = move-exception
                r5 = r2
                r6 = r2
                goto L_0x02df
            L_0x0328:
                r0 = move-exception
                r5 = r2
                goto L_0x02df
            L_0x032b:
                r0 = move-exception
                goto L_0x02df
            L_0x032d:
                r0 = move-exception
                r5 = r2
                r6 = r2
                goto L_0x02a7
            L_0x0332:
                r0 = move-exception
                r5 = r2
                goto L_0x02a7
            L_0x0336:
                r0 = move-exception
                goto L_0x02a7
            L_0x0339:
                r0 = move-exception
                r5 = r2
                r6 = r2
                goto L_0x026f
            L_0x033e:
                r0 = move-exception
                r5 = r2
                goto L_0x026f
            L_0x0342:
                r0 = move-exception
                goto L_0x026f
            L_0x0345:
                r0 = move-exception
                r6 = r2
                goto L_0x0239
            L_0x0349:
                r0 = move-exception
                goto L_0x0239
            L_0x034c:
                r0 = move-exception
                r2 = r5
                goto L_0x0239
            L_0x0350:
                r0 = move-exception
                r1 = r2
                r3 = r2
                goto L_0x01fa
            L_0x0355:
                r0 = move-exception
                r3 = r2
                goto L_0x01fa
            L_0x0359:
                r0 = move-exception
                r3 = r6
                goto L_0x01fa
            */
            throw new UnsupportedOperationException("Method not decompiled: org.osmdroid.tileprovider.modules.MapTileDownloader.TileLoader.loadTile(org.osmdroid.tileprovider.MapTileRequestState):android.graphics.drawable.Drawable");
        }

        /* access modifiers changed from: protected */
        public void tileLoaded(MapTileRequestState mapTileRequestState, Drawable drawable) {
            MapTileDownloader.this.removeTileFromQueues(mapTileRequestState.getMapTile());
            mapTileRequestState.getCallback().mapTileRequestCompleted(mapTileRequestState, null);
            if (drawable instanceof ReusableBitmapDrawable) {
                BitmapPool.getInstance().returnDrawableToPool((ReusableBitmapDrawable) drawable);
            }
        }
    }

    public MapTileDownloader(ITileSource iTileSource) {
        this(iTileSource, null, null);
    }

    public MapTileDownloader(ITileSource iTileSource, IFilesystemCache iFilesystemCache) {
        this(iTileSource, iFilesystemCache, null);
    }

    public MapTileDownloader(ITileSource iTileSource, IFilesystemCache iFilesystemCache, INetworkAvailablityCheck iNetworkAvailablityCheck) {
        this(iTileSource, iFilesystemCache, iNetworkAvailablityCheck, Configuration.getInstance().getTileDownloadThreads(), Configuration.getInstance().getTileDownloadMaxQueueSize());
    }

    public MapTileDownloader(ITileSource iTileSource, IFilesystemCache iFilesystemCache, INetworkAvailablityCheck iNetworkAvailablityCheck, int i, int i2) {
        super(i, i2);
        this.mTileSource = new AtomicReference<>();
        this.mFilesystemCache = iFilesystemCache;
        this.mNetworkAvailablityCheck = iNetworkAvailablityCheck;
        setTileSource(iTileSource);
    }

    public ITileSource getTileSource() {
        return (ITileSource) this.mTileSource.get();
    }

    public boolean getUsesDataConnection() {
        return true;
    }

    /* access modifiers changed from: protected */
    public String getName() {
        return "Online Tile Download Provider";
    }

    /* access modifiers changed from: protected */
    public String getThreadGroupName() {
        return "downloader";
    }

    /* access modifiers changed from: protected */
    public Runnable getTileLoader() {
        return new TileLoader();
    }

    public void detach() {
        super.detach();
        if (this.mFilesystemCache != null) {
            this.mFilesystemCache.onDetach();
        }
    }

    public int getMinimumZoomLevel() {
        OnlineTileSourceBase onlineTileSourceBase = (OnlineTileSourceBase) this.mTileSource.get();
        if (onlineTileSourceBase != null) {
            return onlineTileSourceBase.getMinimumZoomLevel();
        }
        return 0;
    }

    public int getMaximumZoomLevel() {
        OnlineTileSourceBase onlineTileSourceBase = (OnlineTileSourceBase) this.mTileSource.get();
        if (onlineTileSourceBase != null) {
            return onlineTileSourceBase.getMaximumZoomLevel();
        }
        return TileSystem.getMaximumZoomLevel();
    }

    public void setTileSource(ITileSource iTileSource) {
        if (iTileSource instanceof OnlineTileSourceBase) {
            this.mTileSource.set((OnlineTileSourceBase) iTileSource);
        } else {
            this.mTileSource.set(null);
        }
    }
}
