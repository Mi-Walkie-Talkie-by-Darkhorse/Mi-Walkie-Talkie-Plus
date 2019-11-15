package com.bumptech.glide;

import com.bumptech.glide.h;
import com.bumptech.glide.request.b.c;
import com.bumptech.glide.request.b.e;

/* compiled from: TransitionOptions */
public abstract class h<CHILD extends h<CHILD, TranscodeType>, TranscodeType> implements Cloneable {
    private e<? super TranscodeType> a = c.a();

    public final CHILD a(e<? super TranscodeType> eVar) {
        this.a = (e) com.bumptech.glide.util.h.a(eVar);
        return c();
    }

    /* access modifiers changed from: protected */
    /* renamed from: a */
    public final CHILD clone() {
        try {
            return (h) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* access modifiers changed from: 0000 */
    public final e<? super TranscodeType> b() {
        return this.a;
    }

    private CHILD c() {
        return this;
    }
}
