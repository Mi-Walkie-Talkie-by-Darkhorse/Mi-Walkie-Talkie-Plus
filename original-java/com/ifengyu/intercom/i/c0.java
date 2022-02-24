package com.ifengyu.intercom.i;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;
import com.amap.api.maps.AMap;
import com.google.common.primitives.UnsignedBytes;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.bean.ChannelBean;
import com.ifengyu.intercom.d;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.setting.UserChannel;
import com.ifengyu.intercom.ui.widget.dialog.SealPickerDialog;
import com.ifengyu.intercom.ui.widget.dialog.SharkPickerDialog;
import com.ifengyu.library.base.BaseApp;
import com.xiaomi.mipush.sdk.Constants;
import java.io.UnsupportedEncodingException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;
import org.bouncycastle.crypto.tls.CipherSuite;

/* compiled from: MethodsUtils.java */
/* loaded from: classes2.dex */
public class c0 {

    /* compiled from: MethodsUtils.java */
    /* loaded from: classes2.dex */
    static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ CharSequence f5305a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ boolean f5306b;

        a(CharSequence charSequence, boolean z) {
            this.f5305a = charSequence;
            this.f5306b = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (d.d == null && MiTalkiApp.b() != null) {
                d.d = Toast.makeText(MiTalkiApp.b().getApplicationContext(), "", 1);
            }
            Toast toast = d.d;
            if (toast != null) {
                CharSequence charSequence = this.f5305a;
                if (charSequence == null) {
                    toast.cancel();
                    return;
                }
                toast.setText(charSequence);
                d.d.setDuration(this.f5306b ? 1 : 0);
                d.d.show();
            }
        }
    }

    public static long a(int i, int i2) {
        return (i * 100) + i2;
    }

    public static boolean a(String... strArr) {
        for (String str : strArr) {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
        }
        return false;
    }

    public static int b(float f) {
        return (int) ((f / MiTalkiApp.b().getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static int b(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        return (i * 256) + i2;
    }

    public static int c(float f) {
        return (int) ((f * MiTalkiApp.b().getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static int c(int i) {
        int i2 = i + 100;
        if (i2 < 0) {
            return 0;
        }
        if (i2 > 100) {
            return 100;
        }
        return i2;
    }

    public static int d(int i) {
        return ((i / 2) * MiTalkiApp.b().getResources().getDisplayMetrics().densityDpi) / CipherSuite.TLS_DH_RSA_WITH_AES_128_GCM_SHA256;
    }

    public static boolean e(String str) {
        for (int i = 0; i < str.length(); i++) {
            String valueOf = String.valueOf(str.charAt(i));
            if (!(valueOf.matches("[\\u4e00-\\u9fa5]+") || g(valueOf))) {
                return false;
            }
        }
        return true;
    }

    public static int[] e(int i) {
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

    public static boolean f(String str) {
        for (int i = 0; i < str.length(); i++) {
            String valueOf = String.valueOf(str.charAt(i));
            if (!(d(valueOf) || h(valueOf))) {
                return false;
            }
        }
        return true;
    }

    public static String g(int i) {
        if (i >= 256) {
            int i2 = i / 256;
            int i3 = i % 256;
            if (i2 == 1) {
                return SealPickerDialog.d[i3];
            }
            if (i2 == 2) {
                return SealPickerDialog.e[i3];
            }
            if (i2 == 3) {
                return SealPickerDialog.f[i3];
            }
        }
        return SealPickerDialog.d[0];
    }

    public static String h(int i) {
        if (i >= 256) {
            try {
                int i2 = i / 256;
                int i3 = i % 256;
                if (i2 == 1) {
                    return SharkPickerDialog.d[i3];
                }
                if (i2 == 2) {
                    return SharkPickerDialog.e[i3];
                }
                if (i2 == 3) {
                    return SharkPickerDialog.f[i3];
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return SharkPickerDialog.d[0];
    }

    public static boolean b(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        if (i.a()) {
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

    public static int c(String str) {
        try {
            return (int) (Double.parseDouble(str.replace(Constants.ACCEPT_TIME_SEPARATOR_SP, ".")) * 1000.0d * 1000.0d);
        } catch (NumberFormatException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public static boolean d(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.getType() == 1;
    }

    public static boolean a(EditText... editTextArr) {
        for (EditText editText : editTextArr) {
            if (TextUtils.isEmpty(editText.getText().toString())) {
                return true;
            }
        }
        return false;
    }

    public static boolean f(int i) {
        return Build.VERSION.SDK_INT >= i;
    }

    public static void a(CharSequence charSequence, boolean z) {
        BaseApp.a().post(new a(charSequence, z));
    }

    public static boolean c(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    public static boolean d(String str) {
        try {
            byte[] bytes = str.getBytes(StringUtils.GB2312);
            if ((bytes[0] & UnsignedBytes.MAX_VALUE) < 176 || (bytes[0] & UnsignedBytes.MAX_VALUE) > 247 || (bytes[1] & UnsignedBytes.MAX_VALUE) < 161) {
                return false;
            }
            return (bytes[1] & UnsignedBytes.MAX_VALUE) <= 254;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static float a(float f) {
        return (f * MiTalkiApp.b().getResources().getDisplayMetrics().density) + 0.5f;
    }

    public static boolean g(String str) {
        return str.matches("[a-zA-Z0-9]+");
    }

    public static int[] a(int i) {
        int[] iArr = new int[2];
        if (i >= 256) {
            iArr[0] = i / 256;
            iArr[1] = i % 256;
        }
        return iArr;
    }

    public static boolean h(String str) {
        return str.matches("[a-z A-Z0-9_\\-]+");
    }

    public static String a(UserChannel userChannel) {
        int e = userChannel.e() + 1;
        switch (userChannel.h()) {
            case 0:
                return k0.a((int) R.string.channel_long_distance_d, Integer.valueOf(e));
            case 1:
                return k0.a((int) R.string.channel_public_d, Integer.valueOf(e));
            case 2:
                return !TextUtils.isEmpty(userChannel.d()) ? userChannel.d() : k0.a((int) R.string.channel_custom_d, Integer.valueOf(e));
            case 3:
            default:
                return null;
            case 4:
                return k0.c(R.string.channel_sos);
            case 5:
                return userChannel.d();
            case 6:
                return k0.c(R.string.channel_team);
            case 7:
                return k0.c(R.string.channel_scan);
            case 8:
                return userChannel.d();
        }
    }

    public static void b(View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) MiTalkiApp.b().getApplicationContext().getSystemService("input_method");
        if (inputMethodManager.isActive()) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    public static String b(int i) {
        return new DecimalFormat("0.0000").format((i * 1.0d) / 1000000.0d);
    }

    public static int b(List<SealSharkChannel> list) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add(Integer.valueOf(list.get(i2).f()));
        }
        while (true) {
            if (i >= 20) {
                i = -1;
                break;
            }
            if (!arrayList.contains(Integer.valueOf(i))) {
                break;
            }
            i++;
        }
        z.a("MethodsUtils", "get insert channel num: " + i);
        return i;
    }

    public static String a(ChannelBean channelBean) {
        int no2 = channelBean.getNo() + 1;
        int type = channelBean.getType();
        if (type == 0) {
            return k0.a((int) R.string.channel_long_distance_d, Integer.valueOf(no2));
        }
        if (type == 1) {
            return k0.a((int) R.string.channel_public_d, Integer.valueOf(no2));
        }
        if (type == 2) {
            return !TextUtils.isEmpty(channelBean.getName()) ? channelBean.getName() : k0.a((int) R.string.channel_custom_d, Integer.valueOf(no2));
        }
        if (type == 4) {
            return k0.c(R.string.channel_sos);
        }
        if (type == 5) {
            return channelBean.getName();
        }
        if (type == 6) {
            return k0.c(R.string.channel_team);
        }
        if (type != 7) {
            return null;
        }
        return k0.c(R.string.channel_scan);
    }

    public static boolean b(String str) {
        try {
            return Pattern.compile("^1[123456789]\\d{9}$").matcher(str).matches();
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean b(Context context, String str) {
        for (ActivityManager.RunningServiceInfo runningServiceInfo : ((ActivityManager) context.getSystemService("activity")).getRunningServices(100)) {
            if (runningServiceInfo.service.getClassName().equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static boolean b() {
        return Locale.getDefault().getLanguage().toLowerCase().endsWith("zh");
    }

    public static int a(List<UserChannel> list) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add(Integer.valueOf(list.get(i2).e()));
        }
        while (true) {
            if (i >= 20) {
                i = -1;
                break;
            }
            if (!arrayList.contains(Integer.valueOf(i))) {
                break;
            }
            i++;
        }
        z.a("MethodsUtils", "get insert channel num: " + i);
        return i;
    }

    public static boolean a(String str) {
        try {
            return Pattern.compile("^([a-z0-9A-Z]+[-|_|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$").matcher(str).matches();
        } catch (Exception unused) {
            return false;
        }
    }

    public static Drawable a(View view) {
        view.measure(View.MeasureSpec.makeMeasureSpec(0, 0), View.MeasureSpec.makeMeasureSpec(0, 0));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        view.buildDrawingCache();
        Bitmap drawingCache = view.getDrawingCache();
        BitmapDrawable bitmapDrawable = drawingCache != null ? new BitmapDrawable(view.getResources(), Bitmap.createBitmap(drawingCache)) : null;
        view.destroyDrawingCache();
        return bitmapDrawable;
    }

    public static Bitmap a(Bitmap bitmap) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.3f);
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return createBitmap;
    }

    public static boolean a(Context context, String str) {
        try {
            context.getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    public static boolean a() {
        return Locale.getDefault().getLanguage().toLowerCase().endsWith(AMap.ENGLISH);
    }

    public static String a(Context context) {
        return context.getExternalFilesDir(null).getAbsolutePath() + "/map";
    }
}
