package com.ifengyu.intercom.ui.adapter;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.amap.api.maps.AMapException;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.ui.widget.dialog.k;
import com.ifengyu.intercom.ui.widget.view.RoundProgressBarView;

/* compiled from: GaoDeOfflineDownloadedChild.java */
/* loaded from: classes2.dex */
public class h implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private Context f6300a;

    /* renamed from: b  reason: collision with root package name */
    private OfflineMapManager f6301b;

    /* renamed from: c  reason: collision with root package name */
    private OfflineMapCity f6302c;
    private View e;
    private TextView f;
    private TextView g;
    private RoundProgressBarView h;
    private boolean d = false;
    private int i = 0;
    private Handler j = new a();

    /* compiled from: GaoDeOfflineDownloadedChild.java */
    /* loaded from: classes2.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int intValue = ((Integer) message.obj).intValue();
            int i = message.what;
            if (i != -1) {
                if (i == 0) {
                    h.this.a(intValue);
                    return;
                } else if (i == 1) {
                    h.this.c(intValue);
                    return;
                } else if (i == 2) {
                    h.this.d(intValue);
                    return;
                } else if (i == 3) {
                    h.this.b(intValue);
                    return;
                } else if (i != 4) {
                    switch (i) {
                        case 101:
                        case 102:
                        case 103:
                            break;
                        default:
                            return;
                    }
                } else {
                    h.this.c();
                    return;
                }
            }
            h.this.b();
        }
    }

    /* compiled from: GaoDeOfflineDownloadedChild.java */
    /* loaded from: classes2.dex */
    class b implements k.a {
        b() {
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.k.a
        public void a() {
            h.this.f6301b.remove(h.this.f6302c.getCity());
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.k.a
        public void b() {
            h.this.e();
        }

        @Override // com.ifengyu.intercom.ui.widget.dialog.k.a
        public void c() {
            h.this.f();
        }
    }

    public h(Context context, OfflineMapManager offlineMapManager) {
        this.f6300a = context;
        this.f6301b = offlineMapManager;
        d();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        k kVar;
        int i = this.i;
        if (i == 0) {
            kVar = new k(this.f6300a, true, true);
        } else if (i != 1) {
            kVar = i != 2 ? null : new k(this.f6300a, false, false);
        } else {
            kVar = new k(this.f6300a, true, false);
        }
        if (kVar != null) {
            kVar.setOnClickListener(new b());
            kVar.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void e() {
        this.f6301b.pause();
        this.f6301b.restart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean f() {
        try {
            this.f6301b.downloadByCityName(this.f6302c.getCity());
        } catch (AMapException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.h.setVisibility(0);
        this.h.setTextIsDisplayable(false);
        this.h.invalidate();
        this.i = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.h.setVisibility(8);
        this.i = 2;
    }

    private void d() {
        View inflate = ((LayoutInflater) this.f6300a.getSystemService("layout_inflater")).inflate(R.layout.item_gaode_offmap_downloaded, (ViewGroup) null);
        this.e = inflate;
        this.f = (TextView) inflate.findViewById(R.id.city_name);
        this.g = (TextView) this.e.findViewById(R.id.city_size);
        this.h = (RoundProgressBarView) this.e.findViewById(R.id.download_progress);
        this.e.setOnClickListener(this);
    }

    public View a() {
        return this.e;
    }

    public void a(OfflineMapCity offlineMapCity) {
        if (offlineMapCity != null) {
            this.f6302c = offlineMapCity;
            if (c0.a()) {
                this.f.setText(a(offlineMapCity.getPinyin().toLowerCase()));
            } else {
                this.f.setText(offlineMapCity.getCity());
            }
            TextView textView = this.g;
            textView.setText(this.f6300a.getString(R.string.map_size_text) + String.valueOf(((int) (((offlineMapCity.getSize() / 1024.0d) / 1024.0d) * 100.0d)) / 100.0d) + "M");
            a(this.f6302c.getState(), this.f6302c.getcompleteCode(), this.d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i) {
        this.h.setVisibility(0);
        this.h.setTextIsDisplayable(true);
        this.h.setProgress(99);
        this.i = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        this.h.setVisibility(0);
        this.h.setTextIsDisplayable(false);
        this.h.invalidate();
        this.i = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i) {
        this.h.setVisibility(0);
        this.h.setTextIsDisplayable(true);
        this.h.setProgress(0);
        this.i = 0;
    }

    @NonNull
    private String a(String str) {
        if (str.equals("quanguogaiyaotu")) {
            return "National Basic Map";
        }
        if (str.equals("xian")) {
            return "Xi'an";
        }
        if (str.equals("yaan")) {
            return "Ya'an";
        }
        if (str.equals("liuan")) {
            return "Liu'an";
        }
        if (str.equals("huaian")) {
            return "Huai'an";
        }
        if (str.equals("guanan")) {
            return "Guang'an";
        }
        if (str.equals("taian")) {
            return "Tai'an";
        }
        if (str.equals("xianggang")) {
            return "Hong Kong";
        }
        if (str.equals("aomen")) {
            return "Macao";
        }
        return str.substring(0, 1).toUpperCase() + str.substring(1);
    }

    private void a(int i, int i2, boolean z) {
        OfflineMapCity offlineMapCity = this.f6302c;
        if (offlineMapCity != null) {
            offlineMapCity.setState(i);
            this.f6302c.setCompleteCode(i2);
        }
        Message message = new Message();
        message.what = i;
        message.obj = Integer.valueOf(i2);
        this.j.sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        this.h.setVisibility(0);
        this.h.setTextIsDisplayable(true);
        if (i == 100) {
            i = 99;
        }
        this.h.setProgress(i);
        this.i = 0;
    }
}
