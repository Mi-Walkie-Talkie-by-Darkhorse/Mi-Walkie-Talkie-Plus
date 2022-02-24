package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.location.Location;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.widget.TextView;
import androidx.core.content.b;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.i.j0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.p;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.ui.widget.view.CirclrImageView;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.text.DecimalFormat;
import okhttp3.Call;

/* compiled from: MapMarkerClickDialog.java */
/* loaded from: classes2.dex */
public class s extends d {
    private static final String j = s.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    private BeanUserLocation f6999a;

    /* renamed from: b  reason: collision with root package name */
    private Activity f7000b;

    /* renamed from: c  reason: collision with root package name */
    private CirclrImageView f7001c;
    private TextView d;
    private TextView e;
    private TextView f;
    private TextView g;
    private TextView h;
    private TextView i;

    /* compiled from: MapMarkerClickDialog.java */
    /* loaded from: classes2.dex */
    class a extends com.ifengyu.intercom.g.d.a {

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ SpannableStringBuilder f7002b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ AbsoluteSizeSpan f7003c;

        a(SpannableStringBuilder spannableStringBuilder, AbsoluteSizeSpan absoluteSizeSpan) {
            this.f7002b = spannableStringBuilder;
            this.f7003c = absoluteSizeSpan;
        }

        @Override // com.ifengyu.intercom.g.d.b
        public void a(Call call, Exception exc, int i) {
            String str = s.j;
            z.a(str, "onError:" + exc.getMessage());
        }

        public void a(Double d, int i) {
            if (d != null) {
                z.a(s.j, d.toString());
                this.f7002b.clear();
                this.f7002b.append((CharSequence) String.valueOf(d.intValue()));
                this.f7002b.append((CharSequence) " m");
                SpannableStringBuilder spannableStringBuilder = this.f7002b;
                spannableStringBuilder.setSpan(this.f7003c, spannableStringBuilder.length() - 1, this.f7002b.length(), 33);
                s.this.g.setText(this.f7002b);
            }
        }
    }

    public s(Activity activity, BeanUserLocation beanUserLocation) {
        super(activity);
        this.f7000b = activity;
        this.f6999a = beanUserLocation;
    }

    @Override // com.ifengyu.intercom.ui.widget.dialog.d
    protected boolean a() {
        return true;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        int i;
        super.onCreate(bundle);
        setContentView(R.layout.map_marker_click_dialog);
        a(this.f7000b);
        this.f7001c = (CirclrImageView) findViewById(R.id.friend_icon);
        this.d = (TextView) findViewById(R.id.friend_device_name);
        this.e = (TextView) findViewById(R.id.friend_update_time);
        this.i = (TextView) findViewById(R.id.friend_update_location);
        this.h = (TextView) findViewById(R.id.friend_location);
        this.f = (TextView) findViewById(R.id.friend_freq);
        this.g = (TextView) findViewById(R.id.friend_altitude);
        this.h.setTypeface(p.f5324b);
        this.f.setTypeface(p.f5324b);
        this.g.setTypeface(p.f5324b);
        this.d.setText(this.f6999a.getName());
        int i2 = 0;
        this.e.setText(k0.a((int) R.string.update_location_time, j0.b(this.f6999a.getTime() * 1000)));
        double longitudeDouble = this.f6999a.getLongitudeDouble();
        double latitudeDouble = this.f6999a.getLatitudeDouble();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f7000b.getString(R.string.location_is));
        if (longitudeDouble >= 0.0d) {
            stringBuffer.append(longitudeDouble + "E");
        } else {
            stringBuffer.append(Math.abs(longitudeDouble) + "W");
        }
        stringBuffer.append(" , ");
        if (latitudeDouble >= 0.0d) {
            stringBuffer.append(latitudeDouble + "N");
        } else {
            stringBuffer.append(Math.abs(latitudeDouble) + "S");
        }
        this.i.setText(stringBuffer.toString());
        float[] fArr = new float[1];
        double[] r = d0.r();
        Location.distanceBetween(r[0], r[1], this.f6999a.getLatitudeDouble(), this.f6999a.getLongitudeDouble(), fArr);
        float f = fArr[0];
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        AbsoluteSizeSpan absoluteSizeSpan = new AbsoluteSizeSpan(c0.c(10.0f));
        DecimalFormat decimalFormat = new DecimalFormat("#.#");
        if (f < 0.0f) {
            i = 0;
        } else if (f < 1000.0f) {
            spannableStringBuilder.append((CharSequence) String.valueOf(Math.round(f)));
            spannableStringBuilder.append((CharSequence) " m");
            i2 = spannableStringBuilder.length() - 1;
            i = spannableStringBuilder.length();
        } else {
            spannableStringBuilder.append((CharSequence) String.valueOf(decimalFormat.format(f / 1000.0f)));
            spannableStringBuilder.append((CharSequence) " km");
            i2 = spannableStringBuilder.length() - 2;
            i = spannableStringBuilder.length();
        }
        spannableStringBuilder.setSpan(absoluteSizeSpan, i2, i, 33);
        this.h.setText(spannableStringBuilder);
        spannableStringBuilder.clear();
        spannableStringBuilder.append((CharSequence) c0.b(this.f6999a.getFreq()));
        spannableStringBuilder.append((CharSequence) " MHz");
        spannableStringBuilder.setSpan(absoluteSizeSpan, spannableStringBuilder.length() - 3, spannableStringBuilder.length(), 33);
        this.f.setText(spannableStringBuilder);
        spannableStringBuilder.clear();
        spannableStringBuilder.append((CharSequence) String.valueOf(this.f6999a.getAltitude()));
        spannableStringBuilder.append((CharSequence) " m");
        spannableStringBuilder.setSpan(absoluteSizeSpan, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        this.g.setText(spannableStringBuilder);
        if (this.f6999a.getAltitude() == 0) {
            com.ifengyu.intercom.g.a.a(this.f6999a.getLatitudeDouble(), this.f6999a.getLongitudeDouble(), new a(spannableStringBuilder, absoluteSizeSpan));
        }
        if (this.f6999a.getImgUrl() == null || this.f6999a.getImgUrl().length() <= 0 || this.f6999a.getImgUrl().equals("null")) {
            this.f7001c.setImageDrawable(b.c(this.f7000b, R.drawable.my_head_default));
        } else {
            ImageLoader.getInstance().displayImage(this.f6999a.getImgUrl(), this.f7001c);
        }
    }
}
