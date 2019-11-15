package com.ifengyu.intercom.ui.adapter;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.NonNull;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.amap.api.maps.AMapException;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.ui.widget.dialog.k;
import com.ifengyu.intercom.ui.widget.dialog.k.a;
import com.ifengyu.intercom.ui.widget.view.RoundProgressBarView;

/* compiled from: GaoDeOfflineDownloadedChild */
public class h implements OnClickListener {
    private Context a;
    /* access modifiers changed from: private */
    public OfflineMapManager b;
    /* access modifiers changed from: private */
    public OfflineMapCity c;
    private boolean d = false;
    private View e;
    private TextView f;
    private TextView g;
    private final int h = 0;
    private final int i = 1;
    private final int j = 2;
    private RoundProgressBarView k;
    private int l = 0;
    private Handler m = new Handler() {
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int intValue = ((Integer) message.obj).intValue();
            switch (message.what) {
                case -1:
                case 101:
                case 102:
                case 103:
                    h.this.c();
                    return;
                case 0:
                    h.this.d(intValue);
                    return;
                case 1:
                    h.this.c(intValue);
                    return;
                case 2:
                    h.this.a(intValue);
                    return;
                case 3:
                    h.this.b(intValue);
                    return;
                case 4:
                    h.this.d();
                    return;
                default:
                    return;
            }
        }
    };

    public h(Context context, OfflineMapManager offlineMapManager) {
        this.a = context;
        this.b = offlineMapManager;
        b();
    }

    private void b() {
        this.e = ((LayoutInflater) this.a.getSystemService("layout_inflater")).inflate(R.layout.item_gaode_offmap_downloaded, null);
        this.f = (TextView) this.e.findViewById(R.id.city_name);
        this.g = (TextView) this.e.findViewById(R.id.city_size);
        this.k = (RoundProgressBarView) this.e.findViewById(R.id.download_progress);
        this.e.setOnClickListener(this);
    }

    public View a() {
        return this.e;
    }

    public void a(OfflineMapCity offlineMapCity) {
        if (offlineMapCity != null) {
            this.c = offlineMapCity;
            if (v.a()) {
                this.f.setText(a(offlineMapCity.getPinyin().toLowerCase()));
            } else {
                this.f.setText(offlineMapCity.getCity());
            }
            this.g.setText(this.a.getString(R.string.map_size_text) + String.valueOf(((double) ((int) (((((double) offlineMapCity.getSize()) / 1024.0d) / 1024.0d) * 100.0d))) / 100.0d) + "M");
            a(this.c.getState(), this.c.getcompleteCode(), this.d);
        }
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

    private void a(int i2, int i3, boolean z) {
        if (this.c != null) {
            this.c.setState(i2);
            this.c.setCompleteCode(i3);
        }
        Message message = new Message();
        message.what = i2;
        message.obj = Integer.valueOf(i3);
        this.m.sendMessage(message);
    }

    /* access modifiers changed from: private */
    public void a(int i2) {
        this.k.setVisibility(0);
        this.k.setTextIsDisplayable(true);
        this.k.setProgress(0);
        this.l = 0;
    }

    /* access modifiers changed from: private */
    public void c() {
        this.k.setVisibility(0);
        this.k.setTextIsDisplayable(false);
        this.k.invalidate();
        this.l = 1;
    }

    /* access modifiers changed from: private */
    public void b(int i2) {
        this.k.setVisibility(0);
        this.k.setTextIsDisplayable(false);
        this.k.invalidate();
        this.l = 1;
    }

    /* access modifiers changed from: private */
    public void d() {
        this.k.setVisibility(8);
        this.l = 2;
    }

    /* access modifiers changed from: private */
    public void c(int i2) {
        this.k.setVisibility(0);
        this.k.setTextIsDisplayable(true);
        this.k.setProgress(99);
        this.l = 0;
    }

    /* access modifiers changed from: private */
    public void d(int i2) {
        this.k.setVisibility(0);
        this.k.setTextIsDisplayable(true);
        if (i2 == 100) {
            i2 = 99;
        }
        this.k.setProgress(i2);
        this.l = 0;
    }

    /* access modifiers changed from: private */
    public synchronized void e() {
        this.b.pause();
        this.b.restart();
    }

    /* access modifiers changed from: private */
    public synchronized boolean f() {
        boolean z;
        try {
            this.b.downloadByCityName(this.c.getCity());
            z = true;
        } catch (AMapException e2) {
            ThrowableExtension.printStackTrace(e2);
            z = false;
        }
        return z;
    }

    public void onClick(View view) {
        k kVar = null;
        switch (this.l) {
            case 0:
                kVar = new k(this.a, true, true);
                break;
            case 1:
                kVar = new k(this.a, true, false);
                break;
            case 2:
                kVar = new k(this.a, false, false);
                break;
        }
        if (kVar != null) {
            kVar.setOnClickListener(new a() {
                public void a() {
                    h.this.e();
                }

                public void b() {
                    h.this.f();
                }

                public void c() {
                    h.this.b.remove(h.this.c.getCity());
                }
            });
            kVar.show();
        }
    }
}
