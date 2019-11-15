package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.support.annotation.ColorInt;
import android.support.annotation.Nullable;
import android.util.Log;
import com.bumptech.glide.gifdecoder.GifDecoder.a;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

/* compiled from: StandardGifDecoder */
public class c implements GifDecoder {
    private static final String a = c.class.getSimpleName();
    @ColorInt
    private int[] b;
    @ColorInt
    private final int[] c;
    private ByteBuffer d;
    private byte[] e;
    @Nullable
    private byte[] f;
    private int g;
    private int h;
    private short[] i;
    private byte[] j;
    private byte[] k;
    private byte[] l;
    @ColorInt
    private int[] m;
    private int n;
    private a o;
    private a p;
    private Bitmap q;
    private boolean r;
    private int s;
    private int t;
    private int u;
    private int v;
    private boolean w;

    public c(a aVar, a aVar2, ByteBuffer byteBuffer, int i2) {
        this(aVar);
        a(aVar2, byteBuffer, i2);
    }

    public c(a aVar) {
        this.c = new int[256];
        this.g = 0;
        this.h = 0;
        this.p = aVar;
        this.o = new a();
    }

    public ByteBuffer a() {
        return this.d;
    }

    public void b() {
        this.n = (this.n + 1) % this.o.c;
    }

    public int a(int i2) {
        if (i2 < 0 || i2 >= this.o.c) {
            return -1;
        }
        return ((GifFrame) this.o.e.get(i2)).i;
    }

    public int c() {
        if (this.o.c <= 0 || this.n < 0) {
            return 0;
        }
        return a(this.n);
    }

    public int d() {
        return this.o.c;
    }

    public int e() {
        return this.n;
    }

    public void f() {
        this.n = -1;
    }

    public int g() {
        return this.d.limit() + this.l.length + (this.m.length * 4);
    }

    public synchronized Bitmap h() {
        Bitmap bitmap;
        GifFrame gifFrame;
        int[] iArr;
        if (this.o.c <= 0 || this.n < 0) {
            if (Log.isLoggable(a, 3)) {
                Log.d(a, "Unable to decode frame, frameCount=" + this.o.c + ", framePointer=" + this.n);
            }
            this.s = 1;
        }
        if (this.s == 1 || this.s == 2) {
            if (Log.isLoggable(a, 3)) {
                Log.d(a, "Unable to decode frame, status=" + this.s);
            }
            bitmap = null;
        } else {
            this.s = 0;
            GifFrame gifFrame2 = (GifFrame) this.o.e.get(this.n);
            int i2 = this.n - 1;
            if (i2 >= 0) {
                gifFrame = (GifFrame) this.o.e.get(i2);
            } else {
                gifFrame = null;
            }
            if (gifFrame2.k != null) {
                iArr = gifFrame2.k;
            } else {
                iArr = this.o.a;
            }
            this.b = iArr;
            if (this.b == null) {
                if (Log.isLoggable(a, 3)) {
                    Log.d(a, "No valid color table found for frame #" + this.n);
                }
                this.s = 1;
                bitmap = null;
            } else {
                if (gifFrame2.f) {
                    System.arraycopy(this.b, 0, this.c, 0, this.b.length);
                    this.b = this.c;
                    this.b[gifFrame2.h] = 0;
                }
                bitmap = a(gifFrame2, gifFrame);
            }
        }
        return bitmap;
    }

    public void i() {
        this.o = null;
        if (this.l != null) {
            this.p.a(this.l);
        }
        if (this.m != null) {
            this.p.a(this.m);
        }
        if (this.q != null) {
            this.p.a(this.q);
        }
        this.q = null;
        this.d = null;
        this.w = false;
        if (this.e != null) {
            this.p.a(this.e);
        }
        if (this.f != null) {
            this.p.a(this.f);
        }
    }

