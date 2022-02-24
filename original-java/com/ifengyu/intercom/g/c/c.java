package com.ifengyu.intercom.g.c;

import com.ifengyu.intercom.g.e.d;
import com.ifengyu.intercom.g.e.f;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

/* compiled from: PostFormBuilder.java */
/* loaded from: classes2.dex */
public class c extends b<c> {
    private List<a> f = new ArrayList();

    /* compiled from: PostFormBuilder.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        public String f5248a;

        /* renamed from: b  reason: collision with root package name */
        public String f5249b;

        /* renamed from: c  reason: collision with root package name */
        public File f5250c;

        public a(String str, String str2, File file) {
            this.f5248a = str;
            this.f5249b = str2;
            this.f5250c = file;
        }

        public String toString() {
            return "FileInput{key='" + this.f5248a + "', filename='" + this.f5249b + "', file=" + this.f5250c + '}';
        }
    }

    public f a() {
        return new d(this.f5245a, this.f5246b, this.d, this.f5247c, this.f, this.e).b();
    }

    public c a(String str, String str2, File file) {
        this.f.add(new a(str, str2, file));
        return this;
    }

    public c a(String str, String str2) {
        if (this.d == null) {
            this.d = new LinkedHashMap();
        }
        this.d.put(str, str2);
        return this;
    }
}
