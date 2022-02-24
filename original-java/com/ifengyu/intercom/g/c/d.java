package com.ifengyu.intercom.g.c;

import com.ifengyu.intercom.g.e.e;
import com.ifengyu.intercom.g.e.f;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

/* compiled from: PutFormBuilder.java */
/* loaded from: classes2.dex */
public class d extends b<d> {
    private List<a> f = new ArrayList();

    /* compiled from: PutFormBuilder.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f5251a;

        /* renamed from: b  reason: collision with root package name */
        public String f5252b;

        /* renamed from: c  reason: collision with root package name */
        public File f5253c;

        public String toString() {
            return "FileInput{key='" + this.f5251a + "', filename='" + this.f5252b + "', file=" + this.f5253c + '}';
        }
    }

    public f a() {
        return new e(this.f5245a, this.f5246b, this.d, this.f5247c, this.f, this.e).b();
    }

    public d a(String str, String str2) {
        if (this.d == null) {
            this.d = new LinkedHashMap();
        }
        this.d.put(str, str2);
        return this;
    }
}
