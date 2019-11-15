package org.osmdroid.tileprovider;

import android.content.Context;
import android.os.Build.VERSION;
import org.osmdroid.tileprovider.modules.IFilesystemCache;
import org.osmdroid.tileprovider.modules.INetworkAvailablityCheck;
import org.osmdroid.tileprovider.modules.MapTileAssetsProvider;
import org.osmdroid.tileprovider.modules.MapTileDownloader;
import org.osmdroid.tileprovider.modules.MapTileFileArchiveProvider;
import org.osmdroid.tileprovider.modules.MapTileFilesystemProvider;
import org.osmdroid.tileprovider.modules.MapTileSqlCacheProvider;
import org.osmdroid.tileprovider.modules.NetworkAvailabliltyCheck;
import org.osmdroid.tileprovider.modules.SqlTileWriter;
import org.osmdroid.tileprovider.modules.TileWriter;
import org.osmdroid.tileprovider.tilesource.ITileSource;
import org.osmdroid.tileprovider.tilesource.TileSourceFactory;
import org.osmdroid.tileprovider.util.SimpleRegisterReceiver;

public class MapTileProviderBasic extends MapTileProviderArray implements IMapTileProviderCallback {
    protected IFilesystemCache tileWriter;

    public MapTileProviderBasic(Context context) {
        this(context, TileSourceFactory.DEFAULT_TILE_SOURCE);
    }

    public MapTileProviderBasic(Context context, ITileSource iTileSource) {
        this(new SimpleRegisterReceiver(context), new NetworkAvailabliltyCheck(context), iTileSource, context, null);
    }

    public MapTileProviderBasic(Context context, ITileSource iTileSource, IFilesystemCache iFilesystemCache) {
        this(new SimpleRegisterReceiver(context), new NetworkAvailabliltyCheck(context), iTileSource, context, iFilesystemCache);
    }

    public MapTileProviderBasic(IRegisterReceiver iRegisterReceiver, INetworkAvailablityCheck iNetworkAvailablityCheck, ITileSource iTileSource, Context context, IFilesystemCache iFilesystemCache) {
        super(iTileSource, iRegisterReceiver);
        if (iFilesystemCache != null) {
            this.tileWriter = iFilesystemCache;
        } else if (VERSION.SDK_INT < 10) {
            this.tileWriter = new TileWriter();
        } else {
            this.tileWriter = new SqlTileWriter();
        }
        this.mTileProviderList.add(new MapTileAssetsProvider(iRegisterReceiver, context.getAssets(), iTileSource));
        if (VERSION.SDK_INT < 10) {
            this.mTileProviderList.add(new MapTileFilesystemProvider(iRegisterReceiver, iTileSource));
        } else {
            this.mTileProviderList.add(new MapTileSqlCacheProvider(iRegisterReceiver, iTileSource));
        }
        this.mTileProviderList.add(new MapTileFileArchiveProvider(iRegisterReceiver, iTileSource));
        this.mTileProviderList.add(new MapTileDownloader(iTileSource, this.tileWriter, iNetworkAvailablityCheck));
    }

    public IFilesystemCache getTileWriter() {
        return this.tileWriter;
    }

    public void detach() {
        if (this.tileWriter != null) {
            this.tileWriter.onDetach();
        }
        this.tileWriter = null;
        super.detach();
    }
}
