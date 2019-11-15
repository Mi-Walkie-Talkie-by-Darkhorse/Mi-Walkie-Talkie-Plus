package com.amap.api.maps.offlinemap;

import android.content.Context;
import android.os.Handler;
import com.amap.api.mapcore.util.am;
import com.amap.api.mapcore.util.an;
import com.amap.api.mapcore.util.an.a;
import com.amap.api.mapcore.util.ar;
import com.amap.api.mapcore.util.ee;
import com.amap.api.mapcore.util.gf;
import com.amap.api.maps.AMap;
import com.amap.api.maps.AMapException;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.ArrayList;
import java.util.Iterator;

public final class OfflineMapManager {
    ar a;
    an b;
    private Context c;
    /* access modifiers changed from: private */
    public OfflineMapDownloadListener d;
    /* access modifiers changed from: private */
    public OfflineLoadedListener e;
    /* access modifiers changed from: private */
    public Handler f = new Handler(this.c.getMainLooper());
    private Handler g = new Handler(this.c.getMainLooper());

    public interface OfflineLoadedListener {
        void onVerifyComplete();
    }

    public interface OfflineMapDownloadListener {
        void onCheckUpdate(boolean z, String str);

        void onDownload(int i, int i2, String str);

        void onRemove(boolean z, String str, String str2);
    }

    public OfflineMapManager(Context context, OfflineMapDownloadListener offlineMapDownloadListener) {
        this.d = offlineMapDownloadListener;
        this.c = context.getApplicationContext();
        a(context);
    }

