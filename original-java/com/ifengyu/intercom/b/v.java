package com.ifengyu.intercom.b;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningServiceInfo;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.os.Build.VERSION;
import android.os.Environment;
import android.text.TextUtils;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.google.zxing.common.StringUtils;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.a;
import com.ifengyu.intercom.bean.ChannelBean;
import com.ifengyu.intercom.ui.setting.SealSharkChannel;
import com.ifengyu.intercom.ui.setting.UserChannel;
import com.ifengyu.intercom.ui.widget.dialog.SealPickerDialog;
import com.ifengyu.intercom.ui.widget.dialog.SharkPickerDialog;
import com.xiaomi.mipush.sdk.Constants;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.regex.Pattern;

/* compiled from: MethodsUtils */
public class v {
    public static boolean a(String... strArr) {
        for (String isEmpty : strArr) {
            if (TextUtils.isEmpty(isEmpty)) {
                return true;
            }
        }
        return false;
    }

    public static boolean a(EditText... editTextArr) {
        for (EditText text : editTextArr) {
            if (TextUtils.isEmpty(text.getText().toString())) {
                return true;
            }
        }
        return false;
    }

    public static void a(final CharSequence charSequence, final boolean z) {
        MiTalkiApp.n().post(new Runnable() {
            public void run() {
                int i = 1;
                if (a.e == null && MiTalkiApp.a() != null) {
                    a.e = Toast.makeText(MiTalkiApp.a().getApplicationContext(), "", 1);
                }
                if (a.e == null) {
                    return;
                }
                if (charSequence == null) {
                    a.e.cancel();
                    return;
                }
                a.e.setText(charSequence);
                Toast toast = a.e;
                if (!z) {
                    i = 0;
                }
                toast.setDuration(i);
                a.e.show();
            }
        });
    }

    public static float a(float f) {
        return (MiTalkiApp.a().getResources().getDisplayMetrics().density * f) + 0.5f;
    }

