package com.ifengyu.intercom.p214p;

import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import com.amap.api.maps.AMap;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.common.primitives.UnsignedBytes;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.ChannelBean;
import com.ifengyu.intercom.device.oldDevice.model.DolphinChannelModel;
import com.ifengyu.intercom.device.oldDevice.model.SealSharkChannelModel;
import com.ifengyu.intercom.p216ui.widget.dialog.SealPickerDialog;
import com.ifengyu.intercom.p216ui.widget.dialog.SharkPickerDialog;
import com.ifengyu.library.utils.UIUtils;
import com.xiaomi.mipush.sdk.Constants;
import java.io.UnsupportedEncodingException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import org.bouncycastle.crypto.tls.CipherSuite;

/* renamed from: com.ifengyu.intercom.p.b0 */
/* loaded from: classes2.dex */
public class MethodsUtils {

    /* compiled from: MethodsUtils.java */
    /* renamed from: com.ifengyu.intercom.p.b0$a */
    /* loaded from: classes2.dex */
    class RunnableC4140a implements Runnable {

        /* renamed from: a */
        final /* synthetic */ InputMethodManager f14435a;

        /* renamed from: b */
        final /* synthetic */ View f14436b;

        RunnableC4140a(InputMethodManager inputMethodManager, View view) {
            this.f14435a = inputMethodManager;
            this.f14436b = view;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f14435a.showSoftInput(this.f14436b, 2);
        }
    }

    /* renamed from: A */
    public static boolean m11309A(String str) {
        return str.matches("[a-z A-Z0-9_\\-]+");
    }

