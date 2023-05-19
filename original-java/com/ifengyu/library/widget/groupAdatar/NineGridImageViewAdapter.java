package com.ifengyu.library.widget.groupAdatar;

import android.app.Activity;
import android.content.Context;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import com.ifengyu.library.p233c.ImageLoader;
import com.ifengyu.library.utils.UIUtils;
import com.qmuiteam.qmui.widget.QMUIRadiusImageView;

/* renamed from: com.ifengyu.library.widget.groupAdatar.a */
/* loaded from: classes2.dex */
public class NineGridImageViewAdapter<T> {

    /* renamed from: a */
    private T f16401a;

    public NineGridImageViewAdapter(T t) {
        this.f16401a = t;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public ImageView m8585a(Context context) {
        QMUIRadiusImageView qMUIRadiusImageView = new QMUIRadiusImageView(context);
        qMUIRadiusImageView.setBorderWidth(0);
        qMUIRadiusImageView.setCornerRadius(UIUtils.m8616b(6.0f));
        return qMUIRadiusImageView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public void m8584b(Context context, ImageView imageView, String str) {
        T t = this.f16401a;
        if (t == null) {
            return;
        }
        if (t instanceof Fragment) {
            ImageLoader.m8705f((Fragment) t, imageView, str);
        } else if (t instanceof Activity) {
            ImageLoader.m8706e((Activity) t, imageView, str);
        }
    }
}
