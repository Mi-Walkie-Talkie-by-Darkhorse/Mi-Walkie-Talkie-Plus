package com.ifengyu.intercom.ui.map;

import android.os.Environment;
import android.util.Log;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.ad;
import com.ifengyu.intercom.b.p;
import com.ifengyu.intercom.b.s;
import com.ifengyu.intercom.b.v;
import com.ifengyu.intercom.network.a.d;
import com.ifengyu.intercom.network.a.e;
import com.ifengyu.intercom.ui.map.d.a.h;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.osmdroid.tileprovider.constants.OpenStreetMapTileProviderConstants;

public class MapDataProvider {
    private static volatile MapDataProvider a;
    /* access modifiers changed from: private */
    public Set<b> b = new HashSet();
    private Map<Object, TilePoint[]> c = new HashMap();
    /* access modifiers changed from: private */
    public HashMap<String, a> d = new HashMap<>();
    /* access modifiers changed from: private */
    public final List<com.ifengyu.intercom.greendao.bean.a> e = new ArrayList();
    /* access modifiers changed from: private */
    public int f = 0;

    public enum MAP_TYPE {
        GOOGLE_SATELLITE_MAP,
        CONTOUR_MAP,
        GOOGLE_2D_MAP
    }

    public class a extends d {
        private com.ifengyu.intercom.greendao.bean.a b;
        private com.ifengyu.intercom.greendao.dao.b c;

        public a(com.ifengyu.intercom.greendao.bean.a aVar, com.ifengyu.intercom.greendao.dao.b bVar) {
            this.b = aVar;
            this.c = bVar;
            aVar.c(Integer.valueOf(0));
            aVar.d(Integer.valueOf(0));
        }

        public void b() {
            this.b.c(Integer.valueOf(this.b.h().intValue() + 1));
            for (b a2 : MapDataProvider.this.b) {
                a2.a(this.b);
            }
        }

        public void c() {
            MapDataProvider.this.f = MapDataProvider.this.f + 1;
            if (MapDataProvider.this.f >= 5) {
                MapDataProvider.this.e.remove(this.b);
                this.b.a(Boolean.valueOf(false));
                MapDataProvider.this.a(this.c, this.b);
                v.a((CharSequence) ad.a((int) R.string.toast_network_disconnected_and_pause_download), false);
            }
            this.b.d(Integer.valueOf(this.b.i().intValue() + 1));
            for (b a2 : MapDataProvider.this.b) {
                a2.a(this.b);
            }
        }

        public void a(boolean z) {
            if (this.b.h().intValue() + this.b.i().intValue() >= this.b.g().intValue()) {
                MapDataProvider.this.e.remove(this.b);
                this.b.a(Boolean.valueOf(false));
                MapDataProvider.this.d.remove(this.b.k());
                MapDataProvider.this.a(this.c, this.b);
            }
        }
    }

    public interface b {
        void a(com.ifengyu.intercom.greendao.bean.a aVar);
    }

    public static MAP_TYPE a(int i) {
        switch (i) {
            case 0:
                return MAP_TYPE.GOOGLE_SATELLITE_MAP;
            case 1:
                return MAP_TYPE.CONTOUR_MAP;
            case 2:
                return MAP_TYPE.GOOGLE_2D_MAP;
            default:
                return MAP_TYPE.GOOGLE_2D_MAP;
        }
    }

    private MapDataProvider() {
    }

    public static MapDataProvider a() {
        if (a == null) {
            synchronized (MapDataProvider.class) {
                if (a == null) {
                    a = new MapDataProvider();
                }
            }
        }
        return a;
    }

