package com.ifengyu.intercom.ui.map;

import android.util.Log;
import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.c0;
import com.ifengyu.intercom.i.k0;
import com.ifengyu.intercom.i.t;
import com.ifengyu.intercom.i.z;
import com.ifengyu.intercom.network.d.d;
import com.ifengyu.intercom.network.d.e;
import com.ifengyu.intercom.ui.map.f.a.h;
import com.nostra13.universalimageloader.core.download.BaseImageDownloader;
import com.tencent.connect.common.Constants;
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

/* loaded from: classes2.dex */
public class MapDataProvider {
    private static volatile MapDataProvider f;

    /* renamed from: c  reason: collision with root package name */
    private HashMap<String, b> f6486c = new HashMap<>();
    private final List<com.ifengyu.intercom.greendao.bean.a> d = new ArrayList();
    private int e = 0;

    /* renamed from: a  reason: collision with root package name */
    private Set<c> f6484a = new HashSet();

    /* renamed from: b  reason: collision with root package name */
    private Map<Object, TilePoint[]> f6485b = new HashMap();

    /* loaded from: classes2.dex */
    public enum MAP_TYPE {
        GOOGLE_SATELLITE_MAP,
        CONTOUR_MAP,
        GOOGLE_2D_MAP
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.ifengyu.intercom.greendao.bean.a f6490a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ArrayList f6491b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ com.ifengyu.intercom.greendao.dao.b f6492c;

        a(com.ifengyu.intercom.greendao.bean.a aVar, ArrayList arrayList, com.ifengyu.intercom.greendao.dao.b bVar) {
            this.f6490a = aVar;
            this.f6491b = arrayList;
            this.f6492c = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            MAP_TYPE b2 = MapDataProvider.b(this.f6490a.j().intValue());
            Log.d("MapDataProvider", "--" + this.f6490a.a() + "启动下载" + this.f6490a.b() + "--" + this.f6490a.e());
            boolean z = false;
            int i = 0;
            while (i < this.f6491b.size()) {
                int i2 = 0;
                while (i2 < ((TilePoint[]) this.f6491b.get(i)).length) {
                    TilePoint tilePoint = ((TilePoint[]) this.f6491b.get(i))[i2];
                    if (!this.f6490a.e().booleanValue()) {
                        this.f6490a.a(Boolean.valueOf(z));
                        MapDataProvider.this.d.remove(this.f6490a);
                        MapDataProvider.this.a(this.f6492c, this.f6490a);
                        Log.d("MapDataProvider", "暂停下载" + this.f6490a.b() + this.f6490a.e());
                        MapDataProvider mapDataProvider = MapDataProvider.this;
                        int i3 = z ? 1 : 0;
                        int i4 = z ? 1 : 0;
                        int i5 = z ? 1 : 0;
                        int i6 = z ? 1 : 0;
                        mapDataProvider.e = i3;
                        return;
                    }
                    int a2 = tilePoint.a();
                    int b3 = tilePoint.b();
                    int c2 = tilePoint.c();
                    try {
                        File file = new File(MapDataProvider.this.a(this.f6490a.b(), Integer.valueOf(a2), Integer.valueOf(b3), Integer.valueOf(c2), b2));
                        if (file.exists()) {
                            ((b) MapDataProvider.this.f6486c.get(this.f6490a.b())).sendEmptyMessage(1);
                        } else {
                            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(h.a(b2, Integer.valueOf(a2), Integer.valueOf(b3), Integer.valueOf(c2))).openConnection();
                            httpURLConnection.setConnectTimeout(BaseImageDownloader.DEFAULT_HTTP_CONNECT_TIMEOUT);
                            httpURLConnection.setRequestMethod(Constants.HTTP_GET);
                            InputStream inputStream = httpURLConnection.getInputStream();
                            MapDataProvider.this.a(this.f6490a.b(), b2, MapDataProvider.a(Integer.valueOf(a2), Integer.valueOf(b3), Integer.valueOf(c2)), MapDataProvider.this.a(inputStream), false);
                            inputStream.close();
                            if (file.exists()) {
                                ((b) MapDataProvider.this.f6486c.get(this.f6490a.b())).sendEmptyMessage(1);
                            } else {
                                ((b) MapDataProvider.this.f6486c.get(this.f6490a.b())).sendEmptyMessage(2);
                            }
                        }
                    } catch (MalformedURLException e) {
                        ((b) MapDataProvider.this.f6486c.get(this.f6490a.b())).sendEmptyMessage(2);
                        z.b("MapDataProvider", e.getMessage());
                    } catch (SocketTimeoutException e2) {
                        ((b) MapDataProvider.this.f6486c.get(this.f6490a.b())).sendEmptyMessage(2);
                        e2.printStackTrace();
                    } catch (UnknownHostException e3) {
                        ((b) MapDataProvider.this.f6486c.get(this.f6490a.b())).sendEmptyMessage(2);
                        e3.printStackTrace();
                    } catch (IOException e4) {
                        ((b) MapDataProvider.this.f6486c.get(this.f6490a.b())).sendEmptyMessage(2);
                        z.b("MapDataProvider", e4.getMessage());
                    }
                    i2++;
                    z = false;
                }
                i++;
                z = false;
            }
        }
    }

