package com.ifengyu.intercom.ui.adapter;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.v4.internal.view.SupportMenu;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import com.amap.api.maps.AMapException;
import com.amap.api.maps.MapsInitializer;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.v;

/* compiled from: GaoDeOfflineCityChild */
public class e implements OnClickListener {
    private Context a;
    private OfflineMapManager b;
    private OfflineMapCity c;
    private boolean d = false;
    /* access modifiers changed from: private */
    public View e;
    private TextView f;
    private TextView g;
    private TextView h;
    private ImageView i;
    private Handler j = new Handler() {
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int intValue = ((Integer) message.obj).intValue();
            switch (message.what) {
                case -1:
                    e.this.e();
                    return;
                case 0:
                    e.this.d(intValue);
                    return;
                case 1:
                    e.this.c(intValue);
                    return;
                case 2:
                    e.this.a(intValue);
                    return;
                case 3:
                    e.this.b(intValue);
                    return;
                case 4:
                    e.this.f();
                    return;
                case 6:
                    e.this.c();
                    return;
                case 7:
                    e.this.d();
                    return;
                case 101:
                case 102:
                case 103:
                    e.this.e();
                    return;
                default:
                    return;
            }
        }
    };

    public e(Context context, OfflineMapManager offlineMapManager) {
        this.a = context;
        this.b = offlineMapManager;
        b();
    }

    public View a() {
        return this.e;
    }

    private void b() {
        this.e = ((LayoutInflater) this.a.getSystemService("layout_inflater")).inflate(R.layout.item_gaode_offmap_city, null);
        this.f = (TextView) this.e.findViewById(R.id.city_item_name);
        this.g = (TextView) this.e.findViewById(R.id.city_item_map_size);
        this.h = (TextView) this.e.findViewById(R.id.city_item_text_status);
        this.i = (ImageView) this.e.findViewById(R.id.city_item_download_icon);
        this.e.setOnClickListener(this);
    }

    public void a(OfflineMapCity offlineMapCity) {
        if (offlineMapCity != null) {
            this.c = offlineMapCity;
            if (v.a()) {
                this.f.setText(a(offlineMapCity.getPinyin().toLowerCase()));
            } else {
                this.f.setText(offlineMapCity.getCity());
            }
            this.g.setText(String.valueOf(((double) ((int) (((((double) offlineMapCity.getSize()) / 1024.0d) / 1024.0d) * 100.0d))) / 100.0d) + "M");
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
        this.j.sendMessage(message);
    }

    /* access modifiers changed from: private */
    public void c() {
        this.i.setVisibility(0);
        this.h.setVisibility(8);
    }

    /* access modifiers changed from: private */
    public void d() {
    }

    /* access modifiers changed from: private */
    public void a(int i2) {
        this.i.setVisibility(8);
        this.h.setVisibility(0);
        this.h.setTextColor(this.a.getResources().getColor(R.color.gaode_map_download_waiting));
        this.h.setText(this.a.getString(R.string.waiting));
    }

    /* access modifiers changed from: private */
    public void e() {
        this.i.setVisibility(8);
        this.h.setVisibility(0);
        this.h.setTextColor(SupportMenu.CATEGORY_MASK);
        this.h.setText(this.a.getString(R.string.paused));
    }

    /* access modifiers changed from: private */
    public void b(int i2) {
        this.i.setVisibility(8);
        this.h.setVisibility(0);
        this.h.setTextColor(SupportMenu.CATEGORY_MASK);
        this.h.setText(this.a.getString(R.string.paused));
    }

    /* access modifiers changed from: private */
    public void f() {
        this.i.setVisibility(8);
        this.h.setVisibility(0);
        this.h.setTextColor(this.a.getResources().getColor(R.color.black60));
        this.h.setText(this.a.getString(R.string.downloaded));
    }

    /* access modifiers changed from: private */
    public void c(int i2) {
        this.i.setVisibility(8);
        this.h.setVisibility(0);
        this.h.setTextColor(this.a.getResources().getColor(R.color.black60));
        this.h.setText(this.a.getString(R.string.unziping));
    }

    /* access modifiers changed from: private */
    public void d(int i2) {
        this.i.setVisibility(8);
        this.h.setVisibility(0);
        this.h.setTextColor(this.a.getResources().getColor(R.color.select_color));
        this.h.setText(this.a.getString(R.string.downloading));
    }

    private synchronized void g() {
        this.b.pause();
        this.b.restart();
    }

    private synchronized boolean h() {
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
        MapsInitializer.sdcardDir = v.d(this.a);
        this.e.setClickable(false);
        MiTalkiApp.n().postDelayed(new Runnable() {
            public void run() {
                e.this.e.setClickable(true);
            }
        }, 100);
        if (this.c != null) {
            int state = this.c.getState();
            int i2 = this.c.getcompleteCode();
            switch (state) {
                case 0:
                    g();
                    b(i2);
                    break;
                case 1:
                case 4:
                    break;
                default:
                    if (!h()) {
                        e();
                        break;
                    } else {
                        a(i2);
                        break;
                    }
            }
            Log.i("zxy-child", this.c.getCity() + Token.SEPARATOR + this.c.getState());
        }
    }
}
