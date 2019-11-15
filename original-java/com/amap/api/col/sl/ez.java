package com.amap.api.col.sl;

import java.util.ArrayList;
import java.util.HashMap;

/* compiled from: CellAgeEstimator */
public final class ez {
    private HashMap<Long, fa> a = new HashMap<>();
    private long b = 0;

    public final long a(fa faVar) {
        long a2;
        if (faVar == null || !faVar.o) {
            return 0;
        }
        HashMap<Long, fa> hashMap = this.a;
        switch (faVar.k) {
            case 1:
            case 3:
            case 4:
                a2 = a(faVar.a(), faVar.b());
                break;
            case 2:
                a2 = a(faVar.c(), faVar.d());
                break;
            default:
                a2 = 0;
                break;
        }
        fa faVar2 = (fa) hashMap.get(Long.valueOf(a2));
        if (faVar2 == null) {
            faVar.m = fy.b();
            hashMap.put(Long.valueOf(a2), faVar);
            return 0;
        } else if (faVar2.e() != faVar.e()) {
            faVar.m = fy.b();
            hashMap.put(Long.valueOf(a2), faVar);
            return 0;
        } else {
            faVar.m = faVar2.m;
            hashMap.put(Long.valueOf(a2), faVar);
            return (fy.b() - faVar2.m) / 1000;
        }
    }

    public final void a(ArrayList<? extends fa> arrayList) {
        long j = 0;
        if (arrayList != null) {
            long b2 = fy.b();
            if (this.b <= 0 || b2 - this.b >= 60000) {
                HashMap<Long, fa> hashMap = this.a;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    fa faVar = (fa) arrayList.get(i);
                    if (faVar.o) {
                        switch (faVar.k) {
                            case 1:
                            case 3:
                            case 4:
                                j = a(faVar.c, faVar.d);
                                break;
                            case 2:
                                j = a(faVar.h, faVar.i);
                                break;
                        }
                        fa faVar2 = (fa) hashMap.get(Long.valueOf(j));
                        if (faVar2 != null) {
                            if (faVar2.e() == faVar.e()) {
                                faVar.m = faVar2.m;
                            } else {
                                faVar.m = b2;
                            }
                        }
                    }
                    i++;
                    j = j;
                }
                hashMap.clear();
                int size2 = arrayList.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    fa faVar3 = (fa) arrayList.get(i2);
                    if (faVar3.o) {
                        switch (faVar3.k) {
                            case 1:
                            case 3:
                            case 4:
                                j = a(faVar3.a(), faVar3.b());
                                break;
                            case 2:
                                j = a(faVar3.c(), faVar3.d());
                                break;
                        }
                        hashMap.put(Long.valueOf(j), faVar3);
                    }
                }
                this.b = b2;
            }
        }
    }

    public final void a() {
        this.a.clear();
        this.b = 0;
    }

    private static long a(int i, int i2) {
        return ((((long) i) & 65535) << 32) | (((long) i2) & 65535);
    }
}