    /* loaded from: classes2.dex */
    public class b extends d {

        /* renamed from: a  reason: collision with root package name */
        private com.ifengyu.intercom.greendao.bean.a f6493a;

        /* renamed from: b  reason: collision with root package name */
        private com.ifengyu.intercom.greendao.dao.b f6494b;

        public b(com.ifengyu.intercom.greendao.bean.a aVar, com.ifengyu.intercom.greendao.dao.b bVar) {
            this.f6493a = aVar;
            this.f6494b = bVar;
            aVar.d((Integer) 0);
            aVar.b((Integer) 0);
        }

        @Override // com.ifengyu.intercom.network.d.d
        public void a(boolean z) {
            if (this.f6493a.l().intValue() + this.f6493a.c().intValue() >= this.f6493a.a().intValue()) {
                MapDataProvider.this.d.remove(this.f6493a);
                this.f6493a.a((Boolean) false);
                MapDataProvider.this.f6486c.remove(this.f6493a.b());
                MapDataProvider.this.a(this.f6494b, this.f6493a);
            }
        }

        @Override // com.ifengyu.intercom.network.d.d
        public void b() {
            MapDataProvider.c(MapDataProvider.this);
            if (MapDataProvider.this.e >= 5) {
                MapDataProvider.this.d.remove(this.f6493a);
                this.f6493a.a((Boolean) false);
                MapDataProvider.this.a(this.f6494b, this.f6493a);
                c0.a((CharSequence) k0.c(R.string.toast_network_disconnected_and_pause_download), false);
            }
            com.ifengyu.intercom.greendao.bean.a aVar = this.f6493a;
            aVar.b(Integer.valueOf(aVar.c().intValue() + 1));
            for (c cVar : MapDataProvider.this.f6484a) {
                cVar.a(this.f6493a);
            }
        }

        @Override // com.ifengyu.intercom.network.d.d
        public void c() {
            com.ifengyu.intercom.greendao.bean.a aVar = this.f6493a;
            aVar.d(Integer.valueOf(aVar.l().intValue() + 1));
            for (c cVar : MapDataProvider.this.f6484a) {
                cVar.a(this.f6493a);
            }
        }
    }

    /* loaded from: classes2.dex */
    public interface c {
        void a(com.ifengyu.intercom.greendao.bean.a aVar);
    }

    private MapDataProvider() {
    }

    static /* synthetic */ int c(MapDataProvider mapDataProvider) {
        int i = mapDataProvider.e;
        mapDataProvider.e = i + 1;
        return i;
    }

