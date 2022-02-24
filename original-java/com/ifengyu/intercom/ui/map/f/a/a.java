package com.ifengyu.intercom.ui.map.f.a;

import android.content.Context;
import com.ifengyu.intercom.ui.map.TilePoint;
import org.osmdroid.tileprovider.IRegisterReceiver;
import org.osmdroid.tileprovider.modules.INetworkAvailablityCheck;
import org.osmdroid.tileprovider.modules.NetworkAvailabliltyCheck;
import org.osmdroid.tileprovider.tilesource.ITileSource;
import org.osmdroid.tileprovider.util.SimpleRegisterReceiver;
import org.osmdroid.util.GeoPoint;

/* compiled from: MapTileProvider.java */
/* loaded from: classes2.dex */
public class a extends e {

    /* renamed from: b  reason: collision with root package name */
    public g f6546b;

    public a(Context context, ITileSource iTileSource) {
        this(new SimpleRegisterReceiver(context), new NetworkAvailabliltyCheck(context), iTileSource, context);
    }

    public static TilePoint a(double d, double d2, int i) {
        double d3 = i - 1;
        double d4 = (d * 3.141592653589793d) / 180.0d;
        return new TilePoint((int) (Math.pow(2.0d, d3) * ((d2 / 180.0d) + 1.0d)), (int) (Math.pow(2.0d, d3) * (1.0d - (Math.log(Math.tan(d4) + (1.0d / Math.cos(d4))) / 3.141592653589793d))), i);
    }

    public a(IRegisterReceiver iRegisterReceiver, INetworkAvailablityCheck iNetworkAvailablityCheck, ITileSource iTileSource, Context context) {
        super(iRegisterReceiver, iNetworkAvailablityCheck, iTileSource, context, null);
        g gVar = new g(iRegisterReceiver, iTileSource);
        this.f6546b = gVar;
        this.mTileProviderList.add(1, gVar);
    }

    public static TilePoint[] a(com.ifengyu.intercom.greendao.bean.a aVar, int i) {
        return a(new GeoPoint(aVar.g().doubleValue(), aVar.i().doubleValue()), new GeoPoint(aVar.f().doubleValue(), aVar.h().doubleValue()), i);
    }

    public static TilePoint[] a(GeoPoint geoPoint, GeoPoint geoPoint2, int i) {
        TilePoint a2 = a(geoPoint.getLatitude(), geoPoint.getLongitude(), i);
        TilePoint a3 = a(geoPoint2.getLatitude(), geoPoint2.getLongitude(), i);
        int a4 = (a3.a() - a2.a()) + 1;
        TilePoint[] tilePointArr = new TilePoint[((a3.b() - a2.b()) + 1) * a4];
        for (int b2 = a2.b(); b2 <= a3.b(); b2++) {
            for (int a5 = a2.a(); a5 <= a3.a(); a5++) {
                tilePointArr[(a5 - a2.a()) + ((b2 - a2.b()) * a4)] = new TilePoint(a5, b2, i);
            }
        }
        return tilePointArr;
    }
}
