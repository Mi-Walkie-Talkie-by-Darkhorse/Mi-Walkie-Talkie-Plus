package com.ifengyu.intercom.ui.map;

import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.greendao.dao.a;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.ifengyu.intercom.ui.widget.dialog.f;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import org.osmdroid.util.GeoPoint;

/* loaded from: classes2.dex */
public class GoogleMapDownloadDefinitionActivity extends BaseActivity implements View.OnClickListener {
    private ArrayList<String> A;
    private View B;
    private String C;
    private EditText q;
    private TextView r;
    private TextView s;
    private GeoPoint[] t;
    private a.C0151a v;
    private com.ifengyu.intercom.greendao.dao.b w;
    private CheckBox[] u = new CheckBox[3];
    private int x = 1;
    private int[] y = new int[3];
    private String[] z = new String[3];
    private int D = 30;

    /* loaded from: classes2.dex */
    class a implements TextWatcher {

        /* renamed from: a  reason: collision with root package name */
        private CharSequence f6479a;

        /* renamed from: b  reason: collision with root package name */
        private int f6480b;

        /* renamed from: c  reason: collision with root package name */
        private int f6481c;

        a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            try {
                if (GoogleMapDownloadDefinitionActivity.this.q.getText().toString().trim().length() == 0) {
                    GoogleMapDownloadDefinitionActivity.this.B.setVisibility(8);
                } else {
                    GoogleMapDownloadDefinitionActivity.this.B.setVisibility(0);
                }
                this.f6480b = GoogleMapDownloadDefinitionActivity.this.q.getSelectionStart();
                this.f6481c = GoogleMapDownloadDefinitionActivity.this.q.getSelectionEnd();
                if (GoogleMapDownloadDefinitionActivity.this.q.getText().toString().length() > 0 && this.f6479a.toString().getBytes(StringUtils.GB2312).length > GoogleMapDownloadDefinitionActivity.this.D) {
                    editable.delete(this.f6480b - 1, this.f6481c);
                    GoogleMapDownloadDefinitionActivity.this.q.setText(editable);
                    GoogleMapDownloadDefinitionActivity.this.q.setSelection(editable.length());
                }
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            this.f6479a = charSequence;
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* loaded from: classes2.dex */
    class b implements DialogInterface.OnClickListener {
        b() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            int i2;
            Double valueOf = Double.valueOf(GoogleMapDownloadDefinitionActivity.this.t[0].getLatitude());
            Double valueOf2 = Double.valueOf(GoogleMapDownloadDefinitionActivity.this.t[0].getLongitude());
            Double valueOf3 = Double.valueOf(GoogleMapDownloadDefinitionActivity.this.t[1].getLatitude());
            Double valueOf4 = Double.valueOf(GoogleMapDownloadDefinitionActivity.this.t[1].getLongitude());
            if (GoogleMapDownloadDefinitionActivity.this.x == 0) {
                i2 = 18;
            } else {
                i2 = GoogleMapDownloadDefinitionActivity.this.x == 2 ? 16 : 17;
            }
            GoogleMapDownloadDefinitionActivity.this.w.c().insert(new com.ifengyu.intercom.greendao.bean.a(null, valueOf, valueOf2, valueOf3, valueOf4, Integer.valueOf(i2), Integer.valueOf(GoogleMapDownloadDefinitionActivity.this.y[GoogleMapDownloadDefinitionActivity.this.x]), 0, 0, GoogleMapDownloadDefinitionActivity.this.z[GoogleMapDownloadDefinitionActivity.this.x], GoogleMapDownloadDefinitionActivity.this.C, 0, true));
            GoogleMapDownloadDefinitionActivity.this.w.a();
            GoogleMapDownloadDefinitionActivity.this.v.close();
            GoogleMapDownloadDefinitionActivity.this.setResult(1);
            GoogleMapDownloadDefinitionActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            GoogleMapDownloadDefinitionActivity.this.finish();
        }
    }

    private void w() {
        r();
        this.r = (TextView) a(R.id.title_bar_title);
        this.s = (TextView) a(R.id.title_bar_confirm);
        this.r.setText(getText(R.string.selcte_download_map));
        this.s.setVisibility(0);
        this.s.setOnClickListener(this);
    }

