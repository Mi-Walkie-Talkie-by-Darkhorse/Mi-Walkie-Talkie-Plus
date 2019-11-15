package com.ifengyu.intercom.ui.map;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.greendao.dao.a.C0024a;
import com.ifengyu.intercom.greendao.dao.b;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.map.d.a.a;
import com.ifengyu.intercom.ui.widget.dialog.d;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import org.osmdroid.util.GeoPoint;

public class GoogleMapDownloadDefinitionActivity extends BaseActivity implements OnClickListener {
    /* access modifiers changed from: private */
    public int[] A = new int[3];
    /* access modifiers changed from: private */
    public String[] B = new String[3];
    private ArrayList<String> C;
    /* access modifiers changed from: private */
    public View D;
    /* access modifiers changed from: private */
    public String E;
    /* access modifiers changed from: private */
    public int F = 30;
    /* access modifiers changed from: private */
    public EditText a;
    private TextView b;
    private TextView c;
    /* access modifiers changed from: private */
    public GeoPoint[] d;
    private CheckBox[] q = new CheckBox[3];
    /* access modifiers changed from: private */
    public C0024a r;
    /* access modifiers changed from: private */
    public b s;
    private final int t = 0;
    private final int u = 1;
    private final int v = 2;
    private final int w = 18;
    private final int x = 17;
    private final int y = 16;
    /* access modifiers changed from: private */
    public int z = 1;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_map_download_select);
        c();
        this.a = (EditText) c(R.id.offmap_name);
        this.a.setSelection(this.a.getText().length());
        this.q[0] = (CheckBox) c(R.id.high_check);
        this.q[1] = (CheckBox) c(R.id.medium_check);
        this.q[2] = (CheckBox) c(R.id.low_check);
        Parcelable[] parcelableArrayExtra = getIntent().getParcelableArrayExtra("intent_init_points");
        this.C = getIntent().getStringArrayListExtra("off_map_downloaded_names");
        this.d = new GeoPoint[parcelableArrayExtra.length];
        if (this.d != null) {
            for (int i = 0; i < this.d.length; i++) {
                this.d[i] = (GeoPoint) parcelableArrayExtra[i];
            }
            d();
            this.D = findViewById(R.id.delete_text_btn);
            this.D.setOnClickListener(this);
            if (this.a.getText().toString().trim().length() == 0) {
                this.D.setVisibility(8);
            } else {
                this.D.setVisibility(0);
            }
            this.a.addTextChangedListener(new TextWatcher() {
                private CharSequence b;
                private int c;
                private int d;

                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                    this.b = charSequence;
                }

                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                public void afterTextChanged(Editable editable) {
                    try {
                        if (GoogleMapDownloadDefinitionActivity.this.a.getText().toString().trim().length() == 0) {
                            GoogleMapDownloadDefinitionActivity.this.D.setVisibility(8);
                        } else {
                            GoogleMapDownloadDefinitionActivity.this.D.setVisibility(0);
                        }
                        this.c = GoogleMapDownloadDefinitionActivity.this.a.getSelectionStart();
                        this.d = GoogleMapDownloadDefinitionActivity.this.a.getSelectionEnd();
                        if (GoogleMapDownloadDefinitionActivity.this.a.getText().toString().length() > 0 && this.b.toString().getBytes(StringUtils.GB2312).length > GoogleMapDownloadDefinitionActivity.this.F) {
                            editable.delete(this.c - 1, this.d);
                            GoogleMapDownloadDefinitionActivity.this.a.setText(editable);
                            GoogleMapDownloadDefinitionActivity.this.a.setSelection(editable.length());
                        }
                    } catch (UnsupportedEncodingException e) {
                        ThrowableExtension.printStackTrace(e);
                    }
                }
            });
            findViewById(R.id.low_click).setOnClickListener(this);
            findViewById(R.id.medium_click).setOnClickListener(this);
            findViewById(R.id.high_click).setOnClickListener(this);
            for (CheckBox onClickListener : this.q) {
                onClickListener.setOnClickListener(this);
            }
            ((TextView) c(R.id.high_size)).setText(this.B[0]);
            ((TextView) c(R.id.medium_size)).setText(this.B[1]);
            ((TextView) c(R.id.low_size)).setText(this.B[2]);
        }
    }

    private void c() {
        c_();
        this.b = (TextView) c(R.id.title_bar_title);
        this.c = (TextView) c(R.id.title_bar_confirm);
        this.b.setText(getText(R.string.selcte_download_map));
        this.c.setVisibility(0);
        this.c.setOnClickListener(this);
    }

    private void d() {
        for (int i = 18; i >= 12; i--) {
            int[] iArr = this.A;
            iArr[0] = iArr[0] + a.a(this.d[0], this.d[1], i).length;
        }
        for (int i2 = 17; i2 >= 12; i2--) {
            int[] iArr2 = this.A;
            iArr2[1] = iArr2[1] + a.a(this.d[0], this.d[1], i2).length;
        }
        for (int i3 = 16; i3 >= 12; i3--) {
            int[] iArr3 = this.A;
            iArr3[2] = iArr3[2] + a.a(this.d[0], this.d[1], i3).length;
        }
        this.B[0] = MapDataProvider.a().b(this.A[0]);
        this.B[1] = MapDataProvider.a().b(this.A[1]);
        this.B[2] = MapDataProvider.a().b(this.A[2]);
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.delete_text_btn /*2131755259*/:
                this.a.setText("");
                return;
            case R.id.high_click /*2131755260*/:
            case R.id.high_check /*2131755261*/:
                this.z = 0;
                a(this.q[0]);
                return;
            case R.id.medium_click /*2131755263*/:
            case R.id.medium_check /*2131755264*/:
                this.z = 1;
                a(this.q[1]);
                return;
            case R.id.low_click /*2131755266*/:
            case R.id.low_check /*2131755267*/:
                this.z = 2;
                a(this.q[2]);
                return;
            case R.id.title_bar_confirm /*2131755836*/:
                if (!v.a((Context) this)) {
                    v.a((CharSequence) getString(R.string.net_error_please_check), false);
                    return;
                }
                this.E = this.a.getText().toString().trim();
                if (this.E.length() == 0) {
                    v.a(getResources().getText(R.string.please_complete_info), false);
                    return;
                }
                Iterator it = this.C.iterator();
                while (it.hasNext()) {
                    if (this.E.equals((String) it.next())) {
                        v.a((CharSequence) ad.a((int) R.string.toast_the_name_is_duplicate), false);
                        return;
                    }
                }
                if (!v.h(this.E)) {
                    v.a((CharSequence) ad.a((int) R.string.toast_contains_invalid_characters), false);
                    return;
                }
                this.r = new C0024a(this, "mitalki_db", null);
                this.s = new com.ifengyu.intercom.greendao.dao.a(this.r.getWritableDatabase()).newSession();
                if (v.b((Context) this)) {
                    Double valueOf = Double.valueOf(this.d[0].getLatitude());
                    Double valueOf2 = Double.valueOf(this.d[0].getLongitude());
                    Double valueOf3 = Double.valueOf(this.d[1].getLatitude());
                    Double valueOf4 = Double.valueOf(this.d[1].getLongitude());
                    int i = this.z == 0 ? 18 : this.z == 2 ? 16 : 17;
                    this.s.b().insert(new com.ifengyu.intercom.greendao.bean.a(null, valueOf, valueOf2, valueOf3, valueOf4, Integer.valueOf(i), Integer.valueOf(this.A[this.z]), Integer.valueOf(0), Integer.valueOf(0), this.B[this.z], this.E, Integer.valueOf(0), Boolean.valueOf(true)));
                    this.s.a();
                    this.r.close();
                    setResult(1);
                    finish();
                    return;
                }
                new d(this).b((CharSequence) ad.a((int) R.string.dialog_network_note)).a((int) R.string.common_cancel, (DialogInterface.OnClickListener) null).b((int) R.string.sure, (DialogInterface.OnClickListener) new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialogInterface, int i) {
                        Double valueOf = Double.valueOf(GoogleMapDownloadDefinitionActivity.this.d[0].getLatitude());
                        Double valueOf2 = Double.valueOf(GoogleMapDownloadDefinitionActivity.this.d[0].getLongitude());
                        Double valueOf3 = Double.valueOf(GoogleMapDownloadDefinitionActivity.this.d[1].getLatitude());
                        Double valueOf4 = Double.valueOf(GoogleMapDownloadDefinitionActivity.this.d[1].getLongitude());
                        int i2 = GoogleMapDownloadDefinitionActivity.this.z == 0 ? 18 : GoogleMapDownloadDefinitionActivity.this.z == 2 ? 16 : 17;
                        GoogleMapDownloadDefinitionActivity.this.s.b().insert(new com.ifengyu.intercom.greendao.bean.a(null, valueOf, valueOf2, valueOf3, valueOf4, Integer.valueOf(i2), Integer.valueOf(GoogleMapDownloadDefinitionActivity.this.A[GoogleMapDownloadDefinitionActivity.this.z]), Integer.valueOf(0), Integer.valueOf(0), GoogleMapDownloadDefinitionActivity.this.B[GoogleMapDownloadDefinitionActivity.this.z], GoogleMapDownloadDefinitionActivity.this.E, Integer.valueOf(0), Boolean.valueOf(true)));
                        GoogleMapDownloadDefinitionActivity.this.s.a();
                        GoogleMapDownloadDefinitionActivity.this.r.close();
                        GoogleMapDownloadDefinitionActivity.this.setResult(1);
                        GoogleMapDownloadDefinitionActivity.this.finish();
                    }
                }).b().c();
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void onDestroy() {
        super.onDestroy();
    }

    private void a(CheckBox checkBox) {
        CheckBox[] checkBoxArr;
        for (CheckBox checkBox2 : this.q) {
            checkBox2.setChecked(checkBox.equals(checkBox2));
        }
    }

    /* access modifiers changed from: protected */
    public void c_() {
        this.g = (ImageView) c(R.id.title_bar_left);
        this.g.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                GoogleMapDownloadDefinitionActivity.this.finish();
            }
        });
    }
}
