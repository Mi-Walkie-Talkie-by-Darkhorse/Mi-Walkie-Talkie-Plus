package com.bumptech.glide.gifdecoder;

import android.support.annotation.ColorInt;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

class GifFrame {
    int a;
    int b;
    int c;
    int d;
    boolean e;
    boolean f;
    int g;
    int h;
    int i;
    int j;
    @ColorInt
    int[] k;

    @Retention(RetentionPolicy.SOURCE)
    @interface GifDisposalMethod {
    }

    GifFrame() {
    }
}
