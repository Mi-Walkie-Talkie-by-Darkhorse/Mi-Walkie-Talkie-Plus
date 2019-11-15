package com.ifengyu.intercom.ui.map.d.a;

import android.graphics.drawable.Drawable;
import android.os.Environment;
import android.util.Log;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.File;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
import microsoft.mappoint.TileSystem;
import org.osmdroid.api.IMapView;
import org.osmdroid.config.Configuration;
import org.osmdroid.tileprovider.IRegisterReceiver;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.MapTileRequestState;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;
import org.osmdroid.tileprovider.modules.ArchiveFileFactory;
import org.osmdroid.tileprovider.modules.IArchiveFile;
import org.osmdroid.tileprovider.modules.MapTileFileStorageProviderBase;
import org.osmdroid.tileprovider.tilesource.BitmapTileSourceBase.LowMemoryException;
import org.osmdroid.tileprovider.tilesource.ITileSource;

/* compiled from: OfflineTileFilesystemProvider */
public class g extends MapTileFileStorageProviderBase {
    private final ArrayList<IArchiveFile> a;
    /* access modifiers changed from: private */
    public final AtomicReference<ITileSource> b;
    private final boolean c;

    /* compiled from: OfflineTileFilesystemProvider */
    protected class a extends TileLoader {
        protected a() {
            super();
        }

        public Drawable loadTile(MapTileRequestState mapTileRequestState) {
            ITileSource iTileSource = (ITileSource) g.this.b.get();
            if (iTileSource == null) {
                return null;
            }
            MapTile mapTile = mapTileRequestState.getMapTile();
            if (!MapTileFileStorageProviderBase.isSdCardAvailable()) {
                if (Configuration.getInstance().isDebugMode()) {
                    Log.d(IMapView.LOGTAG, "No sdcard - do nothing for tile: " + mapTile);
                }
                return null;
            }
            File[] listFiles = new File(Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + "mitalki/map/offline").listFiles();
            if (listFiles == null) {
                return null;
            }
            int length = listFiles.length;
            int i = 0;
            while (i < length) {
                File file = new File(listFiles[i].getAbsolutePath(), iTileSource.getTileRelativeFilenameString(mapTile) + OpenStreetMapTileProviderConstants.TILE_PATH_EXTENSION);
                if (file.exists()) {
                    try {
                        return iTileSource.getDrawable(file.getPath());
                    } catch (LowMemoryException e) {
                        ThrowableExtension.printStackTrace(e);
                    }
                } else {
                    i++;
                }
            }
            return null;
        }
    }

    public g(IRegisterReceiver iRegisterReceiver, ITileSource iTileSource, IArchiveFile[] iArchiveFileArr) {
        super(iRegisterReceiver, Configuration.getInstance().getTileFileSystemThreads(), Configuration.getInstance().getTileFileSystemMaxQueueSize());
        this.a = new ArrayList<>();
        this.b = new AtomicReference<>();
        setTileSource(iTileSource);
        if (iArchiveFileArr == null) {
            this.c = false;
            a();
            return;
        }
        this.c = true;
        for (int length = iArchiveFileArr.length - 1; length >= 0; length--) {
            this.a.add(iArchiveFileArr[length]);
        }
    }

    public g(IRegisterReceiver iRegisterReceiver, ITileSource iTileSource) {
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
        return new a();
    }

    public int getMinimumZoomLevel() {
        ITileSource iTileSource = (ITileSource) this.b.get();
        if (iTileSource != null) {
            return iTileSource.getMinimumZoomLevel();
        }
        return 0;
    }

    public int getMaximumZoomLevel() {
        ITileSource iTileSource = (ITileSource) this.b.get();
        if (iTileSource != null) {
            return iTileSource.getMaximumZoomLevel();
        }
        return TileSystem.getMaximumZoomLevel();
    }

    /* access modifiers changed from: protected */
    public void onMediaMounted() {
        if (!this.c) {
            a();
        }
    }

    /* access modifiers changed from: protected */
    public void onMediaUnmounted() {
        if (!this.c) {
            a();
        }
    }

    public void setTileSource(ITileSource iTileSource) {
        this.b.set(iTileSource);
    }

    public void detach() {
        while (!this.a.isEmpty()) {
            if (((IArchiveFile) this.a.get(0)) != null) {
                ((IArchiveFile) this.a.get(0)).close();
            }
            this.a.remove(0);
        }
        super.detach();
    }

    private void a() {
        this.a.clear();
        if (isSdCardAvailable()) {
            File[] listFiles = Configuration.getInstance().getOsmdroidBasePath().listFiles();
            if (listFiles != null) {
                for (File archiveFile : listFiles) {
                    IArchiveFile archiveFile2 = ArchiveFileFactory.getArchiveFile(archiveFile);
                    if (archiveFile2 != null) {
                        this.a.add(archiveFile2);
                    }
                }
            }
        }
    }
}
