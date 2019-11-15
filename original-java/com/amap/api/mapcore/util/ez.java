package com.amap.api.mapcore.util;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;
import com.amap.api.maps.offlinemap.OfflineMapManager;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.R;

/* compiled from: BottomDialog */
public class ez extends fa implements OnClickListener {
    private OfflineMapManager a;
    private View b;
    private TextView c;
    private TextView d;
    private TextView e;
    private TextView f;
    private int g;
    private String h;

    public ez(Context context, OfflineMapManager offlineMapManager) {
        super(context);
        this.a = offlineMapManager;
    }

    /* access modifiers changed from: protected */
    public void a() {
        this.b = ff.a(getContext(), R.mipmap.qrcode_default_grid_scan_line, null);
        setContentView(this.b);
        this.b.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                ez.this.dismiss();
            }
        });
        this.c = (TextView) this.b.findViewById(2131165191);
        this.d = (TextView) this.b.findViewById(2131165192);
        this.e = (TextView) this.b.findViewById(2131165193);
        this.f = (TextView) this.b.findViewById(2131165194);
        this.d.setOnClickListener(this);
        this.e.setOnClickListener(this);
        this.f.setOnClickListener(this);
    }

    public void a(int i, String str) {
        this.c.setText(str);
        if (i == 0) {
            this.d.setText("暂停");
            this.d.setVisibility(0);
        } else if (i == 3 || i == -1 || i == 101 || i == 102 || i == 103) {
            this.d.setText("开始");
            this.d.setVisibility(0);
        } else if (i == 4) {
            this.d.setVisibility(8);
        }
        this.g = i;
        this.h = str;
    }

    public void onClick(View view) {
        try {
            switch (view.getId()) {
                case 2131165192:
                    if (this.g == 0) {
                        this.d.setText("开始");
                        this.a.pause();
                    } else if (this.g == 3 || this.g == -1 || this.g == 101 || this.g == 102 || this.g == 103) {
                        this.d.setText("暂停");
                        this.a.downloadByCityName(this.h);
                    }
                    dismiss();
                    return;
                case 2131165193:
                    if (!TextUtils.isEmpty(this.h)) {
                        this.a.remove(this.h);
                        dismiss();
                        return;
                    }
                    return;
                case 2131165194:
                    dismiss();
                    return;
                default:
                    return;
            }
        } catch (Exception e2) {
            ThrowableExtension.printStackTrace(e2);
        }
        ThrowableExtension.printStackTrace(e2);
    }
}
