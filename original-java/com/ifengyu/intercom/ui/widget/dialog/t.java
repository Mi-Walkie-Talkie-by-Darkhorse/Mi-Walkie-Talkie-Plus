package com.ifengyu.intercom.ui.widget.dialog;

import android.app.Activity;
import android.location.Location;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.widget.ImageView;
import android.widget.TextView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a.a;
import com.ifengyu.intercom.a.b.b;
import com.ifengyu.intercom.b.ac;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.l;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.ui.widget.view.CirclrImageView;
import com.mi.milinkforgame.sdk.base.debug.TraceFormat;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.text.DecimalFormat;
import okhttp3.Call;

/* compiled from: MapMarkerClickDialog */
public class t extends b {
    /* access modifiers changed from: private */
    public static final String a = t.class.getSimpleName();
    private BeanUserLocation b;
    private Activity c;
    private CirclrImageView d;
    private TextView e;
    private TextView f;
    private TextView g;
    /* access modifiers changed from: private */
    public TextView h;
    private TextView i;
    private TextView j;

    public t(Activity activity, BeanUserLocation beanUserLocation) {
        super(activity);
        this.c = activity;
        this.b = beanUserLocation;
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        int i2;
        int i3 = 0;
        super.onCreate(bundle);
        setContentView(R.layout.map_marker_click_dialog);
        a(this.c);
        this.d = (CirclrImageView) findViewById(R.id.friend_icon);
        this.e = (TextView) findViewById(R.id.friend_device_name);
        this.f = (TextView) findViewById(R.id.friend_update_time);
        this.j = (TextView) findViewById(R.id.friend_update_location);
        this.i = (TextView) findViewById(R.id.friend_location);
        this.g = (TextView) findViewById(R.id.friend_freq);
        this.h = (TextView) findViewById(R.id.friend_altitude);
        this.i.setTypeface(l.c);
        this.g.setTypeface(l.c);
        this.h.setTypeface(l.c);
        this.e.setText(this.b.getName());
        String g2 = ac.g(((long) this.b.getTime()) * 1000);
        this.f.setText(ad.a((int) R.string.update_location_time, g2));
        double longitudeDouble = this.b.getLongitudeDouble();
        double latitudeDouble = this.b.getLatitudeDouble();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.c.getString(R.string.location_is));
        if (longitudeDouble >= 0.0d) {
            stringBuffer.append(longitudeDouble + TraceFormat.STR_ERROR);
        } else {
            stringBuffer.append(Math.abs(longitudeDouble) + TraceFormat.STR_WARN);
        }
        stringBuffer.append(" , ");
        if (latitudeDouble >= 0.0d) {
            stringBuffer.append(latitudeDouble + "N");
        } else {
            stringBuffer.append(Math.abs(latitudeDouble) + "S");
        }
        this.j.setText(stringBuffer.toString());
        float[] fArr = new float[1];
        double[] Y = w.Y();
        Location.distanceBetween(Y[0], Y[1], this.b.getLatitudeDouble(), this.b.getLongitudeDouble(), fArr);
        float f2 = fArr[0];
        final SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        final AbsoluteSizeSpan absoluteSizeSpan = new AbsoluteSizeSpan(v.c(10.0f));
        DecimalFormat decimalFormat = new DecimalFormat("#.#");
        if (f2 < 0.0f) {
            i2 = 0;
        } else if (f2 < 1000.0f) {
            spannableStringBuilder.append(String.valueOf(Math.round(f2)));
            spannableStringBuilder.append(" m");
            i3 = spannableStringBuilder.length() - 1;
            i2 = spannableStringBuilder.length();
        } else {
            spannableStringBuilder.append(String.valueOf(decimalFormat.format((double) (f2 / 1000.0f))));
            spannableStringBuilder.append(" km");
            i3 = spannableStringBuilder.length() - 2;
            i2 = spannableStringBuilder.length();
        }
        spannableStringBuilder.setSpan(absoluteSizeSpan, i3, i2, 33);
        this.i.setText(spannableStringBuilder);
        spannableStringBuilder.clear();
        spannableStringBuilder.append(v.c(this.b.getFreq()));
        spannableStringBuilder.append(" MHz");
        spannableStringBuilder.setSpan(absoluteSizeSpan, spannableStringBuilder.length() - 3, spannableStringBuilder.length(), 33);
        this.g.setText(spannableStringBuilder);
        spannableStringBuilder.clear();
        spannableStringBuilder.append(String.valueOf(this.b.getAltitude()));
        spannableStringBuilder.append(" m");
        spannableStringBuilder.setSpan(absoluteSizeSpan, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        this.h.setText(spannableStringBuilder);
        if (this.b.getAltitude() == 0) {
            a.a(this.b.getLatitudeDouble(), this.b.getLongitudeDouble(), (b) new com.ifengyu.intercom.a.b.a() {
                public void a(Call call, Exception exc, int i) {
                    s.b(t.a, "onError:" + exc.getMessage());
                }

                public void a(Double d2, int i) {
                    if (d2 != null) {
                        s.b(t.a, d2.toString());
                        spannableStringBuilder.clear();
                        spannableStringBuilder.append(String.valueOf(d2.intValue()));
                        spannableStringBuilder.append(" m");
                        spannableStringBuilder.setSpan(absoluteSizeSpan, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
                        t.this.h.setText(spannableStringBuilder);
                    }
                }
            });
        }
        if (this.b.getImgUrl() == null || this.b.getImgUrl().length() <= 0 || this.b.getImgUrl().equals("null")) {
            this.d.setImageDrawable(ContextCompat.getDrawable(this.c, R.drawable.my_head_default));
        } else {
            ImageLoader.getInstance().displayImage(this.b.getImgUrl(), (ImageView) this.d);
        }
    }

    /* access modifiers changed from: protected */
    public boolean b() {
        return true;
    }
}
