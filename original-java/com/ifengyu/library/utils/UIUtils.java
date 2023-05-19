package com.ifengyu.library.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.annotation.ArrayRes;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.StringRes;
import com.ifengyu.library.base.BaseApp;
import com.mic.etoast2.Toast;
import java.io.FileNotFoundException;

/* renamed from: com.ifengyu.library.utils.s */
/* loaded from: classes2.dex */
public class UIUtils {

    /* renamed from: a */
    private static Toast f16391a;

    /* renamed from: b */
    private static int f16392b;

    /* renamed from: c */
    private static int f16393c;

    /* renamed from: A */
    private static void m8619A(final CharSequence charSequence, final boolean z) {
        if (TextUtils.isEmpty(charSequence)) {
            return;
        }
        Toast toast = f16391a;
        if (toast != null) {
            try {
                toast.m8170a();
            } catch (Exception e) {
                e.printStackTrace();
            }
            f16391a = null;
        }
        BaseApp.m8713a().post(new Runnable() { // from class: com.ifengyu.library.utils.b
            @Override // java.lang.Runnable
            public final void run() {
                UIUtils.m8600r(z, charSequence);
            }
        });
    }

    /* renamed from: B */
    public static void m8618B(CharSequence charSequence) {
        m8619A(charSequence, true);
    }

    /* renamed from: a */
    public static Bitmap m8617a(Uri uri) {
        if (uri == null) {
            return null;
        }
        try {
            return BitmapFactory.decodeStream(m8613e().getContentResolver().openInputStream(uri));
        } catch (FileNotFoundException e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: b */
    public static int m8616b(float f) {
        return (int) ((f * m8606l().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: c */
    public static int m8615c() {
        return View.generateViewId();
    }

    /* renamed from: d */
    public static int m8614d(@ColorRes int i) {
        return m8606l().getColor(i);
    }

    /* renamed from: e */
    public static Context m8613e() {
        return BaseApp.m8712b();
    }

    /* renamed from: f */
    public static DisplayMetrics m8612f(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getApplicationContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics;
    }

    /* renamed from: g */
    public static Drawable m8611g(@DrawableRes int i) {
        return m8606l().getDrawable(i);
    }

    /* renamed from: h */
    public static int[] m8610h(@ArrayRes int i) {
        return m8606l().getIntArray(i);
    }

    /* renamed from: i */
    private static Handler m8609i() {
        return BaseApp.m8713a();
    }

    /* renamed from: j */
    private static long m8608j() {
        return BaseApp.m8711c();
    }

    /* renamed from: k */
    public static String m8607k() {
        return m8613e().getPackageName();
    }

    /* renamed from: l */
    public static Resources m8606l() {
        return m8613e().getResources();
    }

    /* renamed from: m */
    public static int m8605m() {
        if (f16393c == 0) {
            f16393c = m8612f(m8613e()).heightPixels;
        }
        return f16393c;
    }

    /* renamed from: n */
    public static int m8604n() {
        if (f16392b == 0) {
            f16392b = m8612f(m8613e()).widthPixels;
        }
        return f16392b;
    }

    /* renamed from: o */
    public static String m8603o(@StringRes int i) {
        return m8606l().getString(i);
    }

    /* renamed from: p */
    public static String m8602p(@StringRes int i, Object... objArr) {
        return m8606l().getString(i, objArr);
    }

    /* renamed from: q */
    public static String[] m8601q(@ArrayRes int i) {
        return m8606l().getStringArray(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public static /* synthetic */ void m8600r(boolean z, CharSequence charSequence) {
        Toast m8169b = Toast.m8169b(BaseApp.m8712b(), "", z ? 1 : 0);
        f16391a = m8169b;
        m8169b.m8168c(charSequence);
        f16391a.m8167d();
    }

    /* renamed from: s */
    public static void m8599s(Runnable runnable, long j) {
        m8609i().postDelayed(runnable, j);
    }

    /* renamed from: t */
    public static void m8598t(Runnable runnable) {
        if (Process.myTid() == m8608j()) {
            runnable.run();
        } else {
            m8609i().post(runnable);
        }
    }

    /* renamed from: u */
    public static void m8597u() {
        m8609i().removeCallbacksAndMessages(null);
    }

    /* renamed from: v */
    public static void m8596v(Runnable runnable) {
        m8609i().removeCallbacks(runnable);
    }

    /* renamed from: w */
    public static void m8595w(Typeface typeface, TextView... textViewArr) {
        for (TextView textView : textViewArr) {
            textView.setTypeface(typeface);
            textView.setPaintFlags(textView.getPaintFlags() | 128);
        }
    }

    /* renamed from: x */
    public static int m8594x(float f) {
        return (int) ((f * m8606l().getDisplayMetrics().scaledDensity) + 0.5f);
    }

    /* renamed from: y */
    public static void m8593y(@StringRes int i) {
        m8619A(m8603o(i), false);
    }

    /* renamed from: z */
    public static void m8592z(CharSequence charSequence) {
        m8619A(charSequence, false);
    }
}
