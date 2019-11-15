package com.bumptech.glide.load.engine.a;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.support.annotation.Nullable;
import com.bumptech.glide.util.i;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NavigableMap;
import java.util.TreeMap;

@TargetApi(19)
/* compiled from: SizeConfigStrategy */
public class n implements l {
    private static final Config[] a = {Config.ARGB_8888, null};
    private static final Config[] b = {Config.RGB_565};
    private static final Config[] c = {Config.ARGB_4444};
    private static final Config[] d = {Config.ALPHA_8};
    private final b e = new b();
    private final h<a, Bitmap> f = new h<>();
    private final Map<Config, NavigableMap<Integer, Integer>> g = new HashMap();

    /* renamed from: com.bumptech.glide.load.engine.a.n$1 reason: invalid class name */
    /* compiled from: SizeConfigStrategy */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] a = new int[Config.values().length];

        static {
            try {
                a[Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                a[Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                a[Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                a[Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* compiled from: SizeConfigStrategy */
    static final class a implements m {
        int a;
        private final b b;
        private Config c;

        public a(b bVar) {
            this.b = bVar;
        }

        public void a(int i, Config config) {
            this.a = i;
            this.c = config;
        }

        public void a() {
            this.b.a(this);
        }

        public String toString() {
            return n.a(this.a, this.c);
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            if (this.a != aVar.a || !i.a((Object) this.c, (Object) aVar.c)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            return (this.c != null ? this.c.hashCode() : 0) + (this.a * 31);
        }
    }

    /* compiled from: SizeConfigStrategy */
    static class b extends d<a> {
        b() {
        }

        public a a(int i, Config config) {
            a aVar = (a) c();
            aVar.a(i, config);
            return aVar;
        }

        /* access modifiers changed from: protected */
        /* renamed from: a */
        public a b() {
            return new a(this);
        }
    }

    public void a(Bitmap bitmap) {
        a a2 = this.e.a(i.a(bitmap), bitmap.getConfig());
        this.f.a(a2, bitmap);
        NavigableMap a3 = a(bitmap.getConfig());
        Integer num = (Integer) a3.get(Integer.valueOf(a2.a));
        a3.put(Integer.valueOf(a2.a), Integer.valueOf(num == null ? 1 : num.intValue() + 1));
    }

    @Nullable
    public Bitmap a(int i, int i2, Config config) {
        a b2 = b(i.a(i, i2, config), config);
        Bitmap bitmap = (Bitmap) this.f.a(b2);
        if (bitmap != null) {
            a(Integer.valueOf(b2.a), bitmap);
            bitmap.reconfigure(i, i2, bitmap.getConfig() != null ? bitmap.getConfig() : Config.ARGB_8888);
        }
        return bitmap;
    }

    private a b(int i, Config config) {
        a a2 = this.e.a(i, config);
        Config[] b2 = b(config);
        int length = b2.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                break;
            }
            Config config2 = b2[i2];
            Integer num = (Integer) a(config2).ceilingKey(Integer.valueOf(i));
            if (num == null || num.intValue() > i * 8) {
                i2++;
            } else if (num.intValue() != i || (config2 != null ? !config2.equals(config) : config != null)) {
                this.e.a(a2);
                return this.e.a(num.intValue(), config2);
            }
        }
        return a2;
    }

    @Nullable
    public Bitmap a() {
        Bitmap bitmap = (Bitmap) this.f.a();
        if (bitmap != null) {
            a(Integer.valueOf(i.a(bitmap)), bitmap);
        }
        return bitmap;
    }

    private void a(Integer num, Bitmap bitmap) {
        NavigableMap a2 = a(bitmap.getConfig());
        Integer num2 = (Integer) a2.get(num);
        if (num2 == null) {
            throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + b(bitmap) + ", this: " + this);
        } else if (num2.intValue() == 1) {
            a2.remove(num);
        } else {
            a2.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    private NavigableMap<Integer, Integer> a(Config config) {
        NavigableMap<Integer, Integer> navigableMap = (NavigableMap) this.g.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.g.put(config, treeMap);
        return treeMap;
    }

    public String b(Bitmap bitmap) {
        return a(i.a(bitmap), bitmap.getConfig());
    }

    public String b(int i, int i2, Config config) {
        return a(i.a(i, i2, config), config);
    }

    public int c(Bitmap bitmap) {
        return i.a(bitmap);
    }

    public String toString() {
        StringBuilder append = new StringBuilder().append("SizeConfigStrategy{groupedMap=").append(this.f).append(", sortedSizes=(");
        for (Entry entry : this.g.entrySet()) {
            append.append(entry.getKey()).append('[').append(entry.getValue()).append("], ");
        }
        if (!this.g.isEmpty()) {
            append.replace(append.length() - 2, append.length(), "");
        }
        return append.append(")}").toString();
    }

    static String a(int i, Config config) {
        return "[" + i + "](" + config + ")";
    }

    private static Config[] b(Config config) {
        switch (AnonymousClass1.a[config.ordinal()]) {
            case 1:
                return a;
            case 2:
                return b;
            case 3:
                return c;
            case 4:
                return d;
            default:
                return new Config[]{config};
        }
    }
}
