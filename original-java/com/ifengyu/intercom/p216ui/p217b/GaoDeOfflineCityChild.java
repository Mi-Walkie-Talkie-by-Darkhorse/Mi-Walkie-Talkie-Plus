package com.ifengyu.intercom.p216ui.p217b;

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
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.library.base.BaseApp;

/* renamed from: com.ifengyu.intercom.ui.b.c */
/* loaded from: classes2.dex */
public class GaoDeOfflineCityChild implements View.OnClickListener {

    /* renamed from: a */
    private Context f14995a;

    /* renamed from: b */
    private OfflineMapManager f14996b;

    /* renamed from: c */
    private OfflineMapCity f14997c;

    /* renamed from: e */
    private View f14999e;

    /* renamed from: f */
    private TextView f15000f;

    /* renamed from: g */
    private TextView f15001g;

    /* renamed from: h */
    private TextView f15002h;

    /* renamed from: i */
    private ImageView f15003i;

    /* renamed from: d */
    private boolean f14998d = false;

    /* renamed from: j */
    private Handler f15004j = new HandlerC4437a();

    /* compiled from: GaoDeOfflineCityChild.java */
    /* renamed from: com.ifengyu.intercom.ui.b.c$a */
    /* loaded from: classes2.dex */
    class HandlerC4437a extends Handler {
        HandlerC4437a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int intValue = ((Integer) message.obj).intValue();
            int i = message.what;
            if (i == -1) {
                GaoDeOfflineCityChild.this.m10384k();
            } else if (i == 0) {
                GaoDeOfflineCityChild.this.m10382m(intValue);
            } else if (i == 1) {
                GaoDeOfflineCityChild.this.m10379p(intValue);
            } else if (i == 2) {
                GaoDeOfflineCityChild.this.m10378q(intValue);
            } else if (i == 3) {
                GaoDeOfflineCityChild.this.m10381n(intValue);
            } else if (i == 4) {
                GaoDeOfflineCityChild.this.m10380o();
            } else if (i == 6) {
                GaoDeOfflineCityChild.this.m10385j();
            } else if (i != 7) {
                switch (i) {
                    case 101:
                    case 102:
                    case 103:
                        GaoDeOfflineCityChild.this.m10384k();
                        return;
                    default:
                        return;
                }
            } else {
                GaoDeOfflineCityChild.this.m10383l();
            }
        }
    }

    /* compiled from: GaoDeOfflineCityChild.java */
    /* renamed from: com.ifengyu.intercom.ui.b.c$b */
    /* loaded from: classes2.dex */
    class RunnableC4438b implements Runnable {
        RunnableC4438b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            GaoDeOfflineCityChild.this.f14999e.setClickable(true);
        }
    }

    public GaoDeOfflineCityChild(Context context, OfflineMapManager offlineMapManager) {
        this.f14995a = context;
        this.f14996b = offlineMapManager;
        m10375t();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public void m10385j() {
        this.f15003i.setVisibility(0);
        this.f15002h.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public void m10384k() {
        this.f15003i.setVisibility(8);
        this.f15002h.setVisibility(0);
        this.f15002h.setTextColor(-65536);
        this.f15002h.setText(this.f14995a.getString(R.string.paused));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public void m10383l() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public void m10382m(int i) {
        this.f15003i.setVisibility(8);
        this.f15002h.setVisibility(0);
        this.f15002h.setTextColor(this.f14995a.getResources().getColor(R.color.select_color));
        this.f15002h.setText(this.f14995a.getString(R.string.downloading));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public void m10381n(int i) {
        this.f15003i.setVisibility(8);
        this.f15002h.setVisibility(0);
        this.f15002h.setTextColor(-65536);
        this.f15002h.setText(this.f14995a.getString(R.string.paused));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public void m10380o() {
        this.f15003i.setVisibility(8);
        this.f15002h.setVisibility(0);
        this.f15002h.setTextColor(this.f14995a.getResources().getColor(R.color.black60));
        this.f15002h.setText(this.f14995a.getString(R.string.downloaded));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public void m10379p(int i) {
        this.f15003i.setVisibility(8);
        this.f15002h.setVisibility(0);
        this.f15002h.setTextColor(this.f14995a.getResources().getColor(R.color.black60));
        this.f15002h.setText(this.f14995a.getString(R.string.unziping));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q */
    public void m10378q(int i) {
        this.f15003i.setVisibility(8);
        this.f15002h.setVisibility(0);
        this.f15002h.setTextColor(this.f14995a.getResources().getColor(R.color.gaode_map_download_waiting));
        this.f15002h.setText(this.f14995a.getString(R.string.waiting));
    }

    @NonNull
    /* renamed from: r */
    private String m10377r(String str) {
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

    /* renamed from: t */
    private void m10375t() {
        View inflate = ((LayoutInflater) this.f14995a.getSystemService("layout_inflater")).inflate(R.layout.item_gaode_offmap_city, (ViewGroup) null);
        this.f14999e = inflate;
        this.f15000f = (TextView) inflate.findViewById(R.id.city_item_name);
        this.f15001g = (TextView) this.f14999e.findViewById(R.id.city_item_map_size);
        this.f15002h = (TextView) this.f14999e.findViewById(R.id.city_item_text_status);
        this.f15003i = (ImageView) this.f14999e.findViewById(R.id.city_item_download_icon);
        this.f14999e.setOnClickListener(this);
    }

    /* renamed from: u */
    private void m10374u(int i, int i2, boolean z) {
        OfflineMapCity offlineMapCity = this.f14997c;
        if (offlineMapCity != null) {
            offlineMapCity.setState(i);
            this.f14997c.setCompleteCode(i2);
        }
        Message message = new Message();
        message.what = i;
        message.obj = Integer.valueOf(i2);
        this.f15004j.sendMessage(message);
    }

    /* renamed from: v */
    private synchronized void m10373v() {
        this.f14996b.pause();
        this.f14996b.restart();
    }

    /* renamed from: x */
    private synchronized boolean m10371x() {
        try {
            this.f14996b.downloadByCityName(this.f14997c.getCity());
        } catch (AMapException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f14999e.setClickable(false);
        BaseApp.m8713a().postDelayed(new RunnableC4438b(), 100L);
        OfflineMapCity offlineMapCity = this.f14997c;
        if (offlineMapCity != null) {
            int state = offlineMapCity.getState();
            int i = this.f14997c.getcompleteCode();
            if (state == 0) {
                m10373v();
                m10381n(i);
            } else if (state != 1 && state != 4) {
                if (m10371x()) {
                    m10378q(i);
                } else {
                    m10384k();
                }
            }
            Log.i("zxy-child", this.f14997c.getCity() + " " + this.f14997c.getState());
        }
    }

    /* renamed from: s */
    public View m10376s() {
        return this.f14999e;
    }

    /* renamed from: w */
    public void m10372w(OfflineMapCity offlineMapCity) {
        if (offlineMapCity != null) {
            this.f14997c = offlineMapCity;
            if (MethodsUtils.m11297c()) {
                this.f15000f.setText(m10377r(offlineMapCity.getPinyin().toLowerCase()));
            } else {
                this.f15000f.setText(offlineMapCity.getCity());
            }
            TextView textView = this.f15001g;
            textView.setText(String.valueOf(((int) (((offlineMapCity.getSize() / 1024.0d) / 1024.0d) * 100.0d)) / 100.0d) + "M");
            m10374u(this.f14997c.getState(), this.f14997c.getcompleteCode(), this.f14998d);
        }
    }
}
