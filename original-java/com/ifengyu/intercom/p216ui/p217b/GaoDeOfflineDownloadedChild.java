package com.ifengyu.intercom.p216ui.p217b;

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
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p216ui.widget.dialog.GaoDeMapDownloadItemClickDialog;
import com.ifengyu.intercom.p216ui.widget.view.RoundProgressBarView;

/* renamed from: com.ifengyu.intercom.ui.b.f */
/* loaded from: classes2.dex */
public class GaoDeOfflineDownloadedChild implements View.OnClickListener {

    /* renamed from: a */
    private Context f15017a;

    /* renamed from: b */
    private OfflineMapManager f15018b;

    /* renamed from: c */
    private OfflineMapCity f15019c;

    /* renamed from: e */
    private View f15021e;

    /* renamed from: f */
    private TextView f15022f;

    /* renamed from: g */
    private TextView f15023g;

    /* renamed from: h */
    private RoundProgressBarView f15024h;

    /* renamed from: d */
    private boolean f15020d = false;

    /* renamed from: i */
    private int f15025i = 0;

    /* renamed from: j */
    private Handler f15026j = new HandlerC4441a();

    /* compiled from: GaoDeOfflineDownloadedChild.java */
    /* renamed from: com.ifengyu.intercom.ui.b.f$a */
    /* loaded from: classes2.dex */
    class HandlerC4441a extends Handler {
        HandlerC4441a() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            int intValue = ((Integer) message.obj).intValue();
            int i = message.what;
            if (i != -1) {
                if (i == 0) {
                    GaoDeOfflineDownloadedChild.this.m10358l(intValue);
                    return;
                } else if (i == 1) {
                    GaoDeOfflineDownloadedChild.this.m10355o(intValue);
                    return;
                } else if (i == 2) {
                    GaoDeOfflineDownloadedChild.this.m10354p(intValue);
                    return;
                } else if (i == 3) {
                    GaoDeOfflineDownloadedChild.this.m10357m(intValue);
                    return;
                } else if (i == 4) {
                    GaoDeOfflineDownloadedChild.this.m10356n();
                    return;
                } else {
                    switch (i) {
                        case 101:
                        case 102:
                        case 103:
                            break;
                        default:
                            return;
                    }
                }
            }
            GaoDeOfflineDownloadedChild.this.m10359k();
        }
    }

    /* compiled from: GaoDeOfflineDownloadedChild.java */
    /* renamed from: com.ifengyu.intercom.ui.b.f$b */
    /* loaded from: classes2.dex */
    class C4442b implements GaoDeMapDownloadItemClickDialog.InterfaceC4902a {
        C4442b() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.GaoDeMapDownloadItemClickDialog.InterfaceC4902a
        /* renamed from: a */
        public void mo8977a() {
            GaoDeOfflineDownloadedChild.this.m10349u();
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.GaoDeMapDownloadItemClickDialog.InterfaceC4902a
        /* renamed from: b */
        public void mo8976b() {
            GaoDeOfflineDownloadedChild.this.f15018b.remove(GaoDeOfflineDownloadedChild.this.f15019c.getCity());
        }

        @Override // com.ifengyu.intercom.p216ui.widget.dialog.GaoDeMapDownloadItemClickDialog.InterfaceC4902a
        /* renamed from: c */
        public void mo8975c() {
            GaoDeOfflineDownloadedChild.this.m10347w();
        }
    }

    public GaoDeOfflineDownloadedChild(Context context, OfflineMapManager offlineMapManager) {
        this.f15017a = context;
        this.f15018b = offlineMapManager;
        m10351s();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public void m10359k() {
        this.f15023g.setVisibility(8);
        this.f15024h.setVisibility(0);
        this.f15024h.setTextIsDisplayable(false);
        this.f15024h.invalidate();
        this.f15025i = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public void m10358l(int i) {
        this.f15023g.setVisibility(8);
        this.f15024h.setVisibility(0);
        this.f15024h.setTextIsDisplayable(true);
        if (i == 100) {
            i = 99;
        }
        this.f15024h.setProgress(i);
        this.f15025i = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public void m10357m(int i) {
        this.f15023g.setVisibility(8);
        this.f15024h.setVisibility(0);
        this.f15024h.setTextIsDisplayable(false);
        this.f15024h.invalidate();
        this.f15025i = 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: n */
    public void m10356n() {
        this.f15023g.setVisibility(0);
        this.f15024h.setVisibility(8);
        this.f15025i = 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: o */
    public void m10355o(int i) {
        this.f15023g.setVisibility(8);
        this.f15024h.setVisibility(0);
        this.f15024h.setTextIsDisplayable(true);
        this.f15024h.setProgress(99);
        this.f15025i = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public void m10354p(int i) {
        this.f15023g.setVisibility(8);
        this.f15024h.setVisibility(0);
        this.f15024h.setTextIsDisplayable(true);
        this.f15024h.setProgress(0);
        this.f15025i = 0;
    }

    @NonNull
    /* renamed from: q */
    private String m10353q(String str) {
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

    /* renamed from: s */
    private void m10351s() {
        View inflate = ((LayoutInflater) this.f15017a.getSystemService("layout_inflater")).inflate(R.layout.item_gaode_offmap_downloaded, (ViewGroup) null);
        this.f15021e = inflate;
        this.f15022f = (TextView) inflate.findViewById(R.id.city_name);
        this.f15023g = (TextView) this.f15021e.findViewById(R.id.city_size);
        this.f15024h = (RoundProgressBarView) this.f15021e.findViewById(R.id.download_progress);
        this.f15021e.setOnClickListener(this);
    }

    /* renamed from: t */
    private void m10350t(int i, int i2, boolean z) {
        OfflineMapCity offlineMapCity = this.f15019c;
        if (offlineMapCity != null) {
            offlineMapCity.setState(i);
            this.f15019c.setCompleteCode(i2);
        }
        Message message = new Message();
        message.what = i;
        message.obj = Integer.valueOf(i2);
        this.f15026j.sendMessage(message);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u */
    public synchronized void m10349u() {
        this.f15018b.pause();
        this.f15018b.restart();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: w */
    public synchronized boolean m10347w() {
        try {
            this.f15018b.downloadByCityName(this.f15019c.getCity());
        } catch (AMapException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        GaoDeMapDownloadItemClickDialog gaoDeMapDownloadItemClickDialog;
        int i = this.f15025i;
        if (i == 0) {
            gaoDeMapDownloadItemClickDialog = new GaoDeMapDownloadItemClickDialog(this.f15017a, true, true);
        } else if (i != 1) {
            gaoDeMapDownloadItemClickDialog = i != 2 ? null : new GaoDeMapDownloadItemClickDialog(this.f15017a, false, false);
        } else {
            gaoDeMapDownloadItemClickDialog = new GaoDeMapDownloadItemClickDialog(this.f15017a, true, false);
        }
        if (gaoDeMapDownloadItemClickDialog != null) {
            gaoDeMapDownloadItemClickDialog.setOnClickListener(new C4442b());
            gaoDeMapDownloadItemClickDialog.show();
        }
    }

    /* renamed from: r */
    public View m10352r() {
        return this.f15021e;
    }

    /* renamed from: v */
    public void m10348v(OfflineMapCity offlineMapCity) {
        if (offlineMapCity != null) {
            this.f15019c = offlineMapCity;
            if (MethodsUtils.m11297c()) {
                this.f15022f.setText(m10353q(offlineMapCity.getPinyin().toLowerCase()));
            } else {
                this.f15022f.setText(offlineMapCity.getCity());
            }
            TextView textView = this.f15023g;
            textView.setText((((int) (((offlineMapCity.getSize() / 1024.0d) / 1024.0d) * 100.0d)) / 100.0d) + "M");
            m10350t(this.f15019c.getState(), this.f15019c.getcompleteCode(), this.f15020d);
        }
    }
}
