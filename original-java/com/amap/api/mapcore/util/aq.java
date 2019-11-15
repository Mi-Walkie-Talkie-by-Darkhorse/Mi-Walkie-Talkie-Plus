package com.amap.api.mapcore.util;

import android.content.Context;
import com.mi.milinkforgame.sdk.util.FileUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: OfflineMapDataVerify */
public class aq extends Thread {
    private Context a;
    private bc b;

    public aq(Context context) {
        this.a = context;
        this.b = bc.a(context);
    }

    public void run() {
        a();
    }

    private ax a(File file) {
        String a2 = ee.a(file);
        ax axVar = new ax();
        axVar.b(a2);
        return axVar;
    }

    public void destroy() {
        this.a = null;
        this.b = null;
    }

    private void a() {
        boolean z;
        boolean z2;
        ArrayList arrayList = new ArrayList();
        ArrayList a2 = this.b.a();
        a(arrayList, "vmap/");
        a(arrayList, "map/");
        ArrayList b2 = b();
        Iterator it = a2.iterator();
        while (it.hasNext()) {
            ax axVar = (ax) it.next();
            if (!(axVar == null || axVar.d() == null)) {
                if (axVar.l == 4 || axVar.l == 7) {
                    if (!arrayList.contains(axVar.h())) {
                        this.b.b(axVar);
                    }
                } else if (axVar.l == 0 || axVar.l == 1) {
                    if (b2.contains(axVar.f()) || b2.contains(axVar.h())) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z) {
                        this.b.b(axVar);
                    }
                } else if (axVar.l == 3 && axVar.g() != 0) {
                    if (b2.contains(axVar.f()) || b2.contains(axVar.h())) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (!z2) {
                        this.b.b(axVar);
                    }
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            String str = (String) it2.next();
            if (!a(str, a2)) {
                ax a3 = a(str);
                if (a3 != null) {
                    this.b.a(a3);
                }
            }
        }
        an a4 = an.a(this.a);
        if (a4 != null) {
            a4.a(null);
        }
    }

    private ax a(String str) {
        ax axVar = null;
        if (str.equals("quanguo")) {
            str = "quanguogaiyaotu";
        }
        an a2 = an.a(this.a);
        if (a2 != null) {
            String f = a2.f(str);
            File[] listFiles = new File(ee.b(this.a)).listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    if ((file.getName().contains(f) || file.getName().contains(str)) && file.getName().endsWith(".zip.tmp.dt")) {
                        axVar = a(file);
                        if (!(axVar == null || axVar.d() == null)) {
                            break;
                        }
                    }
                }
            }
        }
        return axVar;
    }

    private boolean a(String str, ArrayList<ax> arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (str.equals(((ax) it.next()).h())) {
                return true;
            }
        }
        return false;
    }

    private void a(ArrayList<String> arrayList, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(ee.a(this.a));
        sb.append(str);
        File file = new File(sb.toString());
        if (file.exists()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2.getName().endsWith(".dat")) {
                        String name = file2.getName();
                        int lastIndexOf = name.lastIndexOf(46);
                        if (lastIndexOf > -1 && lastIndexOf < name.length()) {
                            String substring = name.substring(0, lastIndexOf);
                            if (!arrayList.contains(substring)) {
                                arrayList.add(substring);
                            }
                        }
                    }
                }
            }
        }
    }

    private ArrayList<String> b() {
        ArrayList<String> arrayList = new ArrayList<>();
        StringBuilder sb = new StringBuilder();
        sb.append(ee.b(this.a));
        File file = new File(sb.toString());
        if (file.exists()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2.getName().endsWith(FileUtils.ZIP_FILE_EXT)) {
                        String name = file2.getName();
                        int lastIndexOf = name.lastIndexOf(46);
                        if (lastIndexOf > -1 && lastIndexOf < name.length()) {
                            arrayList.add(name.substring(0, lastIndexOf));
                        }
                    }
                }
            }
        }
        return arrayList;
    }
}