    /* access modifiers changed from: private */
    public void a(String str, MAP_TYPE map_type, String str2, byte[] bArr, boolean z) {
        String a2;
        String[] split = str2.split("_");
        if (z) {
            a2 = a(split[1], split[2], split[0], map_type);
        } else {
            a2 = a(str, (Object) split[1], (Object) split[2], (Object) split[0], map_type);
        }
        File file = new File(a2);
        if (!file.exists()) {
            try {
                if (file.getParentFile().mkdirs() || file.createNewFile()) {
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    byte[] bArr2 = new byte[2048];
                    while (true) {
                        int read = byteArrayInputStream.read(bArr2);
                        if (read != -1) {
                            fileOutputStream.write(bArr2, 0, read);
                        } else {
                            fileOutputStream.flush();
                            fileOutputStream.close();
                            byteArrayInputStream.close();
                            return;
                        }
                    }
                }
            } catch (IOException e2) {
                s.e("MapDataProvider", e2.getMessage());
            }
        }
    }

    /* access modifiers changed from: private */
    public String a(String str, Object obj, Object obj2, Object obj3, MAP_TYPE map_type) {
        return Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + "mitalki/map/offline" + "/" + str + "/" + h.a(map_type) + "/" + obj3 + "/" + obj + "/" + obj2 + h.a() + OpenStreetMapTileProviderConstants.TILE_PATH_EXTENSION;
    }

    private String a(Object obj, Object obj2, Object obj3, MAP_TYPE map_type) {
        return Environment.getExternalStorageDirectory().getAbsolutePath() + "/" + "mitalki/map/cache" + "/" + h.a(map_type) + "/" + obj3 + "/" + obj + "/" + obj2 + ".png.tile";
    }

    public static String a(Object obj, Object obj2, Object obj3) {
        return obj3 + "_" + obj + "_" + obj2;
    }

