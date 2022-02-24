package com.ifengyu.intercom.ui.map.f.a;

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

/* compiled from: MyMapTileProviderBasic.java */
/* loaded from: classes2.dex */
public class e extends MapTileProviderArray implements IMapTileProviderCallback {

    /* renamed from: a  reason: collision with root package name */
    protected IFilesystemCache f6556a;

    public e(IRegisterReceiver iRegisterReceiver, INetworkAvailablityCheck iNetworkAvailablityCheck, ITileSource iTileSource, Context context, IFilesystemCache iFilesystemCache) {
        super(iTileSource, iRegisterReceiver);
        if (iFilesystemCache != null) {
            this.f6556a = iFilesystemCache;
        } else {
            this.f6556a = new TileWriter();
        }
        this.mTileProviderList.add(new MapTileFilesystemProvider(iRegisterReceiver, iTileSource));
        this.mTileProviderList.add(new MapTileDownloader(iTileSource, this.f6556a, iNetworkAvailablityCheck));
    }

    @Override // org.osmdroid.tileprovider.MapTileProviderArray, org.osmdroid.tileprovider.MapTileProviderBase
    public void detach() {
        IFilesystemCache iFilesystemCache = this.f6556a;
        if (iFilesystemCache != null) {
            iFilesystemCache.onDetach();
        }
        this.f6556a = null;
        super.detach();
    }

    @Override // org.osmdroid.tileprovider.MapTileProviderArray, org.osmdroid.tileprovider.MapTileProviderBase
    public IFilesystemCache getTileWriter() {
        return this.f6556a;
    }
}
