package com.amap.api.mapcore.util;

import android.text.TextUtils;
import com.amap.api.maps.MapsInitializer;
import com.amap.api.maps.model.Tile;
import com.amap.api.maps.model.TileProvider;
import com.autonavi.amap.mapcore.MapConfig;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Random;

/* compiled from: BaseTileProvider */
public class dk implements TileProvider {
    hu a;
    Random b = new Random();
    private final int c;
    private final int d;
    private MapConfig e;

    /* compiled from: BaseTileProvider */
    class a extends hv {
        private int b;
        private int c;
        private int d;
        private String e;
        private String f = "";

        public a(int i, int i2, int i3, String str) {
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = str;
            this.f = e();
            a(fv.a(p.a));
            a(5000);
            b(50000);
        }

        public Map<String, String> a() {
            HashMap hashMap = new HashMap();
            hashMap.put("User-Agent", g.c);
            hashMap.put("Accept-Encoding", "gzip");
            hashMap.put("platinfo", String.format(Locale.US, "platform=Android&sdkversion=%s&product=%s", new Object[]{"5.7.0", "3dmap"}));
            hashMap.put("X-INFO", fr.a(p.a));
            hashMap.put("key", fo.f(p.a));
            hashMap.put("logversion", "2.1");
            return hashMap;
        }

        private String d() {
            StringBuffer stringBuffer = new StringBuffer();
            if (dy.a(this.b, this.c, this.d) || this.d < 7) {
                stringBuffer.append("key=").append(fo.f(p.a)).append("&z=").append(this.d).append("&x=").append(this.b).append("&y=").append(this.c).append("&lang=en&size=1&scale=1&style=7");
            } else if (MapsInitializer.isLoadWorldGridMap()) {
                stringBuffer.append("key=").append(fo.f(p.a));
                stringBuffer.append("&x=").append(this.b);
                stringBuffer.append("&y=").append(this.c);
                stringBuffer.append("&z=").append(this.d);
                stringBuffer.append("&ds=0");
                stringBuffer.append("&dpitype=webrd");
                stringBuffer.append("&lang=").append(this.e);
                stringBuffer.append("&scale=2");
            }
            String stringBuffer2 = stringBuffer.toString();
            String a2 = a(stringBuffer2);
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append(stringBuffer2);
            String a3 = fr.a();
            stringBuffer3.append("&ts=" + a3);
            stringBuffer3.append("&scode=" + fr.a(p.a, a3, a2));
            return stringBuffer3.toString();
        }

        private String a(String str) {
            String[] split = str.split("&");
            Arrays.sort(split);
            StringBuffer stringBuffer = new StringBuffer();
            for (String b2 : split) {
                stringBuffer.append(b(b2));
                stringBuffer.append("&");
            }
            String stringBuffer2 = stringBuffer.toString();
            if (stringBuffer2.length() > 1) {
                return (String) stringBuffer2.subSequence(0, stringBuffer2.length() - 1);
            }
            return str;
        }

        private String b(String str) {
            if (str == null) {
                return str;
            }
            try {
                return URLDecoder.decode(str, "utf-8");
            } catch (UnsupportedEncodingException e2) {
                gf.b((Throwable) e2, "ProtocalHandler", "strReEncoder");
            } catch (Exception e3) {
                gf.b((Throwable) e3, "ProtocalHandler", "strReEncoderException");
            }
            return "";
        }

        public Map<String, String> b() {
            return null;
        }

        private String e() {
            if (dy.a(this.b, this.c, this.d) || this.d < 7) {
                return String.format(Locale.US, "http://wprd0%d.is.autonavi.com/appmaptile?", new Object[]{Integer.valueOf((dk.this.b.nextInt(100000) % 4) + 1)});
            } else if (MapsInitializer.isLoadWorldGridMap()) {
                return "http://restapi.amap.com/v4/gridmap?";
            } else {
                return null;
            }
        }

        public String c() {
            if (TextUtils.isEmpty(this.f)) {
                return null;
            }
            return this.f + d();
        }
    }

    public dk(int i, int i2, MapConfig mapConfig) {
        this.c = i;
        this.d = i2;
        this.e = mapConfig;
    }

    public final Tile getTile(int i, int i2, int i3) {
        try {
            byte[] a2 = a(i, i2, i3, this.e != null ? this.e.getMapLanguage() : "zh_cn");
            if (a2 == null) {
                return NO_TILE;
            }
            return Tile.obtain(this.c, this.d, a2);
        } catch (IOException e2) {
            return NO_TILE;
        }
    }

    private byte[] a(int i, int i2, int i3, String str) throws IOException {
        try {
            a aVar = new a(i, i2, i3, str);
            this.a = hu.a(false);
            return this.a.d(aVar);
        } catch (Throwable th) {
            return null;
        }
    }

    public int getTileWidth() {
        return this.c;
    }

    public int getTileHeight() {
        return this.d;
    }
}