    /* access modifiers changed from: private */
    public byte[] a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                byteArrayOutputStream.write(bArr, 0, read);
            } else {
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                byteArrayOutputStream.close();
                inputStream.close();
                return byteArray;
            }
        }
    }

    public String b(int i) {
        double d2 = ((double) (i * 45)) / 1024.0d;
        boolean z = d2 > 1024.0d;
        StringBuilder sb = new StringBuilder();
        if (z) {
            d2 /= 1024.0d;
        }
        return sb.append(p.a(String.valueOf(d2))).append(z ? "G" : "M").toString();
    }

    public void a(com.ifengyu.intercom.greendao.bean.a aVar, com.ifengyu.intercom.greendao.dao.b bVar) {
        TilePoint[] a2;
        int i = 0;
        while (true) {
            if (i >= this.e.size()) {
                i = -1;
                break;
            } else if (aVar.k().equals(((com.ifengyu.intercom.greendao.bean.a) this.e.get(i)).k())) {
                break;
            } else {
                i++;
            }
        }
        Log.d("MapDataProvider", "index=" + i);
        if (i != -1) {
            Log.d("MapDataProvider", "已在下载队列，，暂停下载");
            com.ifengyu.intercom.greendao.bean.a aVar2 = (com.ifengyu.intercom.greendao.bean.a) this.e.get(i);
            aVar2.a(Boolean.valueOf(false));
            a(bVar, aVar2);
            this.e.remove(aVar2);
        } else if (this.e.size() >= 3) {
            aVar.a(Boolean.valueOf(false));
            a(bVar, aVar);
        } else {
            this.e.add(aVar);
            if (!aVar.m().booleanValue()) {
                aVar.a(Boolean.valueOf(true));
                a(bVar, aVar);
            }
            if (this.c.get(aVar) != null) {
                a2 = (TilePoint[]) this.c.get(aVar);
            } else {
                a2 = com.ifengyu.intercom.ui.map.d.a.a.a(aVar, aVar.f().intValue());
                this.c.put(aVar, a2);
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(a2);
            int intValue = aVar.f().intValue();
            while (true) {
                intValue--;
                if (intValue >= 12) {
                    arrayList.add(com.ifengyu.intercom.ui.map.d.a.a.a(aVar, intValue));
                } else {
                    a(aVar, arrayList, bVar);
                    return;
                }
            }
        }
    }

    private void a(final com.ifengyu.intercom.greendao.bean.a aVar, final ArrayList<TilePoint[]> arrayList, final com.ifengyu.intercom.greendao.dao.b bVar) {
        this.d.put(aVar.k(), new a(aVar, bVar));
        e.b().execute(new Runnable() {
            public void run() {
                MAP_TYPE a2 = MapDataProvider.a(aVar.l().intValue());
                Log.d("MapDataProvider", "--" + aVar.g() + "启动下载" + aVar.k() + "--" + aVar.m());
                for (int i = 0; i < arrayList.size(); i++) {
                    for (TilePoint tilePoint : (TilePoint[]) arrayList.get(i)) {
                        if (!aVar.m().booleanValue()) {
                            aVar.a(Boolean.valueOf(false));
                            MapDataProvider.this.e.remove(aVar);
                            MapDataProvider.this.a(bVar, aVar);
                            Log.d("MapDataProvider", "暂停下载" + aVar.k() + aVar.m());
                            MapDataProvider.this.f = 0;
                            return;
                        }
                        int a3 = tilePoint.a();
                        int b2 = tilePoint.b();
                        int c2 = tilePoint.c();
                        try {
                            File file = new File(MapDataProvider.this.a(aVar.k(), (Object) Integer.valueOf(a3), (Object) Integer.valueOf(b2), (Object) Integer.valueOf(c2), a2));
                            if (file.exists()) {
                                ((a) MapDataProvider.this.d.get(aVar.k())).sendEmptyMessage(1);
                            } else {
                                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(h.a(a2, Integer.valueOf(a3), Integer.valueOf(b2), Integer.valueOf(c2))).openConnection();
                                httpURLConnection.setConnectTimeout(5000);
                                httpURLConnection.setRequestMethod("GET");
                                InputStream inputStream = httpURLConnection.getInputStream();
                                MapDataProvider.this.a(aVar.k(), a2, MapDataProvider.a((Object) Integer.valueOf(a3), (Object) Integer.valueOf(b2), (Object) Integer.valueOf(c2)), MapDataProvider.this.a(inputStream), false);
                                inputStream.close();
                                if (file.exists()) {
                                    ((a) MapDataProvider.this.d.get(aVar.k())).sendEmptyMessage(1);
                                } else {
                                    ((a) MapDataProvider.this.d.get(aVar.k())).sendEmptyMessage(2);
                                }
                            }
                        } catch (MalformedURLException e) {
                            MalformedURLException malformedURLException = e;
                            ((a) MapDataProvider.this.d.get(aVar.k())).sendEmptyMessage(2);
                            s.e("MapDataProvider", malformedURLException.getMessage());
                        } catch (SocketTimeoutException e2) {
                            SocketTimeoutException socketTimeoutException = e2;
                            ((a) MapDataProvider.this.d.get(aVar.k())).sendEmptyMessage(2);
                            ThrowableExtension.printStackTrace(socketTimeoutException);
                        } catch (UnknownHostException e3) {
                            UnknownHostException unknownHostException = e3;
                            ((a) MapDataProvider.this.d.get(aVar.k())).sendEmptyMessage(2);
                            ThrowableExtension.printStackTrace(unknownHostException);
                        } catch (IOException e4) {
                            IOException iOException = e4;
                            ((a) MapDataProvider.this.d.get(aVar.k())).sendEmptyMessage(2);
                            s.e("MapDataProvider", iOException.getMessage());
                        }
                    }
                }
            }
        });
    }

    public void a(com.ifengyu.intercom.greendao.dao.b bVar, com.ifengyu.intercom.greendao.bean.a aVar) {
        MiTalkiApp.a().b().b().update(aVar);
    }

    public void a(b bVar) {
        this.b.add(bVar);
    }

    public void b(b bVar) {
        this.b.remove(bVar);
    }

    public List<com.ifengyu.intercom.greendao.bean.a> b() {
        return this.e;
    }
}
