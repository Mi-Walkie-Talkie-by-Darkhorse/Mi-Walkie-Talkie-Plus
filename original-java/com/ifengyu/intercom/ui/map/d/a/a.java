package com.ifengyu.intercom.ui.map.d.a;

import android.content.Context;
import com.ifengyu.intercom.ui.map.TilePoint;
import org.osmdroid.tileprovider.IRegisterReceiver;
import org.osmdroid.tileprovider.modules.INetworkAvailablityCheck;
import org.osmdroid.tileprovider.modules.NetworkAvailabliltyCheck;
import org.osmdroid.tileprovider.tilesource.ITileSource;
import org.osmdroid.tileprovider.util.SimpleRegisterReceiver;
import org.osmdroid.util.GeoPoint;

/* compiled from: MapTileProvider */
public class a extends e {
    public g a;

    public a(Context context, ITileSource iTileSource) {
        this(new SimpleRegisterReceiver(context), new NetworkAvailabliltyCheck(context), iTileSource, context);
    }

    public a(IRegisterReceiver iRegisterReceiver, INetworkAvailablityCheck iNetworkAvailablityCheck, ITileSource iTileSource, Context context) {
        super(iRegisterReceiver, iNetworkAvailablityCheck, iTileSource, context, null);
        this.a = new g(iRegisterReceiver, iTileSource);
        this.mTileProviderList.add(1, this.a);
    }

    public static TilePoint a(double d, double d2, int i) {
        double d3 = (3.141592653589793d * d) / 180.0d;
        return new TilePoint((int) (Math.pow(2.0d, (double) (i - 1)) * ((d2 / 180.0d) + 1.0d)), (int) ((1.0d - (Math.log((1.0d / Math.cos(d3)) + Math.tan(d3)) / 3.141592653589793d)) * Math.pow(2.0d, (double) (i - 1))), i);
    }

    public static TilePoint[] a(com.ifengyu.intercom.greendao.bean.a aVar, int i) {
        return a(new GeoPoint(aVar.b().doubleValue(), aVar.c().doubleValue()), new GeoPoint(aVar.d().doubleValue(), aVar.e().doubleValue()), i);
    }

    public static TilePoint[] a(GeoPoint geoPoint, GeoPoint geoPoint2, int i) {
        TilePoint a2 = a(geoPoint.getLatitude(), geoPoint.getLongitude(), i);
        TilePoint a3 = a(geoPoint2.getLatitude(), geoPoint2.getLongitude(), i);
        int a4 = (a3.a() - a2.a()) + 1;
        TilePoint[] tilePointArr = new TilePoint[(((a3.b() - a2.b()) + 1) * a4)];
        for (int b = a2.b(); b <= a3.b(); b++) {
            for (int a5 = a2.a(); a5 <= a3.a(); a5++) {
                tilePointArr[(a5 - a2.a()) + ((b - a2.b()) * a4)] = new TilePoint(a5, b, i);
            }
        }
        return tilePointArr;
    }
}
