package com.ifengyu.intercom.ui.map.d.a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.Log;
import com.ifengyu.intercom.ui.map.MapDataProvider.MAP_TYPE;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import org.osmdroid.api.IMapView;
import org.osmdroid.tileprovider.BitmapPool;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.ReusableBitmapDrawable;
import org.osmdroid.tileprovider.tilesource.BitmapTileSourceBase.LowMemoryException;
import org.osmdroid.tileprovider.tilesource.OnlineTileSourceBase;

/* compiled from: TileSource */
public class h extends OnlineTileSourceBase {
    public static String a = "googleSatelliteMap";
    public static String b = "contourMap";
    public static String c = "gaodeMap";
    private MAP_TYPE d;

    public h(MAP_TYPE map_type, int i, int i2, String[] strArr) {
        super(a(map_type), i, i2, 512, ".png", strArr);
        this.d = map_type;
    }

    public static String a(MAP_TYPE map_type) {
        if (map_type == MAP_TYPE.GOOGLE_SATELLITE_MAP) {
            return a;
        }
        if (map_type == MAP_TYPE.CONTOUR_MAP) {
            return b;
        }
        return map_type == MAP_TYPE.GOOGLE_2D_MAP ? c : XiaomiOAuthConstants.EXTRA_ERROR_CODE_2;
    }

    public String getBaseUrl() {
        return "";
    }

    public static String a(MAP_TYPE map_type, Object obj, Object obj2, Object obj3) {
        switch (map_type) {
            case GOOGLE_SATELLITE_MAP:
                return "http://mt3.google.cn/vt/lyrs=y&hl=zh-CN&gl=cn&scale=2&x=" + obj + "&y=" + obj2 + "&z=" + obj3;
            case CONTOUR_MAP:
                return "https://a.tile.thunderforest.com/cycle/" + obj3 + "/" + obj + "/" + obj2 + ".png";
            case GOOGLE_2D_MAP:
                return "http://mt2.google.cn/vt/lyrs=m&hl=zh-CN&gl=cn&scale=2&x=" + obj + "&y=" + obj2 + "&z=" + obj3;
            default:
                return XiaomiOAuthConstants.EXTRA_ERROR_CODE_2;
        }
    }

    public String getTileURLString(MapTile mapTile) {
        return a(this.d, Integer.valueOf(mapTile.getX()), Integer.valueOf(mapTile.getY()), Integer.valueOf(mapTile.getZoomLevel()));
    }

    public Drawable getDrawable(String str) throws LowMemoryException {
        Bitmap decodeFile;
        try {
            Options options = new Options();
            BitmapPool.getInstance().applyReusableOptions(options);
            if (VERSION.SDK_INT == 15) {
                decodeFile = BitmapFactory.decodeFile(str);
            } else {
                decodeFile = BitmapFactory.decodeFile(str, options);
            }
            if (decodeFile != null) {
                return new ReusableBitmapDrawable(decodeFile);
            }
        } catch (OutOfMemoryError e) {
            Log.e(IMapView.LOGTAG, "OutOfMemoryError loading bitmap: " + str);
            System.gc();
            throw new LowMemoryException((Throwable) e);
        } catch (Exception e2) {
            Log.e(IMapView.LOGTAG, "Unexpected error loading bitmap: " + str, e2);
            System.gc();
        }
        return null;
    }

    public static String a() {
        return ".png";
    }
}
