package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Handler;
import com.amap.api.maps.offlinemap.OfflineMapCity;
import com.amap.api.maps.offlinemap.OfflineMapProvince;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: OfflineMapDownloadList */
public class ar {
    public ArrayList<OfflineMapProvince> a = new ArrayList<>();
    private bc b;
    private Context c;
    private Handler d;

    public ar(Context context, Handler handler) {
        this.c = context;
        this.d = handler;
        this.b = bc.a(context);
    }

    private void a(ax axVar) {
        if (this.b != null && axVar != null) {
            this.b.a(axVar);
        }
    }

    private void b(ax axVar) {
        if (this.b != null) {
            this.b.b(axVar);
        }
    }

    private boolean a(int i, int i2) {
        return i2 != 1 || i <= 2 || i >= 98;
    }

    private boolean b(int i) {
        if (i == 4) {
            return true;
        }
        return false;
    }

    private boolean a(OfflineMapProvince offlineMapProvince) {
        if (offlineMapProvince == null) {
            return false;
        }
        Iterator it = offlineMapProvince.getCityList().iterator();
        while (it.hasNext()) {
            if (((OfflineMapCity) it.next()).getState() != 4) {
                return false;
            }
        }
        return true;
    }

    public ArrayList<OfflineMapProvince> a() {
        ArrayList<OfflineMapProvince> arrayList = new ArrayList<>();
        synchronized (this.a) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                arrayList.add((OfflineMapProvince) it.next());
            }
        }
        return arrayList;
    }

    public OfflineMapCity a(String str) {
        if (str == null || str.equals("")) {
            return null;
        }
        synchronized (this.a) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                Iterator it2 = ((OfflineMapProvince) it.next()).getCityList().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        OfflineMapCity offlineMapCity = (OfflineMapCity) it2.next();
                        if (offlineMapCity.getCode().equals(str)) {
                            return offlineMapCity;
                        }
                    }
                }
            }
            return null;
        }
    }

    public OfflineMapCity b(String str) {
        if (str == null || str.equals("")) {
            return null;
        }
        synchronized (this.a) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                Iterator it2 = ((OfflineMapProvince) it.next()).getCityList().iterator();
                while (true) {
                    if (it2.hasNext()) {
                        OfflineMapCity offlineMapCity = (OfflineMapCity) it2.next();
                        if (offlineMapCity.getCity().trim().equalsIgnoreCase(str.trim())) {
                            return offlineMapCity;
                        }
                    }
                }
            }
            return null;
        }
    }

    public OfflineMapProvince c(String str) {
        if (str == null || str.equals("")) {
            return null;
        }
        synchronized (this.a) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                OfflineMapProvince offlineMapProvince = (OfflineMapProvince) it.next();
                if (offlineMapProvince.getProvinceName().trim().equalsIgnoreCase(str.trim())) {
                    return offlineMapProvince;
                }
            }
            return null;
        }
    }

    public ArrayList<OfflineMapCity> b() {
        ArrayList<OfflineMapCity> arrayList = new ArrayList<>();
        synchronized (this.a) {
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                Iterator it2 = ((OfflineMapProvince) it.next()).getCityList().iterator();
                while (it2.hasNext()) {
                    arrayList.add((OfflineMapCity) it2.next());
                }
            }
        }
        return arrayList;
    }

    public void a(List<OfflineMapProvince> list) {
        OfflineMapProvince offlineMapProvince;
        OfflineMapCity offlineMapCity;
        synchronized (this.a) {
            if (this.a.size() > 0) {
                for (int i = 0; i < this.a.size(); i++) {
                    OfflineMapProvince offlineMapProvince2 = (OfflineMapProvince) this.a.get(i);
                    Iterator it = list.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            offlineMapProvince = null;
                            break;
                        }
                        offlineMapProvince = (OfflineMapProvince) it.next();
                        if (offlineMapProvince2.getPinyin().equals(offlineMapProvince.getPinyin())) {
                            break;
                        } else if ((offlineMapProvince2.getPinyin().equals("quanguogaiyaotu") || offlineMapProvince2.getProvinceCode().equals("000001") || offlineMapProvince2.getProvinceCode().equals("100000")) && offlineMapProvince.getPinyin().equals("quanguogaiyaotu")) {
                            break;
                        }
                    }
                    if (offlineMapProvince != null) {
                        a(offlineMapProvince2, offlineMapProvince);
                        ArrayList cityList = offlineMapProvince2.getCityList();
                        ArrayList cityList2 = offlineMapProvince.getCityList();
                        for (int i2 = 0; i2 < cityList.size(); i2++) {
                            OfflineMapCity offlineMapCity2 = (OfflineMapCity) cityList.get(i2);
                            Iterator it2 = cityList2.iterator();
                            while (true) {
                                if (!it2.hasNext()) {
                                    offlineMapCity = null;
                                    break;
                                }
                                offlineMapCity = (OfflineMapCity) it2.next();
                                if (offlineMapCity2.getPinyin().equals(offlineMapCity.getPinyin())) {
                                    break;
                                }
                            }
                            if (offlineMapCity != null) {
                                a(offlineMapCity2, offlineMapCity);
                            }
                        }
                    }
                }
            } else {
                for (OfflineMapProvince add : list) {
                    this.a.add(add);
                }
            }
        }
    }

    private void a(OfflineMapCity offlineMapCity, OfflineMapCity offlineMapCity2) {
        offlineMapCity.setUrl(offlineMapCity2.getUrl());
        offlineMapCity.setVersion(offlineMapCity2.getVersion());
        offlineMapCity.setSize(offlineMapCity2.getSize());
        offlineMapCity.setCode(offlineMapCity2.getCode());
        offlineMapCity.setPinyin(offlineMapCity2.getPinyin());
        offlineMapCity.setJianpin(offlineMapCity2.getJianpin());
    }

    private void a(OfflineMapProvince offlineMapProvince, OfflineMapProvince offlineMapProvince2) {
        offlineMapProvince.setUrl(offlineMapProvince2.getUrl());
        offlineMapProvince.setVersion(offlineMapProvince2.getVersion());
        offlineMapProvince.setSize(offlineMapProvince2.getSize());
        offlineMapProvince.setPinyin(offlineMapProvince2.getPinyin());
        offlineMapProvince.setJianpin(offlineMapProvince2.getJianpin());
    }

    public ArrayList<OfflineMapCity> c() {
        ArrayList<OfflineMapCity> arrayList;
        synchronized (this.a) {
            arrayList = new ArrayList<>();
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                OfflineMapProvince offlineMapProvince = (OfflineMapProvince) it.next();
                if (offlineMapProvince != null) {
                    for (OfflineMapCity offlineMapCity : offlineMapProvince.getCityList()) {
                        if (offlineMapCity.getState() == 4 || offlineMapCity.getState() == 7) {
                            arrayList.add(offlineMapCity);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public ArrayList<OfflineMapProvince> d() {
        ArrayList<OfflineMapProvince> arrayList;
        synchronized (this.a) {
            arrayList = new ArrayList<>();
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                OfflineMapProvince offlineMapProvince = (OfflineMapProvince) it.next();
                if (offlineMapProvince != null && (offlineMapProvince.getState() == 4 || offlineMapProvince.getState() == 7)) {
                    arrayList.add(offlineMapProvince);
                }
            }
        }
        return arrayList;
    }

    public ArrayList<OfflineMapCity> e() {
        ArrayList<OfflineMapCity> arrayList;
        synchronized (this.a) {
            arrayList = new ArrayList<>();
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                OfflineMapProvince offlineMapProvince = (OfflineMapProvince) it.next();
                if (offlineMapProvince != null) {
                    for (OfflineMapCity offlineMapCity : offlineMapProvince.getCityList()) {
                        if (a(offlineMapCity.getState())) {
                            arrayList.add(offlineMapCity);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    public ArrayList<OfflineMapProvince> f() {
        ArrayList<OfflineMapProvince> arrayList;
        synchronized (this.a) {
            arrayList = new ArrayList<>();
            Iterator it = this.a.iterator();
            while (it.hasNext()) {
                OfflineMapProvince offlineMapProvince = (OfflineMapProvince) it.next();
                if (offlineMapProvince != null && a(offlineMapProvince.getState())) {
                    arrayList.add(offlineMapProvince);
                }
            }
        }
        return arrayList;
    }

    public boolean a(int i) {
        return i == 0 || i == 2 || i == 3 || i == 1 || i == 102 || i == 101 || i == 103 || i == -1;
    }

    public void a(am amVar) {
        String pinyin = amVar.getPinyin();
        synchronized (this.a) {
            Iterator it = this.a.iterator();
            loop0:
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                OfflineMapProvince offlineMapProvince = (OfflineMapProvince) it.next();
                if (offlineMapProvince != null) {
                    for (OfflineMapCity offlineMapCity : offlineMapProvince.getCityList()) {
                        if (offlineMapCity.getPinyin().trim().equals(pinyin.trim())) {
                            a(amVar, offlineMapCity);
                            a(amVar, offlineMapProvince);
                            break loop0;
                        }
                    }
                    continue;
                }
            }
        }
    }

    private void a(am amVar, OfflineMapCity offlineMapCity) {
        int b2 = amVar.c().b();
        if (amVar.c().equals(amVar.a)) {
            b(amVar.x());
        } else {
            if (amVar.c().equals(amVar.f)) {
                bk.a("saveJSONObjectToFile  CITY " + amVar.getCity());
                b(amVar);
                amVar.x().c();
            }
            if (a(amVar.getcompleteCode(), amVar.c().b())) {
                a(amVar.x());
            }
        }
        offlineMapCity.setState(b2);
        offlineMapCity.setCompleteCode(amVar.getcompleteCode());
    }

    private void b(am amVar) {
        File[] listFiles = new File(ee.b(this.c)).listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isFile() && file.exists() && file.getName().contains(amVar.getAdcode()) && file.getName().endsWith(".zip.tmp.dt")) {
                    file.delete();
                }
            }
        }
    }

    private void a(am amVar, OfflineMapProvince offlineMapProvince) {
        ax axVar;
        int b2 = amVar.c().b();
        if (b2 == 6) {
            offlineMapProvince.setState(b2);
            offlineMapProvince.setCompleteCode(0);
            b(new ax(offlineMapProvince, this.c));
            try {
                bk.b(offlineMapProvince.getProvinceCode(), this.c);
            } catch (IOException e) {
                ThrowableExtension.printStackTrace(e);
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        } else if (b(b2) && a(offlineMapProvince)) {
            if (amVar.getPinyin().equals(offlineMapProvince.getPinyin())) {
                offlineMapProvince.setState(b2);
                offlineMapProvince.setCompleteCode(amVar.getcompleteCode());
                offlineMapProvince.setVersion(amVar.getVersion());
                offlineMapProvince.setUrl(amVar.getUrl());
                axVar = new ax(offlineMapProvince, this.c);
                axVar.a(amVar.a());
                axVar.d(amVar.getCode());
            } else {
                offlineMapProvince.setState(b2);
                offlineMapProvince.setCompleteCode(100);
                axVar = new ax(offlineMapProvince, this.c);
            }
            axVar.c();
            a(axVar);
            bk.a("saveJSONObjectToFile  province " + axVar.d());
        }
    }

    public void g() {
        h();
        this.d = null;
        this.b = null;
        this.c = null;
    }

    public void h() {
        if (this.a != null) {
            synchronized (this.a) {
                this.a.clear();
            }
        }
    }
}
