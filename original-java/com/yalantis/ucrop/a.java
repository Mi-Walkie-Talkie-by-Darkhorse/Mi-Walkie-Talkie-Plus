package com.yalantis.ucrop;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.annotation.ColorInt;
import android.support.annotation.IntRange;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;

/* compiled from: UCrop */
public class a {
    private Intent a = new Intent();
    private Bundle b = new Bundle();

    /* renamed from: com.yalantis.ucrop.a$a reason: collision with other inner class name */
    /* compiled from: UCrop */
    public static class C0025a {
        private final Bundle a = new Bundle();

        @NonNull
        public Bundle a() {
            return this.a;
        }

        public void a(boolean z) {
            this.a.putBoolean("com.yalantis.ucrop.CircleDimmedLayer", z);
        }

        public void b(boolean z) {
            this.a.putBoolean("com.yalantis.ucrop.ShowCropFrame", z);
        }

        public void a(@ColorInt int i) {
            this.a.putInt("com.yalantis.ucrop.ToolbarColor", i);
        }

        public void b(@ColorInt int i) {
            this.a.putInt("com.yalantis.ucrop.StatusBarColor", i);
        }

        public void c(@ColorInt int i) {
            this.a.putInt("com.yalantis.ucrop.UcropColorWidgetActive", i);
        }

        public void c(boolean z) {
            this.a.putBoolean("com.yalantis.ucrop.FreeStyleCrop", z);
        }
    }

    public static a a(@NonNull Uri uri, @NonNull Uri uri2) {
        return new a(uri, uri2);
    }

    private a(@NonNull Uri uri, @NonNull Uri uri2) {
        this.b.putParcelable("com.yalantis.ucrop.InputUri", uri);
        this.b.putParcelable("com.yalantis.ucrop.OutputUri", uri2);
    }

    public a a(@IntRange(from = 100) int i, @IntRange(from = 100) int i2) {
        this.b.putInt("com.yalantis.ucrop.MaxSizeX", i);
        this.b.putInt("com.yalantis.ucrop.MaxSizeY", i2);
        return this;
    }

    public a a(@NonNull C0025a aVar) {
        this.b.putAll(aVar.a());
        return this;
    }

    public void a(@NonNull Activity activity) {
        a(activity, 69);
    }

    public void a(@NonNull Activity activity, int i) {
        activity.startActivityForResult(a((Context) activity), i);
    }

    public Intent a(@NonNull Context context) {
        this.a.setClass(context, UCropActivity.class);
        this.a.putExtras(this.b);
        return this.a;
    }

    @Nullable
    public static Uri a(@NonNull Intent intent) {
        return (Uri) intent.getParcelableExtra("com.yalantis.ucrop.OutputUri");
    }
}
