package com.ifengyu.intercom.a.a;

import com.ifengyu.intercom.a.c.d;
import com.ifengyu.intercom.a.c.e;
import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

/* compiled from: PostFormBuilder */
public class c extends b<c> {
    private List<a> f = new ArrayList();

    /* compiled from: PostFormBuilder */
    public static class a {
        public String a;
        public String b;
        public File c;

        public a(String str, String str2, File file) {
            this.a = str;
            this.b = str2;
            this.c = file;
        }

        public String toString() {
            return "FileInput{key='" + this.a + '\'' + ", filename='" + this.b + '\'' + ", file=" + this.c + '}';
        }
    }

    public e a() {
        return new d(this.a, this.b, this.d, this.c, this.f, this.e).b();
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