    public synchronized void a(a aVar, ByteBuffer byteBuffer, int i2) {
        if (i2 <= 0) {
            throw new IllegalArgumentException("Sample size must be >=0, not: " + i2);
        }
        int highestOneBit = Integer.highestOneBit(i2);
        this.s = 0;
        this.o = aVar;
        this.w = false;
        this.n = -1;
        this.d = byteBuffer.asReadOnlyBuffer();
        this.d.position(0);
        this.d.order(ByteOrder.LITTLE_ENDIAN);
        this.r = false;
        Iterator it = aVar.e.iterator();
        while (true) {
            if (it.hasNext()) {
                if (((GifFrame) it.next()).g == 3) {
                    this.r = true;
                    break;
                }
            } else {
                break;
            }
        }
        this.t = highestOneBit;
        this.v = aVar.f / highestOneBit;
        this.u = aVar.g / highestOneBit;
        this.l = this.p.a(aVar.f * aVar.g);
        this.m = this.p.b(this.v * this.u);
    }

    private Bitmap a(GifFrame gifFrame, GifFrame gifFrame2) {
        int i2;
        int i3;
        int i4;
        int a2;
        int[] iArr = this.m;
        if (gifFrame2 == null) {
            Arrays.fill(iArr, 0);
        }
        if (gifFrame2 != null && gifFrame2.g > 0) {
            if (gifFrame2.g == 2) {
                int i5 = 0;
                if (!gifFrame.f) {
                    i5 = this.o.l;
                    if (gifFrame.k != null && this.o.j == gifFrame.h) {
                        i5 = 0;
                    }
                } else if (this.n == 0) {
                    this.w = true;
                }
                int i6 = gifFrame2.c / this.t;
                int i7 = ((gifFrame2.b / this.t) * this.v) + (gifFrame2.a / this.t);
                int i8 = i7 + ((gifFrame2.d / this.t) * this.v);
                while (i7 < i8) {
                    int i9 = i7 + i6;
                    for (int i10 = i7; i10 < i9; i10++) {
                        iArr[i10] = i5;
                    }
                    i7 += this.v;
                }
            } else if (gifFrame2.g == 3 && this.q != null) {
                this.q.getPixels(iArr, 0, this.v, 0, 0, this.v, this.u);
            }
        }
        a(gifFrame);
        int i11 = gifFrame.d / this.t;
        int i12 = gifFrame.b / this.t;
        int i13 = gifFrame.c / this.t;
        int i14 = gifFrame.a / this.t;
        int i15 = 1;
        int i16 = 8;
        int i17 = 0;
        boolean z = this.n == 0;
        int i18 = 0;
        while (i18 < i11) {
            if (gifFrame.e) {
                if (i17 >= i11) {
                    i15++;
                    switch (i15) {
                        case 2:
                            i17 = 4;
                            break;
                        case 3:
                            i17 = 2;
                            i16 = 4;
                            break;
                        case 4:
                            i17 = 1;
                            i16 = 2;
                            break;
                    }
                }
                i2 = i15;
                i3 = i16;
                i4 = i17 + i16;
            } else {
                i2 = i15;
                i3 = i16;
                i4 = i17;
                i17 = i18;
            }
            int i19 = i17 + i12;
            if (i19 < this.u) {
                int i20 = this.v * i19;
                int i21 = i20 + i14;
                int i22 = i21 + i13;
                if (this.v + i20 < i22) {
                    i22 = this.v + i20;
                }
                int i23 = this.t * i18 * gifFrame.c;
                int i24 = i23 + ((i22 - i21) * this.t);
                int i25 = i21;
                int i26 = i23;
                while (i25 < i22) {
                    if (this.t == 1) {
                        a2 = this.b[this.l[i26] & 255];
                    } else {
                        a2 = a(i26, i24, gifFrame.c);
                    }
                    if (a2 != 0) {
                        iArr[i25] = a2;
                    } else if (!this.w && z) {
                        this.w = true;
                    }
                    i25++;
                    i26 = this.t + i26;
                }
            }
            i18++;
            i17 = i4;
            i16 = i3;
            i15 = i2;
        }
        if (this.r && (gifFrame.g == 0 || gifFrame.g == 1)) {
            if (this.q == null) {
                this.q = m();
            }
            this.q.setPixels(iArr, 0, this.v, 0, 0, this.v, this.u);
        }
        Bitmap m2 = m();
        m2.setPixels(iArr, 0, this.v, 0, 0, this.v, this.u);
        return m2;
    }

