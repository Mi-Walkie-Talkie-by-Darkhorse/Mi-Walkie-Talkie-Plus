package com.bumptech.glide.request.b;

import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import com.bumptech.glide.request.b.d.a;

/* compiled from: DrawableCrossFadeTransition */
public class b implements d<Drawable> {
    private final int a;
    private final boolean b;

    public b(int i, boolean z) {
        this.a = i;
        this.b = z;
    }

    public boolean a(Drawable drawable, a aVar) {
        Drawable a2 = aVar.a();
        if (a2 == null) {
            a2 = new ColorDrawable(0);
        }
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{a2, drawable});
        transitionDrawable.setCrossFadeEnabled(this.b);
        transitionDrawable.startTransition(this.a);
        aVar.e(transitionDrawable);
        return true;
    }
}
