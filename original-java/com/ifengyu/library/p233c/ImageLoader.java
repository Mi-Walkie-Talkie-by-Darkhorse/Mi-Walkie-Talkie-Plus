package com.ifengyu.library.p233c;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.request.RequestOptions;
import com.ifengyu.library.R$drawable;

/* renamed from: com.ifengyu.library.c.a */
/* loaded from: classes2.dex */
public class ImageLoader {

    /* renamed from: a */
    public static String f16372a = "https://cdn.cnbj2.fds.api.mi-img.com/fengyu-image/n-avator-bg.png";

    /* renamed from: b */
    public static String f16373b = "https://cdn.cnbj2.fds.api.mi-img.com/fengyu-image/default-device-avatar.png";

    /* renamed from: c */
    public static String f16374c = "https://cdn.cnbj2.fds.api.mi-img.com/fengyu-image/default-group-avatar.png";

    /* renamed from: a */
    private static RequestOptions m8710a() {
        RequestOptions requestOptions = new RequestOptions();
        int i = R$drawable.common_icon_device_head_big;
        return requestOptions.m17260V(i).m17235k(i).m17237j(i).m17251c();
    }

    /* renamed from: b */
    private static RequestOptions m8709b() {
        RequestOptions requestOptions = new RequestOptions();
        int i = R$drawable.common_icon_head_big;
        return requestOptions.m17260V(i).m17235k(i).m17237j(i).m17251c();
    }

    /* renamed from: c */
    private static void m8708c(Object obj, ImageView imageView, Uri uri, RequestOptions requestOptions) {
        RequestManager m18153t;
        try {
            if (obj instanceof Fragment) {
                m18153t = Glide.m18151v((Fragment) obj);
            } else if (obj instanceof Activity) {
                m18153t = Glide.m18153t((Activity) obj);
            } else {
                throw new Exception("just Fragment or Activity!");
            }
            RequestBuilder<Drawable> m18114p = m18153t.m18114p(uri);
            m18114p.m18140b(requestOptions);
            m18114p.m18130l(imageView);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    private static boolean m8707d(String str) {
        return TextUtils.isEmpty(str) || str.equals("0") || str.equals("null") || !str.contains("http");
    }

    /* renamed from: e */
    public static void m8706e(Activity activity, ImageView imageView, String str) {
        RequestOptions m8709b = m8709b();
        if (m8707d(str)) {
            str = f16372a;
        }
        m8708c(activity, imageView, Uri.parse(str), m8709b);
    }

    /* renamed from: f */
    public static void m8705f(Fragment fragment, ImageView imageView, String str) {
        RequestOptions m8709b = m8709b();
        if (m8707d(str)) {
            str = f16372a;
        }
        m8708c(fragment, imageView, Uri.parse(str), m8709b);
    }

    /* renamed from: g */
    public static void m8704g(Fragment fragment, ImageView imageView, String str) {
        RequestOptions m8710a = m8710a();
        if (m8707d(str)) {
            str = f16373b;
        }
        m8708c(fragment, imageView, Uri.parse(str), m8710a);
    }
}