    /* renamed from: B */
    public static boolean m11308B(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    /* renamed from: C */
    public static boolean m11307C(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
    }

    /* renamed from: D */
    public static int m11306D(float f) {
        return (int) ((f / MiTalkiApp.m14296h().getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    /* renamed from: E */
    public static String m11305E(int i) {
        if (i >= 256) {
            int i2 = i / 256;
            int i3 = i % 256;
            if (i2 == 1) {
                return SealPickerDialog.f15850d[i3];
            }
            if (i2 == 2) {
                return SealPickerDialog.f15851e[i3];
            }
            if (i2 == 3) {
                return SealPickerDialog.f15852f[i3];
            }
        }
        return SealPickerDialog.f15850d[0];
    }

    /* renamed from: F */
    public static String m11304F(int i) {
        if (i >= 256) {
            try {
                int i2 = i / 256;
                int i3 = i % 256;
                if (i2 == 1) {
                    return SharkPickerDialog.f15858d[i3];
                }
                if (i2 == 2) {
                    return SharkPickerDialog.f15859e[i3];
                }
                if (i2 == 3) {
                    return SharkPickerDialog.f15860f[i3];
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return SharkPickerDialog.f15858d[0];
    }

    /* renamed from: G */
    public static void m11303G(View view) {
        if (view == null || view.getContext() == null) {
            return;
        }
        view.requestFocus();
        view.postDelayed(new RunnableC4140a((InputMethodManager) view.getContext().getSystemService("input_method"), view), 200L);
    }

    /* renamed from: H */
    public static void m11302H(CharSequence charSequence, boolean z) {
        if (z) {
            UIUtils.m8618B(charSequence);
        } else {
            UIUtils.m8592z(charSequence);
        }
    }

    /* renamed from: I */
    public static int m11301I(float f) {
        return (int) ((f * MiTalkiApp.m14296h().getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    /* renamed from: J */
    public static int m11300J(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        return (i * 256) + i2;
    }

    /* renamed from: a */
    public static boolean m11299a(String str) {
        try {
            return Pattern.compile("^([a-z0-9A-Z]+[-|_|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$").matcher(str).matches();
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: b */
    public static boolean m11298b(char c) {
        return (c >= 'A' && c <= 'Z') || (c >= 'a' && c <= 'z');
    }

    /* renamed from: c */
    public static boolean m11297c() {
        return Locale.getDefault().getLanguage().toLowerCase().endsWith(AMap.ENGLISH);
    }

    /* renamed from: d */
    public static boolean m11296d() {
        return Locale.getDefault().getLanguage().toLowerCase().endsWith("zh");
    }

    /* renamed from: e */
    public static boolean m11295e(String str) {
        try {
            return Pattern.compile("^1[123456789]\\d{9}$").matcher(str).matches();
        } catch (Exception unused) {
            return false;
        }
    }

    /* renamed from: f */
    public static Bitmap m11294f(Bitmap bitmap) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.3f);
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(bitmap, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, paint);
        return createBitmap;
    }

    /* renamed from: g */
    public static int[] m11293g(int i) {
        int[] iArr = new int[2];
        if (i >= 256) {
            iArr[0] = i / 256;
            iArr[1] = i % 256;
        }
        return iArr;
    }

    /* renamed from: h */
    public static float m11292h(float f) {
        return (f * MiTalkiApp.m14296h().getResources().getDisplayMetrics().density) + 0.5f;
    }

    /* renamed from: i */
    public static int m11291i(String str) {
        try {
            return (int) (Double.parseDouble(str.replace(Constants.ACCEPT_TIME_SEPARATOR_SP, ".")) * 1000.0d * 1000.0d);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return 0;
        }
    }

    /* renamed from: j */
    public static String m11290j(int i) {
        return new DecimalFormat("0.0000").format((i * 1.0d) / 1000000.0d);
    }

    /* renamed from: k */
    public static String m11289k(Context context) {
        return context.getExternalFilesDir(null).getAbsolutePath() + "/AMap";
    }

    /* renamed from: l */
    public static int m11288l(int i) {
        int i2 = i + 100;
        if (i2 < 0) {
            return 0;
        }
        if (i2 > 100) {
            return 100;
        }
        return i2;
    }

    /* renamed from: m */
    public static String m11287m(ChannelBean channelBean) {
        int no2 = channelBean.getNo() + 1;
        int type = channelBean.getType();
        if (type != 0) {
            if (type != 1) {
                if (type == 2) {
                    return !TextUtils.isEmpty(channelBean.getName()) ? channelBean.getName() : UIUtils.m8602p(R.string.channel_custom_d, Integer.valueOf(no2));
                } else if (type != 4) {
                    if (type != 5) {
                        if (type != 6) {
                            if (type != 7) {
                                return null;
                            }
                            return UIUtils.m8603o(R.string.channel_scan);
                        }
                        return UIUtils.m8603o(R.string.channel_team);
                    }
                    return channelBean.getName();
                } else {
                    return UIUtils.m8603o(R.string.channel_sos);
                }
            }
            return UIUtils.m8602p(R.string.channel_public_d, Integer.valueOf(no2));
        }
        return UIUtils.m8602p(R.string.channel_long_distance_d, Integer.valueOf(no2));
    }

    /* renamed from: n */
    public static String m11286n(DolphinChannelModel dolphinChannelModel) {
        int no2 = dolphinChannelModel.getNo() + 1;
        switch (dolphinChannelModel.getType()) {
            case 0:
                return UIUtils.m8602p(R.string.channel_long_distance_d, Integer.valueOf(no2));
            case 1:
                return UIUtils.m8602p(R.string.channel_public_d, Integer.valueOf(no2));
            case 2:
                return !TextUtils.isEmpty(dolphinChannelModel.getName()) ? dolphinChannelModel.getName() : UIUtils.m8602p(R.string.channel_custom_d, Integer.valueOf(no2));
            case 3:
            default:
                return null;
            case 4:
                return UIUtils.m8603o(R.string.channel_sos);
            case 5:
                return dolphinChannelModel.getName();
            case 6:
                return UIUtils.m8603o(R.string.channel_team);
            case 7:
                return UIUtils.m8603o(R.string.channel_scan);
            case 8:
                return dolphinChannelModel.getName();
        }
    }

    /* renamed from: o */
    public static int m11285o(int i) {
        return ((i / 2) * MiTalkiApp.m14296h().getResources().getDisplayMetrics().densityDpi) / CipherSuite.TLS_DH_RSA_WITH_AES_128_GCM_SHA256;
    }

    /* renamed from: p */
    public static int m11284p() {
        try {
            return MiTalkiApp.m14296h().getPackageManager().getPackageInfo(MiTalkiApp.m14296h().getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return Integer.MAX_VALUE;
        }
    }

    /* renamed from: q */
    public static int m11283q(List<DolphinChannelModel> list) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add(Integer.valueOf(list.get(i2).getNo()));
        }
        while (true) {
            if (i >= 20) {
                i = -1;
                break;
            } else if (!arrayList.contains(Integer.valueOf(i))) {
                break;
            } else {
                i++;
            }
        }
        C4161y.m11054a("MethodsUtils", "get insert channel num: " + i);
        return i;
    }

    /* renamed from: r */
    public static int m11282r(List<SealSharkChannelModel> list) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add(Integer.valueOf(list.get(i2).getNo()));
        }
        while (true) {
            if (i >= 20) {
                i = -1;
                break;
            } else if (!arrayList.contains(Integer.valueOf(i))) {
                break;
            } else {
                i++;
            }
        }
        C4161y.m11054a("MethodsUtils", "get insert channel num: " + i);
        return i;
    }

    /* renamed from: s */
    public static void m11281s(View view) {
        if (view == null || view.getContext() == null) {
            return;
        }
        ((InputMethodManager) view.getContext().getSystemService("input_method")).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    /* renamed from: t */
    public static int[] m11280t(int i) {
        int[] iArr = new int[3];
        if (i == 0) {
            iArr[0] = 0;
        } else if (i > 0 && i <= 39) {
            iArr[0] = 3;
            iArr[1] = i - 1;
        } else if (i > 39 && i <= 123) {
            iArr[0] = 2;
            iArr[1] = i - 41;
            iArr[2] = 0;
        } else if (i > 123) {
            iArr[0] = 2;
            iArr[1] = i - 125;
            iArr[2] = 1;
        }
        return iArr;
    }

    /* renamed from: u */
    public static boolean m11279u(String str) {
        try {
            byte[] bytes = str.getBytes("GB2312");
            if ((bytes[0] & UnsignedBytes.MAX_VALUE) < 176 || (bytes[0] & UnsignedBytes.MAX_VALUE) > 247 || (bytes[1] & UnsignedBytes.MAX_VALUE) < 161) {
                return false;
            }
            return (bytes[1] & UnsignedBytes.MAX_VALUE) <= 254;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return false;
        }
    }

    /* renamed from: v */
    public static boolean m11278v(EditText... editTextArr) {
        for (EditText editText : editTextArr) {
            if (TextUtils.isEmpty(editText.getText().toString())) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: w */
    public static boolean m11277w(String... strArr) {
        for (String str : strArr) {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: x */
    public static boolean m11276x(int i) {
        return Build.VERSION.SDK_INT >= i;
    }

    /* renamed from: y */
    public static boolean m11275y(String str) {
        for (int i = 0; i < str.length(); i++) {
            String valueOf = String.valueOf(str.charAt(i));
            if (!m11279u(valueOf) && !m11309A(valueOf)) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: z */
    public static boolean m11274z(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        if (APIUtils.m11095a()) {
            for (Network network : connectivityManager.getAllNetworks()) {
                if (connectivityManager.getNetworkInfo(network).getState() == NetworkInfo.State.CONNECTED) {
                    return true;
                }
            }
        } else {
            NetworkInfo[] allNetworkInfo = connectivityManager.getAllNetworkInfo();
            if (allNetworkInfo != null) {
                for (NetworkInfo networkInfo : allNetworkInfo) {
                    if (networkInfo.getState() == NetworkInfo.State.CONNECTED) {
                        return true;
                    }
                }
            }
        }
        return false;
    }
}
