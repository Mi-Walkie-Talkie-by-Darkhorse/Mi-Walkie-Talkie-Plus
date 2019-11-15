package com.ifengyu.intercom.ui.map.d.a;

import android.content.Context;
import org.osmdroid.tileprovider.IMapTileProviderCallback;
import org.osmdroid.tileprovider.IRegisterReceiver;
import org.osmdroid.tileprovider.MapTileProviderArray;
import org.osmdroid.tileprovider.modules.IFilesystemCache;
import org.osmdroid.tileprovider.modules.INetworkAvailablityCheck;
import org.osmdroid.tileprovider.modules.MapTileDownloader;
import org.osmdroid.tileprovider.modules.MapTileFilesystemProvider;
import org.osmdroid.tileprovider.modules.TileWriter;
import org.osmdroid.tileprovider.tilesource.ITileSource;

/* compiled from: MyMapTileProviderBasic */
public class e extends MapTileProviderArray implements IMapTileProviderCallback {
    protected IFilesystemCache b;

    public e(IRegisterReceiver iRegisterReceiver, INetworkAvailablityCheck iNetworkAvailablityCheck, ITileSource iTileSource, Context context, IFilesystemCache iFilesystemCache) {
        super(iTileSource, iRegisterReceiver);
        if (iFilesystemCache != null) {
            this.b = iFilesystemCache;
        } else {
            this.b = new TileWriter();
        }
        this.mTileProviderList.add(new MapTileFilesystemProvider(iRegisterReceiver, iTileSource));
        this.mTileProviderList.add(new MapTileDownloader(iTileSource, this.b, iNetworkAvailablityCheck));
    }

    public IFilesystemCache getTileWriter() {
        return this.b;
    }

    public void detach() {
        if (this.b != null) {
            this.b.onDetach();
        }
        this.b = null;
        super.detach();
    }
}
