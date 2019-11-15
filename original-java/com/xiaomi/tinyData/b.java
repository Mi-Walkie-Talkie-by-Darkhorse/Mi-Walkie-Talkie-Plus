package com.xiaomi.tinyData;

import com.xiaomi.xmpush.thrift.e;
import java.util.ArrayList;
import java.util.Iterator;

public class b implements Runnable {
    d a;
    String b;

    public b(d dVar) {
        this.a = dVar;
    }

    private void a(ArrayList<e> arrayList, e eVar, String str, String str2) {
        com.xiaomi.channel.commonutils.logger.b.c("TinyDataManager is checking and uploading tiny data for " + str + ", the size is " + arrayList.size());
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            e eVar2 = (e) it.next();
            if (eVar.a(eVar2, str)) {
                arrayList2.add(eVar2);
            }
        }
        if (arrayList2.size() != 0) {
            eVar.a(arrayList2, str, str2);
            Iterator it2 = arrayList2.iterator();
            while (it2.hasNext()) {
                e eVar3 = (e) it2.next();
                com.xiaomi.channel.commonutils.logger.b.c("Pending Data " + eVar3.toString() + " uploaded by TinyDataManager, reason is " + this.b);
                arrayList.remove(eVar3);
            }
        }
    }

    public void run() {
        com.xiaomi.channel.commonutils.logger.b.c("TinyDataManager is checking and uploading tiny data, reason is " + this.b);
        e b2 = this.a.b();
        if (b2 != null) {
            for (String str : this.a.d().keySet()) {
                a((ArrayList) this.a.d().get(str), b2, str, str);
            }
            for (String str2 : this.a.e().keySet()) {
                a((ArrayList) this.a.e().get(str2), b2, "com.xiaomi.xmsf", str2);
            }
        }
    }
}
