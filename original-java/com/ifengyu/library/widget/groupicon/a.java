package com.ifengyu.library.widget.groupicon;

import android.content.Context;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.ifengyu.library.util.l;
import com.ifengyu.library.widget.view.QMUIRadiusImageView;

/* compiled from: NineGridImageViewAdapter */
public abstract class a<T> {
    /* access modifiers changed from: protected */
    public abstract void onDisplayImage(Context context, ImageView imageView, T t);

    /* access modifiers changed from: protected */
    public ImageView generateImageView(Context context) {
        QMUIRadiusImageView qMUIRadiusImageView = new QMUIRadiusImageView(context);
        qMUIRadiusImageView.setScaleType(ScaleType.CENTER_CROP);
        qMUIRadiusImageView.setCornerRadius(l.a(3.0f));
        return qMUIRadiusImageView;
    }
}
