package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Color;
import android.os.Handler;
import android.os.Message;
import android.support.v4.internal.view.SupportMenu;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.amap.api.maps.AMapException;
import com.amap.api.maps.offlinemap.DownloadProgressView;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.R;

/* compiled from: OfflineChild */
public class fb implements OnClickListener {
    private int a = 0;
    private Context b;
    private TextView c;
    private TextView d;
    private ImageView e;
    private TextView f;
    private OfflineMapManager g;
    private OfflineMapCity h;
    private boolean i = false;
    private Handler j = new Handler() {
        public void handleMessage(Message message) {
            super.handleMessage(message);
            try {
                fb.this.a(message.arg1, message.arg2);
            } catch (Exception e) {
                ThrowableExtension.printStackTrace(e);
            }
        }
    };
    private View k;
    private DownloadProgressView l;

    /* access modifiers changed from: private */
    public void a(int i2, int i3) throws Exception {
        if (this.a != 2 || i3 <= 3 || i3 >= 100) {
            this.l.setVisibility(8);
        } else {
            this.l.setVisibility(0);
            this.l.setProgress(i3);
        }
        switch (i2) {
            case -1:
                e();
                return;
            case 0:
                if (this.a == 1) {
                    this.e.setVisibility(8);
                    this.f.setText("下载中");
                    this.f.setTextColor(Color.parseColor("#4287ff"));
                    return;
                }
                e(i3);
                return;
            case 1:
                d(i3);
                return;
            case 2:
                b(i3);
                return;
            case 3:
                c(i3);
                return;
            case 4:
                f();
                return;
            case 6:
                c();
                return;
            case 7:
                d();
                return;
            case 101:
            case 102:
            case 103:
                e();
                return;
            default:
                return;
        }
    }

    public fb(Context context, OfflineMapManager offlineMapManager) {
        this.b = context;
        b();
        this.g = offlineMapManager;
    }

    public void a(int i2) {
        this.a = i2;
    }

    public View a() {
        return this.k;
    }

    private void b() {
        this.k = ff.a(this.b, R.mipmap.qrcode_default_scan_line, null);
        this.l = (DownloadProgressView) this.k.findViewById(2131165200);
        this.c = (TextView) this.k.findViewById(2131165195);
        this.d = (TextView) this.k.findViewById(2131165199);
        this.e = (ImageView) this.k.findViewById(2131165198);
        this.f = (TextView) this.k.findViewById(2131165197);
        this.e.setOnClickListener(this);
    }

    public void a(OfflineMapCity offlineMapCity) {
        if (offlineMapCity != null) {
            this.h = offlineMapCity;
            this.c.setText(offlineMapCity.getCity());
            this.d.setText(String.valueOf(((double) ((int) (((((double) offlineMapCity.getSize()) / 1024.0d) / 1024.0d) * 100.0d))) / 100.0d) + " M");
            a(this.h.getState(), this.h.getcompleteCode(), this.i);
        }
    }

    private void a(int i2, int i3, boolean z) {
        if (this.h != null) {
            this.h.setState(i2);
            this.h.setCompleteCode(i3);
        }
        Message message = new Message();
        message.arg1 = i2;
        message.arg2 = i3;
        this.j.sendMessage(message);
    }

    private void c() {
        this.f.setVisibility(8);
        this.e.setVisibility(0);
        this.e.setImageResource(R.drawable.abc_btn_borderless_material);
    }

    private void d() {
        this.f.setVisibility(0);
        this.e.setVisibility(0);
        this.e.setImageResource(R.drawable.abc_btn_borderless_material);
        this.f.setText("已下载-有更新");
    }

    private void b(int i2) {
        if (this.a == 1) {
            this.e.setVisibility(8);
            this.f.setVisibility(0);
            this.f.setText("等待中");
            this.f.setTextColor(-7829368);
            return;
        }
        this.f.setVisibility(0);
        this.e.setVisibility(8);
        this.f.setTextColor(-7829368);
        this.f.setText("等待中");
    }

    private void e() {
        this.f.setVisibility(0);
        this.e.setVisibility(8);
        this.f.setTextColor(SupportMenu.CATEGORY_MASK);
        this.f.setText("下载出现异常");
    }

    private void c(int i2) {
        this.f.setVisibility(0);
        this.e.setVisibility(8);
        this.f.setTextColor(-7829368);
        this.f.setText("暂停");
    }

    private void f() {
        this.f.setVisibility(0);
        this.e.setVisibility(8);
        this.f.setText("已下载");
        this.f.setTextColor(Color.parseColor("#898989"));
    }

    private void d(int i2) {
        if (this.a != 1) {
            this.f.setVisibility(0);
            this.e.setVisibility(8);
            this.f.setText("解压中");
            this.f.setTextColor(Color.parseColor("#898989"));
        }
    }

    private void e(int i2) {
        if (this.h != null) {
            this.f.setVisibility(0);
            this.f.setText("下载中");
            this.e.setVisibility(8);
            this.f.setTextColor(Color.parseColor("#4287ff"));
        }
    }

    private synchronized void g() {
        this.g.pause();
        this.g.restart();
    }

    private synchronized boolean h() {
        boolean z = false;
        synchronized (this) {
            try {
                this.g.downloadByCityName(this.h.getCity());
                z = true;
            } catch (AMapException e2) {
                ThrowableExtension.printStackTrace(e2);
                Toast.makeText(this.b, e2.getErrorMessage(), 0).show();
            }
        }
        return z;
    }

    public void onClick(View view) {
        try {
            if (!ee.c(this.b)) {
                Toast.makeText(this.b, "无网络连接", 0).show();
            } else if (this.h != null) {
                int state = this.h.getState();
                int i2 = this.h.getcompleteCode();
                switch (state) {
                    case 0:
                        g();
                        c(i2);
                        return;
                    case 1:
                    case 4:
                        return;
                    default:
                        if (h()) {
                            b(i2);
                            return;
                        } else {
                            e();
                            return;
                        }
                }
                ThrowableExtension.printStackTrace(e);
            }
        } catch (Exception e2) {
            ThrowableExtension.printStackTrace(e2);
        }
    }
}
