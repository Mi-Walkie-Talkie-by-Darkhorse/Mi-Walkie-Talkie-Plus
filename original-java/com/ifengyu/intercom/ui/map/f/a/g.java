package com.ifengyu.intercom.ui.map.f.a;

import android.graphics.drawable.Drawable;
import android.util.Log;
import com.ifengyu.intercom.i.k0;
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
import org.osmdroid.tileprovider.modules.MapTileModuleProviderBase;
import org.osmdroid.tileprovider.tilesource.BitmapTileSourceBase;
import org.osmdroid.tileprovider.tilesource.ITileSource;

/* compiled from: OfflineTileFilesystemProvider.java */
/* loaded from: classes2.dex */
public class g extends MapTileFileStorageProviderBase {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<IArchiveFile> f6558a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicReference<ITileSource> f6559b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f6560c;

    /* compiled from: OfflineTileFilesystemProvider.java */
    /* loaded from: classes2.dex */
    protected class a extends MapTileModuleProviderBase.TileLoader {
        protected a() {
            super();
        }

        @Override // org.osmdroid.tileprovider.modules.MapTileModuleProviderBase.TileLoader
        public Drawable loadTile(MapTileRequestState mapTileRequestState) {
            ITileSource iTileSource = (ITileSource) g.this.f6559b.get();
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
            File[] listFiles = new File(k0.a().getExternalFilesDir(null).getAbsolutePath() + "/map/offline").listFiles();
            if (listFiles == null) {
                return null;
            }
            for (File file : listFiles) {
                File file2 = new File(file.getAbsolutePath(), iTileSource.getTileRelativeFilenameString(mapTile) + OpenStreetMapTileProviderConstants.TILE_PATH_EXTENSION);
                if (file2.exists()) {
                    try {
                        return iTileSource.getDrawable(file2.getPath());
                    } catch (BitmapTileSourceBase.LowMemoryException e) {
                        e.printStackTrace();
                    }
                }
            }
            return null;
        }
    }

    public g(IRegisterReceiver iRegisterReceiver, ITileSource iTileSource, IArchiveFile[] iArchiveFileArr) {
        super(iRegisterReceiver, Configuration.getInstance().getTileFileSystemThreads(), Configuration.getInstance().getTileFileSystemMaxQueueSize());
        this.f6558a = new ArrayList<>();
        this.f6559b = new AtomicReference<>();
        setTileSource(iTileSource);
        if (iArchiveFileArr == null) {
            this.f6560c = false;
            findArchiveFiles();
            return;
        }
        this.f6560c = true;
        for (int length = iArchiveFileArr.length - 1; length >= 0; length--) {
            this.f6558a.add(iArchiveFileArr[length]);
        }
    }

    private void findArchiveFiles() {
        File[] listFiles;
        this.f6558a.clear();
        if (MapTileFileStorageProviderBase.isSdCardAvailable() && (listFiles = Configuration.getInstance().getOsmdroidBasePath().listFiles()) != null) {
            for (File file : listFiles) {
                IArchiveFile archiveFile = ArchiveFileFactory.getArchiveFile(file);
                if (archiveFile != null) {
                    this.f6558a.add(archiveFile);
                }
            }
        }
    }

    @Override // org.osmdroid.tileprovider.modules.MapTileFileStorageProviderBase, org.osmdroid.tileprovider.modules.MapTileModuleProviderBase
    public void detach() {
        while (!this.f6558a.isEmpty()) {
            if (this.f6558a.get(0) != null) {
                this.f6558a.get(0).close();
            }
            this.f6558a.remove(0);
        }
        super.detach();
    }

    @Override // org.osmdroid.tileprovider.modules.MapTileModuleProviderBase
    public int getMaximumZoomLevel() {
        ITileSource iTileSource = this.f6559b.get();
        if (iTileSource != null) {
            return iTileSource.getMaximumZoomLevel();
        }
        return TileSystem.getMaximumZoomLevel();
    }

    @Override // org.osmdroid.tileprovider.modules.MapTileModuleProviderBase
    public int getMinimumZoomLevel() {
        ITileSource iTileSource = this.f6559b.get();
        if (iTileSource != null) {
            return iTileSource.getMinimumZoomLevel();
        }
        return 0;
    }

    @Override // org.osmdroid.tileprovider.modules.MapTileModuleProviderBase
    protected String getName() {
        return "File Archive Provider";
    }

    @Override // org.osmdroid.tileprovider.modules.MapTileModuleProviderBase
    protected String getThreadGroupName() {
        return "filearchive";
    }

    @Override // org.osmdroid.tileprovider.modules.MapTileModuleProviderBase
    protected Runnable getTileLoader() {
        return new a();
    }

    @Override // org.osmdroid.tileprovider.modules.MapTileModuleProviderBase
    public boolean getUsesDataConnection() {
        return false;
    }

    @Override // org.osmdroid.tileprovider.modules.MapTileFileStorageProviderBase
    protected void onMediaMounted() {
        if (!this.f6560c) {
            findArchiveFiles();
        }
    }

    @Override // org.osmdroid.tileprovider.modules.MapTileFileStorageProviderBase
    protected void onMediaUnmounted() {
        if (!this.f6560c) {
            findArchiveFiles();
        }
    }

    @Override // org.osmdroid.tileprovider.modules.MapTileModuleProviderBase
    public void setTileSource(ITileSource iTileSource) {
        this.f6559b.set(iTileSource);
    }

    public g(IRegisterReceiver iRegisterReceiver, ITileSource iTileSource) {
        this(iRegisterReceiver, iTileSource, null);
    }
}
