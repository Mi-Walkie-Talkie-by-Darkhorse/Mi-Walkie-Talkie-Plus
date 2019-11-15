package com.bumptech.glide.load.engine.b;

import android.support.v4.util.Pools.Pool;
import com.bumptech.glide.load.c;
import com.bumptech.glide.util.a.a.C0023a;
import com.bumptech.glide.util.a.b;
import com.bumptech.glide.util.e;
import com.bumptech.glide.util.i;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* compiled from: SafeKeyGenerator */
public class j {
    private final e<c, String> a = new e<>(1000);
    private final Pool<a> b = com.bumptech.glide.util.a.a.b(10, new C0023a<a>() {
        /* renamed from: a */
        public a b() {
            try {
                return new a(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e) {
                throw new RuntimeException(e);
            }
        }
    });

    /* compiled from: SafeKeyGenerator */
    private static final class a implements com.bumptech.glide.util.a.a.c {
        final MessageDigest a;
        private final b b = b.a();

        a(MessageDigest messageDigest) {
            this.a = messageDigest;
        }

        public b b_() {
            return this.b;
        }
    }

    public String a(c cVar) {
        String str;
        synchronized (this.a) {
            str = (String) this.a.b(cVar);
        }
        if (str == null) {
            str = b(cVar);
        }
        synchronized (this.a) {
            this.a.b(cVar, str);
        }
        return str;
    }

    private String b(c cVar) {
        a aVar = (a) this.b.acquire();
        try {
            cVar.a(aVar.a);
            return i.a(aVar.a.digest());
        } finally {
            this.b.release(aVar);
        }
    }
}