    public OfflineMapManager(Context context, OfflineMapDownloadListener offlineMapDownloadListener, AMap aMap) {
        this.d = offlineMapDownloadListener;
        this.c = context.getApplicationContext();
        try {
            a(context);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    private void a(Context context) {
        this.c = context.getApplicationContext();
        an.b = false;
        this.b = an.a(this.c);
        this.b.a((a) new a() {
            public void a(final am amVar) {
                if (OfflineMapManager.this.d != null && amVar != null) {
                    OfflineMapManager.this.f.post(new Runnable() {
                        public void run() {
                            try {
                                OfflineMapManager.this.d.onDownload(amVar.c().b(), amVar.getcompleteCode(), amVar.getCity());
                            } catch (Throwable th) {
                                ThrowableExtension.printStackTrace(th);
                            }
                        }
                    });
                }
            }

            public void b(final am amVar) {
                if (OfflineMapManager.this.d != null && amVar != null) {
                    OfflineMapManager.this.f.post(new Runnable() {
                        public void run() {
                            try {
                                if (amVar.c().equals(amVar.g) || amVar.c().equals(amVar.a)) {
                                    OfflineMapManager.this.d.onCheckUpdate(true, amVar.getCity());
                                } else {
                                    OfflineMapManager.this.d.onCheckUpdate(false, amVar.getCity());
                                }
                            } catch (Throwable th) {
                                ThrowableExtension.printStackTrace(th);
                            }
                        }
                    });
                }
            }

            public void c(final am amVar) {
                if (OfflineMapManager.this.d != null && amVar != null) {
                    OfflineMapManager.this.f.post(new Runnable() {
                        public void run() {
                            try {
                                if (amVar.c().equals(amVar.a)) {
                                    OfflineMapManager.this.d.onRemove(true, amVar.getCity(), "");
                                } else {
                                    OfflineMapManager.this.d.onRemove(false, amVar.getCity(), "");
                                }
                            } catch (Throwable th) {
                                ThrowableExtension.printStackTrace(th);
                            }
                        }
                    });
                }
            }

            public void a() {
                if (OfflineMapManager.this.e != null) {
                    OfflineMapManager.this.f.post(new Runnable() {
                        public void run() {
                            try {
                                OfflineMapManager.this.e.onVerifyComplete();
                            } catch (Throwable th) {
                                ThrowableExtension.printStackTrace(th);
                            }
                        }
                    });
                }
            }
        });
        try {
            this.b.a();
            this.a = this.b.f;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void downloadByCityCode(String str) throws AMapException {
        try {
            this.b.e(str);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void downloadByCityName(String str) throws AMapException {
        try {
            this.b.d(str);
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public void downloadByProvinceName(String str) throws AMapException {
        try {
            a();
            OfflineMapProvince itemByProvinceName = getItemByProvinceName(str);
            if (itemByProvinceName == null) {
                throw new AMapException("无效的参数 - IllegalArgumentException");
            }
            Iterator it = itemByProvinceName.getCityList().iterator();
            while (it.hasNext()) {
                final String city = ((OfflineMapCity) it.next()).getCity();
                this.g.post(new Runnable() {
                    public void run() {
                        try {
                            OfflineMapManager.this.b.d(city);
                        } catch (AMapException e) {
                            gf.b((Throwable) e, "OfflineMapManager", "downloadByProvinceName");
                        }
                    }
                });
            }
        } catch (Throwable th) {
            if (th instanceof AMapException) {
                throw ((AMapException) th);
            }
            gf.b(th, "OfflineMapManager", "downloadByProvinceName");
        }
    }

    public void remove(String str) {
        try {
            if (this.b.b(str)) {
                this.b.c(str);
                return;
            }
            OfflineMapProvince c2 = this.a.c(str);
            if (c2 != null && c2.getCityList() != null) {
                Iterator it = c2.getCityList().iterator();
                while (it.hasNext()) {
                    final String city = ((OfflineMapCity) it.next()).getCity();
                    this.g.post(new Runnable() {
                        public void run() {
                            OfflineMapManager.this.b.c(city);
                        }
                    });
                }
            } else if (this.d != null) {
                this.d.onRemove(false, str, "没有该城市");
            }
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    public ArrayList<OfflineMapProvince> getOfflineMapProvinceList() {
        return this.a.a();
    }

    public OfflineMapCity getItemByCityCode(String str) {
        return this.a.a(str);
    }

    public OfflineMapCity getItemByCityName(String str) {
        return this.a.b(str);
    }

    public OfflineMapProvince getItemByProvinceName(String str) {
        return this.a.c(str);
    }

    public ArrayList<OfflineMapCity> getOfflineMapCityList() {
        return this.a.b();
    }

    public ArrayList<OfflineMapCity> getDownloadingCityList() {
        return this.a.e();
    }

    public ArrayList<OfflineMapProvince> getDownloadingProvinceList() {
        return this.a.f();
    }

    public ArrayList<OfflineMapCity> getDownloadOfflineMapCityList() {
        return this.a.c();
    }

    public ArrayList<OfflineMapProvince> getDownloadOfflineMapProvinceList() {
        return this.a.d();
    }

    private void a(String str, String str2) throws AMapException {
        this.b.a(str);
    }

    public void updateOfflineCityByCode(String str) throws AMapException {
        OfflineMapCity itemByCityCode = getItemByCityCode(str);
        if (itemByCityCode == null || itemByCityCode.getCity() == null) {
            throw new AMapException("无效的参数 - IllegalArgumentException");
        }
        a(itemByCityCode.getCity(), "cityname");
    }

    public void updateOfflineCityByName(String str) throws AMapException {
        a(str, "cityname");
    }

    public void updateOfflineMapProvinceByName(String str) throws AMapException {
        a(str, "cityname");
    }

    private void a() throws AMapException {
        if (!ee.c(this.c)) {
            throw new AMapException(AMapException.ERROR_CONNECTION);
        }
    }

    public void restart() {
    }

    public void stop() {
        this.b.c();
    }

    public void pause() {
        this.b.d();
    }

    public void destroy() {
        try {
            if (this.b != null) {
                this.b.e();
            }
            b();
            if (this.f != null) {
                this.f.removeCallbacksAndMessages(null);
            }
            this.f = null;
            if (this.g != null) {
                this.g.removeCallbacksAndMessages(null);
            }
            this.g = null;
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    private void b() {
        this.d = null;
    }

    public void setOnOfflineLoadedListener(OfflineLoadedListener offlineLoadedListener) {
        this.e = offlineLoadedListener;
    }
}