    private void x() {
        for (int i = 18; i >= 12; i--) {
            int[] iArr = this.y;
            int i2 = iArr[0];
            GeoPoint[] geoPointArr = this.t;
            iArr[0] = i2 + com.ifengyu.intercom.ui.map.f.a.a.a(geoPointArr[0], geoPointArr[1], i).length;
        }
        for (int i3 = 17; i3 >= 12; i3--) {
            int[] iArr2 = this.y;
            int i4 = iArr2[1];
            GeoPoint[] geoPointArr2 = this.t;
            iArr2[1] = i4 + com.ifengyu.intercom.ui.map.f.a.a.a(geoPointArr2[0], geoPointArr2[1], i3).length;
        }
        for (int i5 = 16; i5 >= 12; i5--) {
            int[] iArr3 = this.y;
            int i6 = iArr3[2];
            GeoPoint[] geoPointArr3 = this.t;
            iArr3[2] = i6 + com.ifengyu.intercom.ui.map.f.a.a.a(geoPointArr3[0], geoPointArr3[1], i5).length;
        }
        this.z[0] = MapDataProvider.b().a(this.y[0]);
        this.z[1] = MapDataProvider.b().a(this.y[1]);
        this.z[2] = MapDataProvider.b().a(this.y[2]);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.delete_text_btn /* 2131296520 */:
                this.q.setText("");
                return;
            case R.id.high_check /* 2131296703 */:
            case R.id.high_click /* 2131296704 */:
                this.x = 0;
                a(this.u[0]);
                return;
            case R.id.low_check /* 2131296842 */:
            case R.id.low_click /* 2131296843 */:
                this.x = 2;
                a(this.u[2]);
                return;
            case R.id.medium_check /* 2131296925 */:
            case R.id.medium_click /* 2131296926 */:
                this.x = 1;
                a(this.u[1]);
                return;
            case R.id.title_bar_confirm /* 2131297304 */:
                if (!c0.b(this)) {
                    c0.a((CharSequence) getString(R.string.net_error_please_check), false);
                    return;
                }
                String trim = this.q.getText().toString().trim();
                this.C = trim;
                if (trim.length() == 0) {
                    c0.a(getResources().getText(R.string.please_complete_info), false);
                    return;
                }
                Iterator<String> it = this.A.iterator();
                while (it.hasNext()) {
                    if (this.C.equals(it.next())) {
                        c0.a((CharSequence) k0.c(R.string.toast_the_name_is_duplicate), false);
                        return;
                    }
                }
                if (!c0.e(this.C)) {
                    c0.a((CharSequence) k0.c(R.string.toast_contains_invalid_characters), false);
                    return;
                }
                a.C0151a aVar = new a.C0151a(this, "mitalki_db", null);
                this.v = aVar;
                this.w = new com.ifengyu.intercom.greendao.dao.a(aVar.getWritableDatabase()).newSession();
                if (c0.d(this)) {
                    Double valueOf = Double.valueOf(this.t[0].getLatitude());
                    Double valueOf2 = Double.valueOf(this.t[0].getLongitude());
                    Double valueOf3 = Double.valueOf(this.t[1].getLatitude());
                    Double valueOf4 = Double.valueOf(this.t[1].getLongitude());
                    int i = this.x;
                    this.w.c().insert(new com.ifengyu.intercom.greendao.bean.a(null, valueOf, valueOf2, valueOf3, valueOf4, Integer.valueOf(i == 0 ? 18 : i == 2 ? 16 : 17), Integer.valueOf(this.y[this.x]), 0, 0, this.z[this.x], this.C, 0, true));
                    this.w.a();
                    this.v.close();
                    setResult(1);
                    finish();
                    return;
                }
                f fVar = new f(this);
                fVar.a(k0.c(R.string.dialog_network_note));
                fVar.a(R.string.common_cancel, (DialogInterface.OnClickListener) null);
                fVar.c(R.string.sure, new b());
                fVar.a();
                fVar.d();
                return;
            default:
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_map_download_select);
        w();
        EditText editText = (EditText) a(R.id.offmap_name);
        this.q = editText;
        editText.setSelection(editText.getText().length());
        this.u[0] = (CheckBox) a(R.id.high_check);
        this.u[1] = (CheckBox) a(R.id.medium_check);
        this.u[2] = (CheckBox) a(R.id.low_check);
        Parcelable[] parcelableArrayExtra = getIntent().getParcelableArrayExtra("intent_init_points");
        this.A = getIntent().getStringArrayListExtra("off_map_downloaded_names");
        GeoPoint[] geoPointArr = new GeoPoint[parcelableArrayExtra.length];
        this.t = geoPointArr;
        if (geoPointArr != null) {
            int i = 0;
            while (true) {
                GeoPoint[] geoPointArr2 = this.t;
                if (i >= geoPointArr2.length) {
                    break;
                }
                geoPointArr2[i] = (GeoPoint) parcelableArrayExtra[i];
                i++;
            }
            x();
            View findViewById = findViewById(R.id.delete_text_btn);
            this.B = findViewById;
            findViewById.setOnClickListener(this);
            if (this.q.getText().toString().trim().length() == 0) {
                this.B.setVisibility(8);
            } else {
                this.B.setVisibility(0);
            }
            this.q.addTextChangedListener(new a());
            findViewById(R.id.low_click).setOnClickListener(this);
            findViewById(R.id.medium_click).setOnClickListener(this);
            findViewById(R.id.high_click).setOnClickListener(this);
            for (CheckBox checkBox : this.u) {
                checkBox.setOnClickListener(this);
            }
            ((TextView) a(R.id.high_size)).setText(this.z[0]);
            ((TextView) a(R.id.medium_size)).setText(this.z[1]);
            ((TextView) a(R.id.low_size)).setText(this.z[2]);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity
    protected void r() {
        ImageView imageView = (ImageView) a(R.id.title_bar_left);
        this.f6372c = imageView;
        imageView.setOnClickListener(new c());
    }

    private void a(CheckBox checkBox) {
        CheckBox[] checkBoxArr;
        for (CheckBox checkBox2 : this.u) {
            checkBox2.setChecked(checkBox.equals(checkBox2));
        }
    }
}