    public static int b(float f) {
        return (int) ((f / MiTalkiApp.a().getResources().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    public static int c(float f) {
        return (int) ((MiTalkiApp.a().getResources().getDisplayMetrics().scaledDensity * f) + 0.5f);
    }

    public static int a(int i) {
        int i2 = i + 100;
        if (i2 < 0) {
            return 0;
        }
        if (i2 <= 100) {
            return i2;
        }
        return 100;
    }

    public static boolean a(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        if (connectivityManager == null) {
            return false;
        }
        if (c.a()) {
            for (Network networkInfo : connectivityManager.getAllNetworks()) {
                if (connectivityManager.getNetworkInfo(networkInfo).getState() == State.CONNECTED) {
                    return true;
                }
            }
        } else {
            NetworkInfo[] allNetworkInfo = connectivityManager.getAllNetworkInfo();
            if (allNetworkInfo != null) {
                for (NetworkInfo state : allNetworkInfo) {
                    if (state.getState() == State.CONNECTED) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static int b(int i) {
        return ((i / 2) * MiTalkiApp.a().getResources().getDisplayMetrics().densityDpi) / 160;
    }

    public static void a(View view) {
        InputMethodManager inputMethodManager = (InputMethodManager) MiTalkiApp.a().getApplicationContext().getSystemService("input_method");
        if (inputMethodManager.isActive()) {
            inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    public static int a(String str) {
        boolean z = false;
        try {
            return (int) (Double.parseDouble(str.replace(Constants.ACCEPT_TIME_SEPARATOR_SP, ".")) * 1000.0d * 1000.0d);
        } catch (NumberFormatException e) {
            ThrowableExtension.printStackTrace(e);
            return z;
        }
    }

    public static String c(int i) {
        return new DecimalFormat("0.0000").format((((double) i) * 1.0d) / 1000000.0d);
    }

    public static String d(int i) {
        if (i >= 256) {
            int i2 = i % 256;
            switch (i / 256) {
                case 1:
                    return SealPickerDialog.a[i2];
                case 2:
                    return SealPickerDialog.b[i2];
                case 3:
                    return SealPickerDialog.c[i2];
            }
        }
        return SealPickerDialog.a[0];
    }

    public static String e(int i) {
        if (i >= 256) {
            try {
                int i2 = i % 256;
                switch (i / 256) {
                    case 1:
                        return SharkPickerDialog.a[i2];
                    case 2:
                        return SharkPickerDialog.b[i2];
                    case 3:
                        return SharkPickerDialog.c[i2];
                }
            } catch (Exception e) {
                ThrowableExtension.printStackTrace(e);
            }
        }
        return SharkPickerDialog.a[0];
    }

    public static int[] f(int i) {
        int[] iArr = new int[2];
        if (i >= 256) {
            iArr[0] = i / 256;
            iArr[1] = i % 256;
        }
        return iArr;
    }

    public static int a(int i, int i2) {
        if (i == 0 || i2 == 0) {
            return 0;
        }
        return (i * 256) + i2;
    }

    public static String a(UserChannel userChannel) {
        int b = userChannel.b() + 1;
        switch (userChannel.c()) {
            case 0:
                return ad.a((int) R.string.channel_long_distance_d, Integer.valueOf(b));
            case 1:
                return ad.a((int) R.string.channel_public_d, Integer.valueOf(b));
            case 2:
                if (!TextUtils.isEmpty(userChannel.d())) {
                    return userChannel.d();
                }
                return ad.a((int) R.string.channel_custom_d, Integer.valueOf(b));
            case 4:
                return ad.a((int) R.string.channel_sos);
            case 5:
                return userChannel.d();
            case 6:
                return ad.a((int) R.string.channel_team);
            case 7:
                return ad.a((int) R.string.channel_scan);
            case 8:
                return userChannel.d();
            default:
                return null;
        }
    }

    public static String a(ChannelBean channelBean) {
        int no = channelBean.getNo() + 1;
        switch (channelBean.getType()) {
            case 0:
                return ad.a((int) R.string.channel_long_distance_d, Integer.valueOf(no));
            case 1:
                return ad.a((int) R.string.channel_public_d, Integer.valueOf(no));
            case 2:
                if (!TextUtils.isEmpty(channelBean.getName())) {
                    return channelBean.getName();
                }
                return ad.a((int) R.string.channel_custom_d, Integer.valueOf(no));
            case 4:
                return ad.a((int) R.string.channel_sos);
            case 5:
                return channelBean.getName();
            case 6:
                return ad.a((int) R.string.channel_team);
            case 7:
                return ad.a((int) R.string.channel_scan);
            default:
                return null;
        }
    }

    public static int a(List<UserChannel> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(Integer.valueOf(((UserChannel) list.get(i)).b()));
        }
        int i2 = 0;
        while (true) {
            if (i2 < 20) {
                if (!arrayList.contains(Integer.valueOf(i2))) {
                    break;
                }
                i2++;
            } else {
                i2 = -1;
                break;
            }
        }
        s.b("MethodsUtils", "get insert channel num: " + i2);
        return i2;
    }

    public static int b(List<SealSharkChannel> list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(Integer.valueOf(((SealSharkChannel) list.get(i)).b()));
        }
        int i2 = 0;
        while (true) {
            if (i2 < 20) {
                if (!arrayList.contains(Integer.valueOf(i2))) {
                    break;
                }
                i2++;
            } else {
                i2 = -1;
                break;
            }
        }
        s.b("MethodsUtils", "get insert channel num: " + i2);
        return i2;
    }

    public static int[] g(int i) {
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

    public static long b(int i, int i2) {
        return (long) ((i * 100) + i2);
    }

    public static boolean b(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null || activeNetworkInfo.getType() != 1) {
            return false;
        }
        return true;
    }

    public static boolean b(String str) {
        try {
            return Pattern.compile("^([a-z0-9A-Z]+[-|_|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$").matcher(str).matches();
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean c(String str) {
        try {
            return Pattern.compile("^1[123456789]\\d{9}$").matcher(str).matches();
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean d(String str) {
        try {
            byte[] bytes = str.getBytes(StringUtils.GB2312);
            if ((bytes[0] & 255) < 176 || (bytes[0] & 255) > 247 || (bytes[1] & 255) < 161 || (bytes[1] & 255) > 254) {
                return false;
            }
            return true;
        } catch (UnsupportedEncodingException e) {
            ThrowableExtension.printStackTrace(e);
            return false;
        }
    }

    public static boolean e(String str) {
        return str.matches("[a-z A-Z0-9_\\-]+");
    }

    public static boolean f(String str) {
        return str.matches("[a-zA-Z0-9]+");
    }

    public static boolean g(String str) {
        for (int i = 0; i < str.length(); i++) {
            String valueOf = String.valueOf(str.charAt(i));
            if (!d(valueOf) && !e(valueOf)) {
                return false;
            }
        }
        return true;
    }

    public static boolean h(String str) {
        for (int i = 0; i < str.length(); i++) {
            String valueOf = String.valueOf(str.charAt(i));
            if (!valueOf.matches("[\\u4e00-\\u9fa5]+") && !f(valueOf)) {
                return false;
            }
        }
        return true;
    }

    public static boolean c(Context context) {
        return (context.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    public static boolean a(Context context, String str) {
        for (RunningServiceInfo runningServiceInfo : ((ActivityManager) context.getSystemService("activity")).getRunningServices(100)) {
            if (runningServiceInfo.service.getClassName().equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static Drawable b(View view) {
        view.measure(MeasureSpec.makeMeasureSpec(0, 0), MeasureSpec.makeMeasureSpec(0, 0));
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
        view.buildDrawingCache();
        Bitmap drawingCache = view.getDrawingCache();
        BitmapDrawable bitmapDrawable = null;
        if (drawingCache != null) {
            bitmapDrawable = new BitmapDrawable(view.getResources(), Bitmap.createBitmap(drawingCache));
        }
        view.destroyDrawingCache();
        return bitmapDrawable;
    }

    public static Bitmap a(Bitmap bitmap) {
        Bitmap createBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint();
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(0.3f);
        paint.setColorFilter(new ColorMatrixColorFilter(colorMatrix));
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        return createBitmap;
    }

    public static boolean b(Context context, String str) {
        try {
            context.getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (NameNotFoundException e) {
            return false;
        }
    }

    public static boolean a() {
        if (Locale.getDefault().getLanguage().toLowerCase().endsWith("en")) {
            return true;
        }
        return false;
    }

    public static boolean b() {
        if (Locale.getDefault().getLanguage().toLowerCase().endsWith("zh")) {
            return true;
        }
        return false;
    }

    public static boolean h(int i) {
        return VERSION.SDK_INT >= i;
    }

    public static String d(Context context) {
        try {
            return context.getExternalFilesDir(null).getPath() + "/amapoffline";
        } catch (Exception e) {
            return new File(Environment.getExternalStorageDirectory() + "/" + "mitalki" + "/amapoffline").toString();
        }
    }
}