    public static MAP_TYPE b(int i) {
        if (i == 0) {
            return MAP_TYPE.GOOGLE_SATELLITE_MAP;
        }
        if (i == 1) {
            return MAP_TYPE.CONTOUR_MAP;
        }
        if (i != 2) {
            return MAP_TYPE.GOOGLE_2D_MAP;
        }
        return MAP_TYPE.GOOGLE_2D_MAP;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, MAP_TYPE map_type, String str2, byte[] bArr, boolean z) {
        String[] split = str2.split("_");
        File file = new File(z ? a(split[1], split[2], split[0], map_type) : a(str, split[1], split[2], split[0], map_type));
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
            } catch (IOException e) {
                z.b("MapDataProvider", e.getMessage());
            }
        }
    }

    public static MapDataProvider b() {
        if (f == null) {
            synchronized (MapDataProvider.class) {
                if (f == null) {
                    f = new MapDataProvider();
                }
            }
        }
        return f;
    }

    public void b(c cVar) {
        this.f6484a.remove(cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String a(String str, Object obj, Object obj2, Object obj3, MAP_TYPE map_type) {
        return k0.a().getExternalFilesDir(null).getAbsolutePath() + "/map/offline/" + str + "/" + h.a(map_type) + "/" + obj3 + "/" + obj + "/" + obj2 + h.a() + OpenStreetMapTileProviderConstants.TILE_PATH_EXTENSION;
    }

    private String a(Object obj, Object obj2, Object obj3, MAP_TYPE map_type) {
        return k0.a().getExternalFilesDir(null).getAbsolutePath() + "/map/cache/" + h.a(map_type) + "/" + obj3 + "/" + obj + "/" + obj2 + ".png.tile";
    }

    public static String a(Object obj, Object obj2, Object obj3) {
        return obj3 + "_" + obj + "_" + obj2;
    }

    /* JADX INFO: Access modifiers changed from: private */
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

    public String a(int i) {
        double d = (i * 45) / 1024.0d;
        boolean z = d > 1024.0d;
        StringBuilder sb = new StringBuilder();
        if (z) {
            d /= 1024.0d;
        }
        sb.append(t.a(String.valueOf(d)));
        sb.append(z ? "G" : "M");
        return sb.toString();
    }

    public void a(com.ifengyu.intercom.greendao.bean.a aVar, com.ifengyu.intercom.greendao.dao.b bVar) {
        TilePoint[] tilePointArr;
        int i = 0;
        while (true) {
            if (i >= this.d.size()) {
                i = -1;
                break;
            } else if (aVar.b().equals(this.d.get(i).b())) {
                break;
            } else {
                i++;
            }
        }
        Log.d("MapDataProvider", "index=" + i);
        if (i != -1) {
            Log.d("MapDataProvider", "已在下载队列，，暂停下载");
            com.ifengyu.intercom.greendao.bean.a aVar2 = this.d.get(i);
            aVar2.a((Boolean) false);
            a(bVar, aVar2);
            this.d.remove(aVar2);
        } else if (this.d.size() >= 3) {
            aVar.a((Boolean) false);
            a(bVar, aVar);
        } else {
            this.d.add(aVar);
            if (!aVar.e().booleanValue()) {
                aVar.a((Boolean) true);
                a(bVar, aVar);
            }
            if (this.f6485b.get(aVar) != null) {
                tilePointArr = this.f6485b.get(aVar);
            } else {
                tilePointArr = com.ifengyu.intercom.ui.map.f.a.a.a(aVar, aVar.m().intValue());
                this.f6485b.put(aVar, tilePointArr);
            }
            ArrayList<TilePoint[]> arrayList = new ArrayList<>();
            arrayList.add(tilePointArr);
            for (int intValue = aVar.m().intValue() - 1; intValue >= 12; intValue--) {
                arrayList.add(com.ifengyu.intercom.ui.map.f.a.a.a(aVar, intValue));
            }
            a(aVar, arrayList, bVar);
        }
    }

    private void a(com.ifengyu.intercom.greendao.bean.a aVar, ArrayList<TilePoint[]> arrayList, com.ifengyu.intercom.greendao.dao.b bVar) {
        this.f6486c.put(aVar.b(), new b(aVar, bVar));
        e.a().execute(new a(aVar, arrayList, bVar));
    }

    public void a(com.ifengyu.intercom.greendao.dao.b bVar, com.ifengyu.intercom.greendao.bean.a aVar) {
        MiTalkiApp.b().g().c().update(aVar);
    }

    public void a(c cVar) {
        this.f6484a.add(cVar);
    }

    public List<com.ifengyu.intercom.greendao.bean.a> a() {
        return this.d;
    }
}
