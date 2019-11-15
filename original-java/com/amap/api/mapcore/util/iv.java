package com.amap.api.mapcore.util;

import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: CellAgeEstimator */
public final class iv {
    private HashMap<Long, iw> a = new HashMap<>();
    private long b = 0;

    private static long a(int i, int i2) {
        return ((((long) i) & 65535) << 32) | (((long) i2) & 65535);
    }

    public final long a(iw iwVar) {
        long a2;
        if (iwVar == null || !iwVar.o) {
            return 0;
        }
        HashMap<Long, iw> hashMap = this.a;
        switch (iwVar.k) {
            case 1:
            case 3:
            case 4:
                a2 = a(iwVar.a(), iwVar.b());
                break;
            case 2:
                a2 = a(iwVar.c(), iwVar.d());
                break;
            default:
                a2 = 0;
                break;
        }
        iw iwVar2 = (iw) hashMap.get(Long.valueOf(a2));
        if (iwVar2 == null) {
            iwVar.m = jg.b();
            hashMap.put(Long.valueOf(a2), iwVar);
            return 0;
        } else if (iwVar2.e() != iwVar.e()) {
            iwVar.m = jg.b();
            hashMap.put(Long.valueOf(a2), iwVar);
            return 0;
        } else {
            iwVar.m = iwVar2.m;
            hashMap.put(Long.valueOf(a2), iwVar);
            return (jg.b() - iwVar2.m) / 1000;
        }
    }

    public final void a() {
        this.a.clear();
        this.b = 0;
    }

    public final void a(ArrayList<? extends iw> arrayList) {
        long j = 0;
        if (arrayList != null) {
            long b2 = jg.b();
            if (this.b <= 0 || b2 - this.b >= 60000) {
                HashMap<Long, iw> hashMap = this.a;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    iw iwVar = (iw) arrayList.get(i);
                    if (iwVar.o) {
                        switch (iwVar.k) {
                            case 1:
                            case 3:
                            case 4:
                                j = a(iwVar.c, iwVar.d);
                                break;
                            case 2:
                                j = a(iwVar.h, iwVar.i);
                                break;
                        }
                        iw iwVar2 = (iw) hashMap.get(Long.valueOf(j));
                        if (iwVar2 != null) {
                            if (iwVar2.e() == iwVar.e()) {
                                iwVar.m = iwVar2.m;
                            } else {
                                iwVar.m = b2;
                            }
                        }
                    }
                }
                hashMap.clear();
                int size2 = arrayList.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    iw iwVar3 = (iw) arrayList.get(i2);
                    if (iwVar3.o) {
                        switch (iwVar3.k) {
                            case 1:
                            case 3:
                            case 4:
                                j = a(iwVar3.a(), iwVar3.b());
                                break;
                            case 2:
                                j = a(iwVar3.c(), iwVar3.d());
                                break;
                        }
                        hashMap.put(Long.valueOf(j), iwVar3);
                    }
                }
                this.b = b2;
            }
        }
    }
}
