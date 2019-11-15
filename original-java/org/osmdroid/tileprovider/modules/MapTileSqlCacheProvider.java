package org.osmdroid.tileprovider.modules;

import android.database.Cursor;
import java.util.concurrent.atomic.AtomicReference;
import microsoft.mappoint.TileSystem;
import org.osmdroid.config.Configuration;
import org.osmdroid.tileprovider.IRegisterReceiver;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.tilesource.ITileSource;

public class MapTileSqlCacheProvider extends MapTileFileStorageProviderBase {
    /* access modifiers changed from: private */
    public static final String[] columns = {DatabaseFileArchive.COLUMN_TILE, "expires"};
    private static final String[] tile = {DatabaseFileArchive.COLUMN_TILE};
    /* access modifiers changed from: private */
    public final long mMaximumCachedFileAge;
    /* access modifiers changed from: private */
    public final AtomicReference<ITileSource> mTileSource;
    /* access modifiers changed from: private */
    public SqlTileWriter mWriter;

    protected class TileLoader extends TileLoader {
        protected TileLoader() {
            super();
        }

        /* JADX WARNING: Removed duplicated region for block: B:51:0x018d  */
        /* JADX WARNING: Removed duplicated region for block: B:55:0x0196  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public android.graphics.drawable.Drawable loadTile(org.osmdroid.tileprovider.MapTileRequestState r14) {
            /*
                r13 = this;
                r9 = 0
                org.osmdroid.tileprovider.modules.MapTileSqlCacheProvider r0 = org.osmdroid.tileprovider.modules.MapTileSqlCacheProvider.this
                java.util.concurrent.atomic.AtomicReference r0 = r0.mTileSource
                java.lang.Object r0 = r0.get()
                r8 = r0
                org.osmdroid.tileprovider.tilesource.ITileSource r8 = (org.osmdroid.tileprovider.tilesource.ITileSource) r8
                if (r8 != 0) goto L_0x0012
                r0 = r9
            L_0x0011:
                return r0
            L_0x0012:
                org.osmdroid.tileprovider.MapTile r10 = r14.getMapTile()
                boolean r0 = org.osmdroid.tileprovider.modules.MapTileFileStorageProviderBase.isSdCardAvailable()
                if (r0 != 0) goto L_0x0040
                org.osmdroid.config.IConfigurationProvider r0 = org.osmdroid.config.Configuration.getInstance()
                boolean r0 = r0.isDebugMode()
                if (r0 == 0) goto L_0x003e
                java.lang.String r0 = "OsmDroid"
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "No sdcard - do nothing for tile: "
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.StringBuilder r1 = r1.append(r10)
                java.lang.String r1 = r1.toString()
                android.util.Log.d(r0, r1)
            L_0x003e:
                r0 = r9
                goto L_0x0011
            L_0x0040:
                org.osmdroid.tileprovider.modules.MapTileSqlCacheProvider r0 = org.osmdroid.tileprovider.modules.MapTileSqlCacheProvider.this
                org.osmdroid.tileprovider.modules.SqlTileWriter r0 = r0.mWriter
                if (r0 == 0) goto L_0x0052
                org.osmdroid.tileprovider.modules.MapTileSqlCacheProvider r0 = org.osmdroid.tileprovider.modules.MapTileSqlCacheProvider.this
                org.osmdroid.tileprovider.modules.SqlTileWriter r0 = r0.mWriter
                android.database.sqlite.SQLiteDatabase r0 = r0.db
                if (r0 != 0) goto L_0x0076
            L_0x0052:
                org.osmdroid.config.IConfigurationProvider r0 = org.osmdroid.config.Configuration.getInstance()
                boolean r0 = r0.isDebugMode()
                if (r0 == 0) goto L_0x0074
                java.lang.String r0 = "OsmDroid"
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>()
                java.lang.String r2 = "Sqlwriter cache is offline - do nothing for tile: "
                java.lang.StringBuilder r1 = r1.append(r2)
                java.lang.StringBuilder r1 = r1.append(r10)
                java.lang.String r1 = r1.toString()
                android.util.Log.d(r0, r1)
            L_0x0074:
                r0 = r9
                goto L_0x0011
            L_0x0076:
                int r0 = r10.getX()     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                long r0 = (long) r0     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                int r2 = r10.getY()     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                long r2 = (long) r2     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                int r4 = r10.getZoomLevel()     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                long r4 = (long) r4     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                int r6 = (int) r4     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                long r6 = r4 << r6
                long r0 = r0 + r6
                int r4 = (int) r4     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                long r0 = r0 << r4
                long r4 = r0 + r2
                org.osmdroid.tileprovider.modules.MapTileSqlCacheProvider r0 = org.osmdroid.tileprovider.modules.MapTileSqlCacheProvider.this     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                org.osmdroid.tileprovider.modules.SqlTileWriter r0 = r0.mWriter     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                android.database.sqlite.SQLiteDatabase r0 = r0.db     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                java.lang.String r1 = "tiles"
                java.lang.String[] r2 = org.osmdroid.tileprovider.modules.MapTileSqlCacheProvider.columns     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                r3.<init>()     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                java.lang.String r6 = "key = "
                java.lang.StringBuilder r3 = r3.append(r6)     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                java.lang.String r4 = " and provider = '"
                java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                java.lang.String r4 = r8.name()     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                java.lang.String r4 = "'"
                java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                java.lang.String r3 = r3.toString()     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                android.database.Cursor r4 = r0.query(r1, r2, r3, r4, r5, r6, r7)     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                r0 = 0
                int r2 = r4.getCount()     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                if (r2 == 0) goto L_0x019f
                r4.moveToFirst()     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                java.lang.String r0 = "tile"
                int r0 = r4.getColumnIndex(r0)     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                byte[] r2 = r4.getBlob(r0)     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                java.lang.String r0 = "expires"
                int r0 = r4.getColumnIndex(r0)     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                long r0 = r4.getLong(r0)     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                r11 = r0
                r0 = r2
                r2 = r11
            L_0x00ec:
                r4.close()     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                if (r0 != 0) goto L_0x0129
                org.osmdroid.config.IConfigurationProvider r0 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                boolean r0 = r0.isDebugMode()     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                if (r0 == 0) goto L_0x0121
                java.lang.String r0 = "OsmDroid"
                java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                r1.<init>()     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                java.lang.String r2 = "SqlCache - Tile doesn't exist: "
                java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                java.lang.String r2 = r8.name()     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                java.lang.StringBuilder r1 = r1.append(r10)     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                java.lang.String r1 = r1.toString()     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                android.util.Log.d(r0, r1)     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                int r0 = org.osmdroid.tileprovider.util.Counters.fileCacheMiss     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                int r0 = r0 + 1
                org.osmdroid.tileprovider.util.Counters.fileCacheMiss = r0     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
            L_0x0121:
                if (r9 == 0) goto L_0x0126
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r9)
            L_0x0126:
                r0 = r9
                goto L_0x0011
            L_0x0129:
                java.io.ByteArrayInputStream r1 = new java.io.ByteArrayInputStream     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                r1.<init>(r0)     // Catch:{ Throwable -> 0x0182, all -> 0x0193 }
                android.graphics.drawable.Drawable r0 = r8.getDrawable(r1)     // Catch:{ Throwable -> 0x019d }
                long r4 = java.lang.System.currentTimeMillis()     // Catch:{ Throwable -> 0x019d }
                org.osmdroid.tileprovider.modules.MapTileSqlCacheProvider r6 = org.osmdroid.tileprovider.modules.MapTileSqlCacheProvider.this     // Catch:{ Throwable -> 0x019d }
                long r6 = r6.mMaximumCachedFileAge     // Catch:{ Throwable -> 0x019d }
                long r4 = r4 - r6
                int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
                if (r2 >= 0) goto L_0x0180
                r2 = 1
            L_0x0142:
                if (r2 == 0) goto L_0x0173
                if (r0 == 0) goto L_0x0173
                org.osmdroid.config.IConfigurationProvider r2 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ Throwable -> 0x019d }
                boolean r2 = r2.isDebugMode()     // Catch:{ Throwable -> 0x019d }
                if (r2 == 0) goto L_0x0170
                java.lang.String r2 = "OsmDroid"
                java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x019d }
                r3.<init>()     // Catch:{ Throwable -> 0x019d }
                java.lang.String r4 = "Tile expired: "
                java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Throwable -> 0x019d }
                java.lang.String r4 = r8.name()     // Catch:{ Throwable -> 0x019d }
                java.lang.StringBuilder r3 = r3.append(r4)     // Catch:{ Throwable -> 0x019d }
                java.lang.StringBuilder r3 = r3.append(r10)     // Catch:{ Throwable -> 0x019d }
                java.lang.String r3 = r3.toString()     // Catch:{ Throwable -> 0x019d }
                android.util.Log.d(r2, r3)     // Catch:{ Throwable -> 0x019d }
            L_0x0170:
                org.osmdroid.tileprovider.ExpirableBitmapDrawable.setDrawableExpired(r0)     // Catch:{ Throwable -> 0x019d }
            L_0x0173:
                int r2 = org.osmdroid.tileprovider.util.Counters.fileCacheHit     // Catch:{ Throwable -> 0x019d }
                int r2 = r2 + 1
                org.osmdroid.tileprovider.util.Counters.fileCacheHit = r2     // Catch:{ Throwable -> 0x019d }
                if (r1 == 0) goto L_0x0011
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r1)
                goto L_0x0011
            L_0x0180:
                r2 = 0
                goto L_0x0142
            L_0x0182:
                r0 = move-exception
                r1 = r9
            L_0x0184:
                java.lang.String r2 = "OsmDroid"
                java.lang.String r3 = "Error loading tile"
                android.util.Log.e(r2, r3, r0)     // Catch:{ all -> 0x019a }
                if (r1 == 0) goto L_0x0190
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r1)
            L_0x0190:
                r0 = r9
                goto L_0x0011
            L_0x0193:
                r0 = move-exception
            L_0x0194:
                if (r9 == 0) goto L_0x0199
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r9)
            L_0x0199:
                throw r0
            L_0x019a:
                r0 = move-exception
                r9 = r1
                goto L_0x0194
            L_0x019d:
                r0 = move-exception
                goto L_0x0184
            L_0x019f:
                r2 = r0
                r0 = r9
                goto L_0x00ec
            */
            throw new UnsupportedOperationException("Method not decompiled: org.osmdroid.tileprovider.modules.MapTileSqlCacheProvider.TileLoader.loadTile(org.osmdroid.tileprovider.MapTileRequestState):android.graphics.drawable.Drawable");
        }
    }

    public MapTileSqlCacheProvider(IRegisterReceiver iRegisterReceiver, ITileSource iTileSource, long j) {
        super(iRegisterReceiver, Configuration.getInstance().getTileFileSystemThreads(), Configuration.getInstance().getTileFileSystemMaxQueueSize());
        this.mTileSource = new AtomicReference<>();
        setTileSource(iTileSource);
        this.mMaximumCachedFileAge = j;
        this.mWriter = new SqlTileWriter();
    }

    public MapTileSqlCacheProvider(IRegisterReceiver iRegisterReceiver, ITileSource iTileSource) {
        this(iRegisterReceiver, iTileSource, 604800000);
    }

    public boolean getUsesDataConnection() {
        return false;
    }

    /* access modifiers changed from: protected */
    public String getName() {
        return "SQL Cache Archive Provider";
    }

    /* access modifiers changed from: protected */
    public String getThreadGroupName() {
        return "sqlcache";
    }

    /* access modifiers changed from: protected */
    public Runnable getTileLoader() {
        return new TileLoader();
    }

    public int getMinimumZoomLevel() {
        ITileSource iTileSource = (ITileSource) this.mTileSource.get();
        if (iTileSource != null) {
            return iTileSource.getMinimumZoomLevel();
        }
        return 0;
    }

    public int getMaximumZoomLevel() {
        ITileSource iTileSource = (ITileSource) this.mTileSource.get();
        if (iTileSource != null) {
            return iTileSource.getMaximumZoomLevel();
        }
        return TileSystem.getMaximumZoomLevel();
    }

    /* access modifiers changed from: protected */
    public void onMediaMounted() {
    }

    /* access modifiers changed from: protected */
    public void onMediaUnmounted() {
        if (this.mWriter != null) {
            this.mWriter.onDetach();
        }
        this.mWriter = new SqlTileWriter();
    }

    public void setTileSource(ITileSource iTileSource) {
        this.mTileSource.set(iTileSource);
    }

    public void detach() {
        if (this.mWriter != null) {
            this.mWriter.onDetach();
        }
        this.mWriter = null;
        super.detach();
    }

    public boolean hasTile(MapTile mapTile) {
        ITileSource iTileSource = (ITileSource) this.mTileSource.get();
        if (iTileSource == null) {
            return false;
        }
        long y = (long) mapTile.getY();
        long zoomLevel = (long) mapTile.getZoomLevel();
        Cursor query = this.mWriter.db.query("tiles", columns, "key = " + (y + ((((long) mapTile.getX()) + (zoomLevel << ((int) zoomLevel))) << ((int) zoomLevel))) + " and provider = '" + iTileSource.name() + "'", null, null, null, null);
        if (query.getCount() == 0) {
            return false;
        }
        query.close();
        return true;
    }
}
