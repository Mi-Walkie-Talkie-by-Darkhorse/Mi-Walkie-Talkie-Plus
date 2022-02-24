package com.ifengyu.intercom.ui.map.f.a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import com.ifengyu.intercom.ui.map.MapDataProvider;
import org.osmdroid.api.IMapView;
import org.osmdroid.tileprovider.BitmapPool;
import org.osmdroid.tileprovider.MapTile;
import org.osmdroid.tileprovider.ReusableBitmapDrawable;
import org.osmdroid.tileprovider.tilesource.BitmapTileSourceBase;
import org.osmdroid.tileprovider.tilesource.OnlineTileSourceBase;

/* compiled from: TileSource.java */
/* loaded from: classes2.dex */
public class h extends OnlineTileSourceBase {

    /* renamed from: b  reason: collision with root package name */
    public static String f6562b = "googleSatelliteMap";

    /* renamed from: c  reason: collision with root package name */
    public static String f6563c = "contourMap";
    public static String d = "gaodeMap";

    /* renamed from: a  reason: collision with root package name */
    private MapDataProvider.MAP_TYPE f6564a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: TileSource.java */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f6565a;

        static {
            int[] iArr = new int[MapDataProvider.MAP_TYPE.values().length];
            f6565a = iArr;
            try {
                iArr[MapDataProvider.MAP_TYPE.GOOGLE_SATELLITE_MAP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f6565a[MapDataProvider.MAP_TYPE.CONTOUR_MAP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f6565a[MapDataProvider.MAP_TYPE.GOOGLE_2D_MAP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public h(MapDataProvider.MAP_TYPE map_type, int i, int i2, String[] strArr) {
        super(a(map_type), i, i2, 512, ".png", strArr);
        this.f6564a = map_type;
    }

    public static String a() {
        return ".png";
    }

    public static String a(MapDataProvider.MAP_TYPE map_type) {
        return map_type == MapDataProvider.MAP_TYPE.GOOGLE_SATELLITE_MAP ? f6562b : map_type == MapDataProvider.MAP_TYPE.CONTOUR_MAP ? f6563c : map_type == MapDataProvider.MAP_TYPE.GOOGLE_2D_MAP ? d : "error";
    }

    @Override // org.osmdroid.tileprovider.tilesource.OnlineTileSourceBase
    public String getBaseUrl() {
        return "";
    }

    @Override // org.osmdroid.tileprovider.tilesource.BitmapTileSourceBase, org.osmdroid.tileprovider.tilesource.ITileSource
    public Drawable getDrawable(String str) throws BitmapTileSourceBase.LowMemoryException {
        Bitmap bitmap;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            BitmapPool.getInstance().applyReusableOptions(options);
            if (Build.VERSION.SDK_INT == 15) {
                bitmap = BitmapFactory.decodeFile(str);
            } else {
                bitmap = BitmapFactory.decodeFile(str, options);
            }
            if (bitmap != null) {
                return new ReusableBitmapDrawable(bitmap);
            }
            return null;
        } catch (Exception e) {
            Log.e(IMapView.LOGTAG, "Unexpected error loading bitmap: " + str, e);
            System.gc();
            return null;
        } catch (OutOfMemoryError e2) {
            Log.e(IMapView.LOGTAG, "OutOfMemoryError loading bitmap: " + str);
            System.gc();
            throw new BitmapTileSourceBase.LowMemoryException(e2);
        }
    }

    @Override // org.osmdroid.tileprovider.tilesource.OnlineTileSourceBase
    public String getTileURLString(MapTile mapTile) {
        return a(this.f6564a, Integer.valueOf(mapTile.getX()), Integer.valueOf(mapTile.getY()), Integer.valueOf(mapTile.getZoomLevel()));
    }

    public static String a(MapDataProvider.MAP_TYPE map_type, Object obj, Object obj2, Object obj3) {
        int i = a.f6565a[map_type.ordinal()];
        if (i == 1) {
            return "http://mt3.google.cn/vt/lyrs=y&hl=zh-CN&gl=cn&scale=2&x=" + obj + "&y=" + obj2 + "&z=" + obj3;
        } else if (i == 2) {
            return "https://a.tile.thunderforest.com/cycle/" + obj3 + "/" + obj + "/" + obj2 + ".png";
        } else if (i != 3) {
            return "error";
        } else {
            return "http://mt2.google.cn/vt/lyrs=m&hl=zh-CN&gl=cn&scale=2&x=" + obj + "&y=" + obj2 + "&z=" + obj3;
        }
    }
}
