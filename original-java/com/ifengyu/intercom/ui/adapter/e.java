package com.ifengyu.intercom.ui.adapter;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.amap.api.maps.AMapException;
import com.amap.api.maps.MapsInitializer;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.library.base.BaseApp;

/* compiled from: GaoDeOfflineCityChild.java */
/* loaded from: classes2.dex */
public class e implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private Context f6287a;

    /* renamed from: b  reason: collision with root package name */
    private OfflineMapManager f6288b;

    /* renamed from: c  reason: collision with root package name */
    private OfflineMapCity f6289c;
    private View e;
    private TextView f;
    private TextView g;
    private TextView h;
    private ImageView i;
    private boolean d = false;
    private Handler j = new a();

    /* compiled from: GaoDeOfflineCityChild.java */
    /* loaded from: classes2.dex */
    class a extends Handler {
        a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int intValue = ((Integer) message.obj).intValue();
            int i = message.what;
            if (i == -1) {
                e.this.c();
            } else if (i == 0) {
                e.this.a(intValue);
            } else if (i == 1) {
                e.this.c(intValue);
            } else if (i == 2) {
                e.this.d(intValue);
            } else if (i == 3) {
                e.this.b(intValue);
            } else if (i == 4) {
                e.this.e();
            } else if (i == 6) {
                e.this.b();
            } else if (i != 7) {
                switch (i) {
                    case 101:
                    case 102:
                    case 103:
                        e.this.c();
                        return;
                    default:
                        return;
                }
            } else {
                e.this.d();
            }
        }
    }

    /* compiled from: GaoDeOfflineCityChild.java */
    /* loaded from: classes2.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e.this.e.setClickable(true);
        }
    }

    public e(Context context, OfflineMapManager offlineMapManager) {
        this.f6287a = context;
        this.f6288b = offlineMapManager;
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
    }

    private void f() {
        View inflate = ((LayoutInflater) this.f6287a.getSystemService("layout_inflater")).inflate(R.layout.item_gaode_offmap_city, (ViewGroup) null);
        this.e = inflate;
        this.f = (TextView) inflate.findViewById(R.id.city_item_name);
        this.g = (TextView) this.e.findViewById(R.id.city_item_map_size);
        this.h = (TextView) this.e.findViewById(R.id.city_item_text_status);
        this.i = (ImageView) this.e.findViewById(R.id.city_item_download_icon);
        this.e.setOnClickListener(this);
    }

    private synchronized void g() {
        this.f6288b.pause();
        this.f6288b.restart();
    }

    private synchronized boolean h() {
        try {
            this.f6288b.downloadByCityName(this.f6289c.getCity());
        } catch (AMapException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        MapsInitializer.sdcardDir = c0.a(this.f6287a);
        this.e.setClickable(false);
        BaseApp.a().postDelayed(new b(), 100L);
        OfflineMapCity offlineMapCity = this.f6289c;
        if (offlineMapCity != null) {
            int state = offlineMapCity.getState();
            int i = this.f6289c.getcompleteCode();
            if (state == 0) {
                g();
                b(i);
            } else if (!(state == 1 || state == 4)) {
                if (h()) {
                    d(i);
                } else {
                    c();
                }
            }
            Log.i("zxy-child", this.f6289c.getCity() + " " + this.f6289c.getState());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        this.i.setVisibility(8);
        this.h.setVisibility(0);
        this.h.setTextColor(this.f6287a.getResources().getColor(R.color.black60));
        this.h.setText(this.f6287a.getString(R.string.downloaded));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.i.setVisibility(0);
        this.h.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.i.setVisibility(8);
        this.h.setVisibility(0);
        this.h.setTextColor(-65536);
        this.h.setText(this.f6287a.getString(R.string.paused));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(int i) {
        this.i.setVisibility(8);
        this.h.setVisibility(0);
        this.h.setTextColor(this.f6287a.getResources().getColor(R.color.gaode_map_download_waiting));
        this.h.setText(this.f6287a.getString(R.string.waiting));
    }

    public View a() {
        return this.e;
    }

    public void a(OfflineMapCity offlineMapCity) {
        if (offlineMapCity != null) {
            this.f6289c = offlineMapCity;
            if (c0.a()) {
                this.f.setText(a(offlineMapCity.getPinyin().toLowerCase()));
            } else {
                this.f.setText(offlineMapCity.getCity());
            }
            TextView textView = this.g;
            textView.setText(String.valueOf(((int) (((offlineMapCity.getSize() / 1024.0d) / 1024.0d) * 100.0d)) / 100.0d) + "M");
            a(this.f6289c.getState(), this.f6289c.getcompleteCode(), this.d);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(int i) {
        this.i.setVisibility(8);
        this.h.setVisibility(0);
        this.h.setTextColor(-65536);
        this.h.setText(this.f6287a.getString(R.string.paused));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(int i) {
        this.i.setVisibility(8);
        this.h.setVisibility(0);
        this.h.setTextColor(this.f6287a.getResources().getColor(R.color.black60));
        this.h.setText(this.f6287a.getString(R.string.unziping));
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
        OfflineMapCity offlineMapCity = this.f6289c;
        if (offlineMapCity != null) {
            offlineMapCity.setState(i);
            this.f6289c.setCompleteCode(i2);
        }
        Message message = new Message();
        message.what = i;
        message.obj = Integer.valueOf(i2);
        this.j.sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        this.i.setVisibility(8);
        this.h.setVisibility(0);
        this.h.setTextColor(this.f6287a.getResources().getColor(R.color.select_color));
        this.h.setText(this.f6287a.getString(R.string.downloading));
    }
}