    @ColorInt
    private int a(int i2, int i3, int i4) {
        int i5 = i2;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        int i10 = 0;
        while (i5 < this.t + i2 && i5 < this.l.length && i5 < i3) {
            int i11 = this.b[this.l[i5] & 255];
            if (i11 != 0) {
                i10 += (i11 >> 24) & 255;
                i9 += (i11 >> 16) & 255;
                i8 += (i11 >> 8) & 255;
                i7 += i11 & 255;
                i6++;
            }
            i5++;
        }
        int i12 = i2 + i4;
        while (i12 < i2 + i4 + this.t && i12 < this.l.length && i12 < i3) {
            int i13 = this.b[this.l[i12] & 255];
            if (i13 != 0) {
                i10 += (i13 >> 24) & 255;
                i9 += (i13 >> 16) & 255;
                i8 += (i13 >> 8) & 255;
                i7 += i13 & 255;
                i6++;
            }
            i12++;
        }
        if (i6 == 0) {
            return 0;
        }
        return ((i10 / i6) << 24) | ((i9 / i6) << 16) | ((i8 / i6) << 8) | (i7 / i6);
    }

    /* JADX WARNING: type inference failed for: r6v6 */
    /* JADX WARNING: type inference failed for: r6v9 */
    /* JADX WARNING: type inference failed for: r8v15, types: [short[]] */
    /* JADX WARNING: type inference failed for: r8v16, types: [short] */
    /* JADX WARNING: type inference failed for: r9v12 */
    /* JADX WARNING: type inference failed for: r6v24 */
    /* JADX WARNING: Incorrect type for immutable var: ssa=short, code=null, for r8v16, types: [short] */
    /* JADX WARNING: Incorrect type for immutable var: ssa=short[], code=null, for r8v15, types: [short[]] */
    /* JADX WARNING: Multi-variable type inference failed. Error: jadx.core.utils.exceptions.JadxRuntimeException: No candidate types for var: r6v6
  assigns: []
  uses: []
  mth insns count: 244
    	at jadx.core.dex.visitors.typeinference.TypeSearch.fillTypeCandidates(TypeSearch.java:237)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.typeinference.TypeSearch.run(TypeSearch.java:53)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.runMultiVariableSearch(TypeInferenceVisitor.java:99)
    	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:92)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:27)
    	at jadx.core.dex.visitors.DepthTraversal.lambda$visit$1(DepthTraversal.java:14)
    	at java.util.ArrayList.forEach(Unknown Source)
    	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
    	at jadx.core.ProcessClass.process(ProcessClass.java:30)
    	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:311)
    	at jadx.api.JavaClass.decompile(JavaClass.java:62)
    	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:217)
     */
    /* JADX WARNING: Unknown variable types count: 3 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void a(com.bumptech.glide.gifdecoder.GifFrame r23) {
        /*
            r22 = this;
            r1 = 0
            r0 = r22
            r0.g = r1
            r1 = 0
            r0 = r22
            r0.h = r1
            if (r23 == 0) goto L_0x0017
            r0 = r22
            java.nio.ByteBuffer r1 = r0.d
            r0 = r23
            int r2 = r0.j
            r1.position(r2)
        L_0x0017:
            if (r23 != 0) goto L_0x0091
            r0 = r22
            com.bumptech.glide.gifdecoder.a r1 = r0.o
            int r1 = r1.f
            r0 = r22
            com.bumptech.glide.gifdecoder.a r2 = r0.o
            int r2 = r2.g
            int r1 = r1 * r2
        L_0x0026:
            r0 = r22
            byte[] r2 = r0.l
            if (r2 == 0) goto L_0x0033
            r0 = r22
            byte[] r2 = r0.l
            int r2 = r2.length
            if (r2 >= r1) goto L_0x003f
        L_0x0033:
            r0 = r22
            com.bumptech.glide.gifdecoder.GifDecoder$a r2 = r0.p
            byte[] r2 = r2.a(r1)
            r0 = r22
            r0.l = r2
        L_0x003f:
            r0 = r22
            short[] r2 = r0.i
            if (r2 != 0) goto L_0x004d
            r2 = 4096(0x1000, float:5.74E-42)
            short[] r2 = new short[r2]
            r0 = r22
            r0.i = r2
        L_0x004d:
            r0 = r22
            byte[] r2 = r0.j
            if (r2 != 0) goto L_0x005b
            r2 = 4096(0x1000, float:5.74E-42)
            byte[] r2 = new byte[r2]
            r0 = r22
            r0.j = r2
        L_0x005b:
            r0 = r22
            byte[] r2 = r0.k
            if (r2 != 0) goto L_0x0069
            r2 = 4097(0x1001, float:5.741E-42)
            byte[] r2 = new byte[r2]
            r0 = r22
            r0.k = r2
        L_0x0069:
            int r16 = r22.k()
            r2 = 1
            int r17 = r2 << r16
            int r18 = r17 + 1
            int r4 = r17 + 2
            r10 = -1
            int r2 = r16 + 1
            r3 = 1
            int r3 = r3 << r2
            int r3 = r3 + -1
            r5 = 0
        L_0x007c:
            r0 = r17
            if (r5 >= r0) goto L_0x009b
            r0 = r22
            short[] r6 = r0.i
            r7 = 0
            r6[r5] = r7
            r0 = r22
            byte[] r6 = r0.j
            byte r7 = (byte) r5
            r6[r5] = r7
            int r5 = r5 + 1
            goto L_0x007c
        L_0x0091:
            r0 = r23
            int r1 = r0.c
            r0 = r23
            int r2 = r0.d
            int r1 = r1 * r2
            goto L_0x0026
        L_0x009b:
            r5 = 0
            r7 = 0
            r8 = r5
            r11 = r5
            r6 = r5
            r9 = r2
            r12 = r3
            r13 = r4
            r2 = r5
            r3 = r5
            r4 = r5
        L_0x00a6:
            if (r7 >= r1) goto L_0x00b5
            if (r3 != 0) goto L_0x00c3
            int r3 = r22.l()
            if (r3 > 0) goto L_0x00c2
            r2 = 3
            r0 = r22
            r0.s = r2
        L_0x00b5:
            r2 = r4
        L_0x00b6:
            if (r2 >= r1) goto L_0x01a6
            r0 = r22
            byte[] r3 = r0.l
            r4 = 0
            r3[r2] = r4
            int r2 = r2 + 1
            goto L_0x00b6
        L_0x00c2:
            r2 = 0
        L_0x00c3:
            r0 = r22
            byte[] r14 = r0.e
            byte r14 = r14[r2]
            r14 = r14 & 255(0xff, float:3.57E-43)
            int r14 = r14 << r6
            int r5 = r5 + r14
            int r6 = r6 + 8
            int r14 = r2 + 1
            int r15 = r3 + -1
            r2 = r9
            r3 = r12
            r9 = r11
            r21 = r6
            r6 = r5
            r5 = r4
            r4 = r13
            r13 = r21
        L_0x00dd:
            if (r13 < r2) goto L_0x01b2
            r11 = r6 & r3
            int r12 = r6 >> r2
            int r13 = r13 - r2
            r0 = r17
            if (r11 != r0) goto L_0x00f4
            int r2 = r16 + 1
            r3 = 1
            int r3 = r3 << r2
            int r3 = r3 + -1
            int r4 = r17 + 2
            r11 = -1
            r6 = r12
            r10 = r11
            goto L_0x00dd
        L_0x00f4:
            if (r11 <= r4) goto L_0x0105
            r6 = 3
            r0 = r22
            r0.s = r6
            r11 = r9
            r6 = r13
            r9 = r2
            r13 = r4
            r2 = r14
            r4 = r5
            r5 = r12
            r12 = r3
            r3 = r15
            goto L_0x00a6
        L_0x0105:
            r0 = r18
            if (r11 != r0) goto L_0x0113
            r11 = r9
            r6 = r13
            r9 = r2
            r13 = r4
            r2 = r14
            r4 = r5
            r5 = r12
            r12 = r3
            r3 = r15
            goto L_0x00a6
        L_0x0113:
            r6 = -1
            if (r10 != r6) goto L_0x0129
            r0 = r22
            byte[] r9 = r0.k
            int r6 = r8 + 1
            r0 = r22
            byte[] r10 = r0.j
            byte r10 = r10[r11]
            r9[r8] = r10
            r8 = r6
            r9 = r11
            r10 = r11
            r6 = r12
            goto L_0x00dd
        L_0x0129:
            if (r11 < r4) goto L_0x01b0
            r0 = r22
            byte[] r0 = r0.k
            r19 = r0
            int r6 = r8 + 1
            byte r9 = (byte) r9
            r19[r8] = r9
            r8 = r6
            r9 = r10
        L_0x0138:
            r0 = r17
            if (r9 < r0) goto L_0x0157
            r0 = r22
            byte[] r0 = r0.k
            r19 = r0
            int r6 = r8 + 1
            r0 = r22
            byte[] r0 = r0.j
            r20 = r0
            byte r20 = r20[r9]
            r19[r8] = r20
            r0 = r22
            short[] r8 = r0.i
            short r8 = r8[r9]
            r9 = r8
            r8 = r6
            goto L_0x0138
        L_0x0157:
            r0 = r22
            byte[] r6 = r0.j
            byte r6 = r6[r9]
            r9 = r6 & 255(0xff, float:3.57E-43)
            r0 = r22
            byte[] r0 = r0.k
            r19 = r0
            int r6 = r8 + 1
            byte r0 = (byte) r9
            r20 = r0
            r19[r8] = r20
            r8 = 4096(0x1000, float:5.74E-42)
            if (r4 >= r8) goto L_0x018b
            r0 = r22
            short[] r8 = r0.i
            short r10 = (short) r10
            r8[r4] = r10
            r0 = r22
            byte[] r8 = r0.j
            byte r10 = (byte) r9
            r8[r4] = r10
            int r4 = r4 + 1
            r8 = r4 & r3
            if (r8 != 0) goto L_0x018b
            r8 = 4096(0x1000, float:5.74E-42)
            if (r4 >= r8) goto L_0x018b
            int r2 = r2 + 1
            int r3 = r3 + r4
        L_0x018b:
            r8 = r7
            r7 = r6
        L_0x018d:
            if (r7 <= 0) goto L_0x01a7
            r0 = r22
            byte[] r10 = r0.l
            int r6 = r5 + 1
            r0 = r22
            byte[] r0 = r0.k
            r19 = r0
            int r7 = r7 + -1
            byte r19 = r19[r7]
            r10[r5] = r19
            int r5 = r8 + 1
            r8 = r5
            r5 = r6
            goto L_0x018d
        L_0x01a6:
            return
        L_0x01a7:
            r6 = r12
            r10 = r11
            r21 = r8
            r8 = r7
            r7 = r21
            goto L_0x00dd
        L_0x01b0:
            r9 = r11
            goto L_0x0138
        L_0x01b2:
            r11 = r9
            r12 = r3
            r3 = r15
            r9 = r2
            r2 = r14
            r21 = r13
            r13 = r4
            r4 = r5
            r5 = r6
            r6 = r21
            goto L_0x00a6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.gifdecoder.c.a(com.bumptech.glide.gifdecoder.GifFrame):void");
    }

    private void j() {
        if (this.g <= this.h) {
            if (this.f == null) {
                this.f = this.p.a(16384);
            }
            this.h = 0;
            this.g = Math.min(this.d.remaining(), 16384);
            this.d.get(this.f, 0, this.g);
        }
    }

    private int k() {
        try {
            j();
            byte[] bArr = this.f;
            int i2 = this.h;
            this.h = i2 + 1;
            return bArr[i2] & 255;
        } catch (Exception e2) {
            this.s = 1;
            return 0;
        }
    }

    private int l() {
        int k2 = k();
        if (k2 > 0) {
            try {
                if (this.e == null) {
                    this.e = this.p.a(255);
                }
                int i2 = this.g - this.h;
                if (i2 >= k2) {
                    System.arraycopy(this.f, this.h, this.e, 0, k2);
                    this.h += k2;
                } else if (this.d.remaining() + i2 >= k2) {
                    System.arraycopy(this.f, this.h, this.e, 0, i2);
                    this.h = this.g;
                    j();
                    int i3 = k2 - i2;
                    System.arraycopy(this.f, 0, this.e, i2, i3);
                    this.h += i3;
                } else {
                    this.s = 1;
                }
            } catch (Exception e2) {
                Log.w(a, "Error Reading Block", e2);
                this.s = 1;
            }
        }
        return k2;
    }

    private Bitmap m() {
        Bitmap a2 = this.p.a(this.v, this.u, this.w ? Config.ARGB_8888 : Config.RGB_565);
        a2.setHasAlpha(true);
        return a2;
    }
}
