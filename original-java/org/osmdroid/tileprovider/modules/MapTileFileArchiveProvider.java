package org.osmdroid.tileprovider.modules;

import android.util.Log;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import microsoft.mappoint.TileSystem;
import org.osmdroid.api.IMapView;
import org.osmdroid.config.Configuration;
import org.osmdroid.tileprovider.IRegisterReceiver;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.tilesource.ITileSource;

public class MapTileFileArchiveProvider extends MapTileFileStorageProviderBase {
    private final ArrayList<IArchiveFile> mArchiveFiles;
    private final boolean mSpecificArchivesProvided;
    /* access modifiers changed from: private */
    public final AtomicReference<ITileSource> mTileSource;

    protected class TileLoader extends TileLoader {
        protected TileLoader() {
            super();
        }

        /* JADX WARNING: Removed duplicated region for block: B:31:0x00a9  */
        /* JADX WARNING: Removed duplicated region for block: B:35:0x00b1  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public android.graphics.drawable.Drawable loadTile(org.osmdroid.tileprovider.MapTileRequestState r8) {
            /*
                r7 = this;
                r1 = 0
                org.osmdroid.tileprovider.modules.MapTileFileArchiveProvider r0 = org.osmdroid.tileprovider.modules.MapTileFileArchiveProvider.this
                java.util.concurrent.atomic.AtomicReference r0 = r0.mTileSource
                java.lang.Object r0 = r0.get()
                org.osmdroid.tileprovider.tilesource.ITileSource r0 = (org.osmdroid.tileprovider.tilesource.ITileSource) r0
                if (r0 != 0) goto L_0x0011
                r0 = r1
            L_0x0010:
                return r0
            L_0x0011:
                org.osmdroid.tileprovider.MapTile r3 = r8.getMapTile()
                boolean r2 = org.osmdroid.tileprovider.modules.MapTileFileStorageProviderBase.isSdCardAvailable()
                if (r2 != 0) goto L_0x003f
                org.osmdroid.config.IConfigurationProvider r0 = org.osmdroid.config.Configuration.getInstance()
                boolean r0 = r0.isDebugMode()
                if (r0 == 0) goto L_0x003d
                java.lang.String r0 = "OsmDroid"
                java.lang.StringBuilder r2 = new java.lang.StringBuilder
                r2.<init>()
                java.lang.String r4 = "No sdcard - do nothing for tile: "
                java.lang.StringBuilder r2 = r2.append(r4)
                java.lang.StringBuilder r2 = r2.append(r3)
                java.lang.String r2 = r2.toString()
                android.util.Log.d(r0, r2)
            L_0x003d:
                r0 = r1
                goto L_0x0010
            L_0x003f:
                org.osmdroid.config.IConfigurationProvider r2 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ Throwable -> 0x009e, all -> 0x00ad }
                boolean r2 = r2.isDebugMode()     // Catch:{ Throwable -> 0x009e, all -> 0x00ad }
                if (r2 == 0) goto L_0x0061
                java.lang.String r2 = "OsmDroid"
                java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x009e, all -> 0x00ad }
                r4.<init>()     // Catch:{ Throwable -> 0x009e, all -> 0x00ad }
                java.lang.String r5 = "Archives - Tile doesn't exist: "
                java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ Throwable -> 0x009e, all -> 0x00ad }
                java.lang.StringBuilder r4 = r4.append(r3)     // Catch:{ Throwable -> 0x009e, all -> 0x00ad }
                java.lang.String r4 = r4.toString()     // Catch:{ Throwable -> 0x009e, all -> 0x00ad }
                android.util.Log.d(r2, r4)     // Catch:{ Throwable -> 0x009e, all -> 0x00ad }
            L_0x0061:
                org.osmdroid.tileprovider.modules.MapTileFileArchiveProvider r2 = org.osmdroid.tileprovider.modules.MapTileFileArchiveProvider.this     // Catch:{ Throwable -> 0x009e, all -> 0x00ad }
                java.io.InputStream r2 = r2.getInputStream(r3, r0)     // Catch:{ Throwable -> 0x009e, all -> 0x00ad }
                if (r2 == 0) goto L_0x0096
                org.osmdroid.config.IConfigurationProvider r4 = org.osmdroid.config.Configuration.getInstance()     // Catch:{ Throwable -> 0x00b7 }
                boolean r4 = r4.isDebugMode()     // Catch:{ Throwable -> 0x00b7 }
                if (r4 == 0) goto L_0x008b
                java.lang.String r4 = "OsmDroid"
                java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x00b7 }
                r5.<init>()     // Catch:{ Throwable -> 0x00b7 }
                java.lang.String r6 = "Use tile from archive: "
                java.lang.StringBuilder r5 = r5.append(r6)     // Catch:{ Throwable -> 0x00b7 }
                java.lang.StringBuilder r3 = r5.append(r3)     // Catch:{ Throwable -> 0x00b7 }
                java.lang.String r3 = r3.toString()     // Catch:{ Throwable -> 0x00b7 }
                android.util.Log.d(r4, r3)     // Catch:{ Throwable -> 0x00b7 }
            L_0x008b:
                android.graphics.drawable.Drawable r0 = r0.getDrawable(r2)     // Catch:{ Throwable -> 0x00b7 }
                if (r2 == 0) goto L_0x0010
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r2)
                goto L_0x0010
            L_0x0096:
                if (r2 == 0) goto L_0x009b
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r2)
            L_0x009b:
                r0 = r1
                goto L_0x0010
            L_0x009e:
                r0 = move-exception
                r2 = r1
            L_0x00a0:
                java.lang.String r3 = "OsmDroid"
                java.lang.String r4 = "Error loading tile"
                android.util.Log.e(r3, r4, r0)     // Catch:{ all -> 0x00b5 }
                if (r2 == 0) goto L_0x009b
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r2)
                goto L_0x009b
            L_0x00ad:
                r0 = move-exception
                r2 = r1
            L_0x00af:
                if (r2 == 0) goto L_0x00b4
                org.osmdroid.tileprovider.util.StreamUtils.closeStream(r2)
            L_0x00b4:
                throw r0
            L_0x00b5:
                r0 = move-exception
                goto L_0x00af
            L_0x00b7:
                r0 = move-exception
                goto L_0x00a0
            */
            throw new UnsupportedOperationException("Method not decompiled: org.osmdroid.tileprovider.modules.MapTileFileArchiveProvider.TileLoader.loadTile(org.osmdroid.tileprovider.MapTileRequestState):android.graphics.drawable.Drawable");
        }
    }

    public MapTileFileArchiveProvider(IRegisterReceiver iRegisterReceiver, ITileSource iTileSource, IArchiveFile[] iArchiveFileArr) {
        super(iRegisterReceiver, Configuration.getInstance().getTileFileSystemThreads(), Configuration.getInstance().getTileFileSystemMaxQueueSize());
        this.mArchiveFiles = new ArrayList<>();
        this.mTileSource = new AtomicReference<>();
        setTileSource(iTileSource);
        if (iArchiveFileArr == null) {
            this.mSpecificArchivesProvided = false;
            findArchiveFiles();
            return;
        }
        this.mSpecificArchivesProvided = true;
        for (int length = iArchiveFileArr.length - 1; length >= 0; length--) {
            this.mArchiveFiles.add(iArchiveFileArr[length]);
        }
    }

    public MapTileFileArchiveProvider(IRegisterReceiver iRegisterReceiver, ITileSource iTileSource) {
        this(iRegisterReceiver, iTileSource, null);
    }

    public boolean getUsesDataConnection() {
        return false;
    }

    /* access modifiers changed from: protected */
    public String getName() {
        return "File Archive Provider";
    }

    /* access modifiers changed from: protected */
    public String getThreadGroupName() {
        return "filearchive";
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
        if (!this.mSpecificArchivesProvided) {
            findArchiveFiles();
        }
    }

    /* access modifiers changed from: protected */
    public void onMediaUnmounted() {
        if (!this.mSpecificArchivesProvided) {
            findArchiveFiles();
        }
    }

    public void setTileSource(ITileSource iTileSource) {
        this.mTileSource.set(iTileSource);
    }

    public void detach() {
        while (!this.mArchiveFiles.isEmpty()) {
            if (((IArchiveFile) this.mArchiveFiles.get(0)) != null) {
                ((IArchiveFile) this.mArchiveFiles.get(0)).close();
            }
            this.mArchiveFiles.remove(0);
        }
        super.detach();
    }

    private void findArchiveFiles() {
        this.mArchiveFiles.clear();
        if (isSdCardAvailable()) {
            File[] listFiles = Configuration.getInstance().getOsmdroidBasePath().listFiles();
            if (listFiles != null) {
                for (File archiveFile : listFiles) {
                    IArchiveFile archiveFile2 = ArchiveFileFactory.getArchiveFile(archiveFile);
                    if (archiveFile2 != null) {
                        this.mArchiveFiles.add(archiveFile2);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public synchronized InputStream getInputStream(MapTile mapTile, ITileSource iTileSource) {
        InputStream inputStream;
        Iterator it = this.mArchiveFiles.iterator();
        while (true) {
            if (!it.hasNext()) {
                inputStream = null;
                break;
            }
            IArchiveFile iArchiveFile = (IArchiveFile) it.next();
            if (iArchiveFile != null) {
                InputStream inputStream2 = iArchiveFile.getInputStream(iTileSource, mapTile);
                if (inputStream2 != null) {
                    if (Configuration.getInstance().isDebugMode()) {
                        Log.d(IMapView.LOGTAG, "Found tile " + mapTile + " in " + iArchiveFile);
                    }
                    inputStream = inputStream2;
                }
            }
        }
        return inputStream;
    }
}
