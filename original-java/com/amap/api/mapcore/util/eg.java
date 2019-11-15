package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.amap.api.mapcore.util.cv.a;
import com.amap.api.maps.model.Tile;
import com.amap.api.maps.model.TileProvider;

/* compiled from: ImageFetcher */
public class eg extends eh {
    private TileProvider e = null;

    public eg(Context context, int i, int i2) {
        super(context, i, i2);
        a(context);
    }

    private void a(Context context) {
        b(context);
    }

    public void a(TileProvider tileProvider) {
        this.e = tileProvider;
    }

    private void b(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
        }
    }

    private Bitmap c(a aVar) {
        try {
            Tile tile = this.e.getTile(aVar.a, aVar.b, aVar.c);
            if (tile == null || tile == TileProvider.NO_TILE) {
                return null;
            }
            return BitmapFactory.decodeByteArray(tile.data, 0, tile.data.length);
        } catch (Throwable th) {
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public Bitmap a(Object obj) {
        return c((a) obj);
    }
}
