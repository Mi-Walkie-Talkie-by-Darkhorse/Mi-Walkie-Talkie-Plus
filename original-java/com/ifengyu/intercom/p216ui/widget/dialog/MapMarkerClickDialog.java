package com.ifengyu.intercom.p216ui.widget.dialog;

import android.app.Activity;
import android.graphics.Typeface;
import android.location.Location;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.BeanUserLocation;
import com.ifengyu.intercom.p187j.AppConstants;
import com.ifengyu.intercom.p214p.C4148i0;
import com.ifengyu.intercom.p214p.MethodsUtils;
import com.ifengyu.intercom.p214p.MiTalkClientUtil;
import com.ifengyu.intercom.p216ui.widget.view.CirclrImageView;
import com.ifengyu.library.utils.UIUtils;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.text.DecimalFormat;

/* renamed from: com.ifengyu.intercom.ui.widget.dialog.q */
/* loaded from: classes2.dex */
public class MapMarkerClickDialog extends BaseDialog {

    /* renamed from: a */
    private BeanUserLocation f16010a;

    /* renamed from: b */
    private Activity f16011b;

    /* renamed from: c */
    private CirclrImageView f16012c;

    /* renamed from: d */
    private TextView f16013d;

    /* renamed from: e */
    private TextView f16014e;

    /* renamed from: f */
    private TextView f16015f;

    /* renamed from: g */
    private TextView f16016g;

    /* renamed from: h */
    private TextView f16017h;

    /* renamed from: i */
    private TextView f16018i;

    public MapMarkerClickDialog(Activity activity, BeanUserLocation beanUserLocation) {
        super(activity);
        this.f16011b = activity;
        this.f16010a = beanUserLocation;
    }

    @Override // com.ifengyu.intercom.p216ui.widget.dialog.BaseDialog
    /* renamed from: c */
    protected boolean mo8931c() {
        return true;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        int i;
        super.onCreate(bundle);
        setContentView(R.layout.map_marker_click_dialog);
        m9037g(this.f16011b);
        this.f16012c = (CirclrImageView) findViewById(R.id.friend_icon);
        this.f16013d = (TextView) findViewById(R.id.friend_device_name);
        this.f16014e = (TextView) findViewById(R.id.friend_update_time);
        this.f16018i = (TextView) findViewById(R.id.friend_update_location);
        this.f16017h = (TextView) findViewById(R.id.friend_location);
        this.f16015f = (TextView) findViewById(R.id.friend_freq);
        this.f16016g = (TextView) findViewById(R.id.friend_altitude);
        TextView textView = this.f16017h;
        Typeface typeface = AppConstants.f13909c;
        textView.setTypeface(typeface);
        this.f16015f.setTypeface(typeface);
        this.f16016g.setTypeface(typeface);
        this.f16013d.setText(this.f16010a.getName());
        int i2 = 0;
        this.f16014e.setText(UIUtils.m8602p(R.string.update_location_time, C4148i0.m11165c(this.f16010a.getTime() * 1000)));
        double longitudeDouble = this.f16010a.getLongitudeDouble();
        double latitudeDouble = this.f16010a.getLatitudeDouble();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f16011b.getString(R.string.location_is));
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
        this.f16018i.setText(stringBuffer.toString());
        float[] fArr = new float[1];
        double[] m11189r = MiTalkClientUtil.m11189r();
        Location.distanceBetween(m11189r[0], m11189r[1], this.f16010a.getLatitudeDouble(), this.f16010a.getLongitudeDouble(), fArr);
        float f = fArr[0];
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        AbsoluteSizeSpan absoluteSizeSpan = new AbsoluteSizeSpan(MethodsUtils.m11301I(10.0f));
        DecimalFormat decimalFormat = new DecimalFormat("#.#");
        if (f < BitmapDescriptorFactory.HUE_RED) {
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
        this.f16017h.setText(spannableStringBuilder);
        spannableStringBuilder.clear();
        spannableStringBuilder.append((CharSequence) MethodsUtils.m11290j(this.f16010a.getFreq()));
        spannableStringBuilder.append((CharSequence) " MHz");
        spannableStringBuilder.setSpan(absoluteSizeSpan, spannableStringBuilder.length() - 3, spannableStringBuilder.length(), 33);
        this.f16015f.setText(spannableStringBuilder);
        spannableStringBuilder.clear();
        spannableStringBuilder.append((CharSequence) String.valueOf(this.f16010a.getAltitude()));
        spannableStringBuilder.append((CharSequence) " m");
        spannableStringBuilder.setSpan(absoluteSizeSpan, spannableStringBuilder.length() - 1, spannableStringBuilder.length(), 33);
        this.f16016g.setText(spannableStringBuilder);
        this.f16010a.getAltitude();
        if (this.f16010a.getImgUrl() != null && this.f16010a.getImgUrl().length() > 0 && !this.f16010a.getImgUrl().equals("null")) {
            ImageLoader.getInstance().displayImage(this.f16010a.getImgUrl(), this.f16012c);
        } else {
            this.f16012c.setImageDrawable(ContextCompat.m23927d(this.f16011b, R.drawable.my_head_default));
        }
    }
}
