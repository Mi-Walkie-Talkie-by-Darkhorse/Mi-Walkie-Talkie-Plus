package io.reactivex.internal.util;

import io.reactivex.disposables.b;
import io.reactivex.internal.a.g;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.queue.a;
import io.reactivex.q;

/* compiled from: QueueDrainHelper */
public final class k {
    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0031, code lost:
        r0 = r14.a(-r7);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0036, code lost:
        if (r0 == 0) goto L_0x0015;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0038, code lost:
        r7 = r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static <T, U> void a(io.reactivex.internal.a.f<T> r10, io.reactivex.q<? super U> r11, boolean r12, io.reactivex.disposables.b r13, io.reactivex.internal.util.h<T, U> r14) {
        /*
            r8 = 1
            r7 = r8
        L_0x0002:
            boolean r0 = r14.b()
            boolean r1 = r10.b()
            r2 = r11
            r3 = r12
            r4 = r10
            r5 = r13
            r6 = r14
            boolean r0 = a(r0, r1, r2, r3, r4, r5, r6)
            if (r0 == 0) goto L_0x0019
        L_0x0015:
            return
        L_0x0016:
            r14.a(r11, r9)
        L_0x0019:
            boolean r0 = r14.b()
            java.lang.Object r9 = r10.e_()
            if (r9 != 0) goto L_0x003a
            r1 = r8
        L_0x0024:
            r2 = r11
            r3 = r12
            r4 = r10
            r5 = r13
            r6 = r14
            boolean r0 = a(r0, r1, r2, r3, r4, r5, r6)
            if (r0 != 0) goto L_0x0015
            if (r1 == 0) goto L_0x0016
            int r0 = -r7
            int r0 = r14.a(r0)
            if (r0 == 0) goto L_0x0015
            r7 = r0
            goto L_0x0002
        L_0x003a:
            r1 = 0
            goto L_0x0024
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.util.k.a(io.reactivex.internal.a.f, io.reactivex.q, boolean, io.reactivex.disposables.b, io.reactivex.internal.util.h):void");
    }

    public static <T, U> boolean a(boolean z, boolean z2, q<?> qVar, boolean z3, g<?> gVar, b bVar, h<T, U> hVar) {
        if (hVar.a()) {
            gVar.c();
            bVar.dispose();
            return true;
        }
        if (z) {
            if (!z3) {
                Throwable e = hVar.e();
                if (e != null) {
                    gVar.c();
                    bVar.dispose();
                    qVar.onError(e);
                    return true;
                } else if (z2) {
                    bVar.dispose();
                    qVar.onComplete();
                    return true;
                }
            } else if (z2) {
                bVar.dispose();
                Throwable e2 = hVar.e();
                if (e2 != null) {
                    qVar.onError(e2);
                    return true;
                }
                qVar.onComplete();
                return true;
            }
        }
        return false;
    }

    public static <T> g<T> a(int i) {
        if (i < 0) {
            return new a(-i);
        }
        return new SpscArrayQueue(i);
    }
}
