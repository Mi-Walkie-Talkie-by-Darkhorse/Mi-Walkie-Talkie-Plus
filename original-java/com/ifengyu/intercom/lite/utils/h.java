package com.ifengyu.intercom.lite.utils;

import android.graphics.Typeface;
import android.widget.TextView;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.lite.database.LiteDatabase;
import com.ifengyu.intercom.lite.models.DeviceModel;
import com.ifengyu.intercom.network.d.e;
import com.ifengyu.intercom.node.ConnectionConfiguration;
import com.ifengyu.intercom.node.q.d;
import java.util.Iterator;

/* compiled from: LiteUtil.java */
/* loaded from: classes2.dex */
public class h {
    public static void a(Typeface typeface, TextView... textViewArr) {
        for (TextView textView : textViewArr) {
            textView.setTypeface(typeface);
            textView.setPaintFlags(textView.getPaintFlags() | 128);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void b() {
        Iterator<ConnectionConfiguration> it = d.c().d.a().iterator();
        while (it.hasNext()) {
            ConnectionConfiguration next = it.next();
            DeviceModel deviceModel = new DeviceModel();
            deviceModel.setDeviceId(next.e());
            deviceModel.setAddress(next.a());
            deviceModel.setName(next.d());
            deviceModel.setEnabled(next.g());
            deviceModel.setDeviceColor(next.b());
            deviceModel.setDeviceType(next.c());
            deviceModel.setConnected(next.f());
            LiteDatabase.o().n().a(deviceModel);
        }
        d0.d(true);
    }

    public static void a() {
        if (!d0.W()) {
            e.a().execute(a.f5787a);
        }
    }
}
