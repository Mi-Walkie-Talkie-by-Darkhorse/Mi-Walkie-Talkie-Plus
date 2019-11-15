package com.bumptech.glide.load.resource.bitmap;

import android.support.v4.internal.view.SupportMenu;
import android.support.v4.view.InputDeviceCompat;
import android.support.v4.view.MotionEventCompat;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParser.ImageType;
import com.bumptech.glide.util.h;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* compiled from: DefaultImageHeaderParser */
public final class j implements ImageHeaderParser {
    static final byte[] a = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));
    private static final int[] b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    /* compiled from: DefaultImageHeaderParser */
    private static final class a implements c {
        private final ByteBuffer a;

        a(ByteBuffer byteBuffer) {
            this.a = byteBuffer;
            byteBuffer.order(ByteOrder.BIG_ENDIAN);
        }

        public int a() throws IOException {
            return ((c() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (c() & 255);
        }

        public short b() throws IOException {
            return (short) (c() & 255);
        }

        public long a(long j) throws IOException {
            int min = (int) Math.min((long) this.a.remaining(), j);
            this.a.position(this.a.position() + min);
            return (long) min;
        }

        public int a(byte[] bArr, int i) throws IOException {
            int min = Math.min(i, this.a.remaining());
            if (min == 0) {
                return -1;
            }
            this.a.get(bArr, 0, min);
            return min;
        }

        public int c() throws IOException {
            if (this.a.remaining() < 1) {
                return -1;
            }
            return this.a.get();
        }
    }

    /* compiled from: DefaultImageHeaderParser */
    private static final class b {
        private final ByteBuffer a;

        b(byte[] bArr, int i) {
            this.a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
        }

        /* access modifiers changed from: 0000 */
        public void a(ByteOrder byteOrder) {
            this.a.order(byteOrder);
        }

        /* access modifiers changed from: 0000 */
        public int a() {
            return this.a.remaining();
        }

        /* access modifiers changed from: 0000 */
        public int a(int i) {
            if (a(i, 4)) {
                return this.a.getInt(i);
            }
            return -1;
        }

        /* access modifiers changed from: 0000 */
        public short b(int i) {
            if (a(i, 2)) {
                return this.a.getShort(i);
            }
            return -1;
        }

        private boolean a(int i, int i2) {
            return this.a.remaining() - i >= i2;
        }
    }

    /* compiled from: DefaultImageHeaderParser */
    private interface c {
        int a() throws IOException;

        int a(byte[] bArr, int i) throws IOException;

        long a(long j) throws IOException;

        short b() throws IOException;

        int c() throws IOException;
    }

    /* compiled from: DefaultImageHeaderParser */
    private static final class d implements c {
        private final InputStream a;

        d(InputStream inputStream) {
            this.a = inputStream;
        }

        public int a() throws IOException {
            return ((this.a.read() << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (this.a.read() & 255);
        }

        public short b() throws IOException {
            return (short) (this.a.read() & 255);
        }

        public long a(long j) throws IOException {
            if (j < 0) {
                return 0;
            }
            long j2 = j;
            while (j2 > 0) {
                long skip = this.a.skip(j2);
                if (skip > 0) {
                    j2 -= skip;
                } else if (this.a.read() == -1) {
                    break;
                } else {
                    j2--;
                }
            }
            return j - j2;
        }

        public int a(byte[] bArr, int i) throws IOException {
            int i2 = i;
            while (i2 > 0) {
                int read = this.a.read(bArr, i - i2, i2);
                if (read == -1) {
                    break;
                }
                i2 -= read;
            }
            return i - i2;
        }

        public int c() throws IOException {
            return this.a.read();
        }
    }

    public ImageType a(InputStream inputStream) throws IOException {
        return a((c) new d((InputStream) h.a(inputStream)));
    }

    public ImageType a(ByteBuffer byteBuffer) throws IOException {
        return a((c) new a((ByteBuffer) h.a(byteBuffer)));
    }

    public int a(InputStream inputStream, com.bumptech.glide.load.engine.a.b bVar) throws IOException {
        return a((c) new d((InputStream) h.a(inputStream)), (com.bumptech.glide.load.engine.a.b) h.a(bVar));
    }

    private ImageType a(c cVar) throws IOException {
        int a2 = cVar.a();
        if (a2 == 65496) {
            return ImageType.JPEG;
        }
        int a3 = ((a2 << 16) & SupportMenu.CATEGORY_MASK) | (cVar.a() & SupportMenu.USER_MASK);
        if (a3 == -1991225785) {
            cVar.a(21);
            return cVar.c() >= 3 ? ImageType.PNG_A : ImageType.PNG;
        } else if ((a3 >> 8) == 4671814) {
            return ImageType.GIF;
        } else {
            if (a3 != 1380533830) {
                return ImageType.UNKNOWN;
            }
            cVar.a(4);
            if ((((cVar.a() << 16) & SupportMenu.CATEGORY_MASK) | (cVar.a() & SupportMenu.USER_MASK)) != 1464156752) {
                return ImageType.UNKNOWN;
            }
            int a4 = ((cVar.a() << 16) & SupportMenu.CATEGORY_MASK) | (cVar.a() & SupportMenu.USER_MASK);
            if ((a4 & InputDeviceCompat.SOURCE_ANY) != 1448097792) {
                return ImageType.UNKNOWN;
            }
            if ((a4 & 255) == 88) {
                cVar.a(4);
                return (cVar.c() & 16) != 0 ? ImageType.WEBP_A : ImageType.WEBP;
            } else if ((a4 & 255) != 76) {
                return ImageType.WEBP;
            } else {
                cVar.a(4);
                return (cVar.c() & 8) != 0 ? ImageType.WEBP_A : ImageType.WEBP;
            }
        }
    }

    /* JADX INFO: finally extract failed */
    private int a(c cVar, com.bumptech.glide.load.engine.a.b bVar) throws IOException {
        int a2 = cVar.a();
        if (a(a2)) {
            int b2 = b(cVar);
            if (b2 != -1) {
                byte[] bArr = (byte[]) bVar.a(b2, byte[].class);
                try {
                    int a3 = a(cVar, bArr, b2);
                    bVar.a(bArr, byte[].class);
                    return a3;
                } catch (Throwable th) {
                    bVar.a(bArr, byte[].class);
                    throw th;
                }
            } else if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                return -1;
            } else {
                Log.d("DfltImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
                return -1;
            }
        } else if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
            return -1;
        } else {
            Log.d("DfltImageHeaderParser", "Parser doesn't handle magic number: " + a2);
            return -1;
        }
    }

    private int a(c cVar, byte[] bArr, int i) throws IOException {
        int a2 = cVar.a(bArr, i);
        if (a2 != i) {
            if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                return -1;
            }
            Log.d("DfltImageHeaderParser", "Unable to read exif segment data, length: " + i + ", actually read: " + a2);
            return -1;
        } else if (a(bArr, i)) {
            return a(new b(bArr, i));
        } else {
            if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                return -1;
            }
            Log.d("DfltImageHeaderParser", "Missing jpeg exif preamble");
            return -1;
        }
    }

    private boolean a(byte[] bArr, int i) {
        boolean z = bArr != null && i > a.length;
        if (z) {
            for (int i2 = 0; i2 < a.length; i2++) {
                if (bArr[i2] != a[i2]) {
                    return false;
                }
            }
        }
        return z;
    }

    private int b(c cVar) throws IOException {
        short b2;
        int a2;
        long a3;
        do {
            short b3 = cVar.b();
            if (b3 == 255) {
                b2 = cVar.b();
                if (b2 == 218) {
                    return -1;
                }
                if (b2 != 217) {
                    a2 = cVar.a() - 2;
                    if (b2 == 225) {
                        return a2;
                    }
                    a3 = cVar.a((long) a2);
                } else if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                    return -1;
                } else {
                    Log.d("DfltImageHeaderParser", "Found MARKER_EOI in exif segment");
                    return -1;
                }
            } else if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
                return -1;
            } else {
                Log.d("DfltImageHeaderParser", "Unknown segmentId=" + b3);
                return -1;
            }
        } while (a3 == ((long) a2));
        if (!Log.isLoggable("DfltImageHeaderParser", 3)) {
            return -1;
        }
        Log.d("DfltImageHeaderParser", "Unable to skip enough data, type: " + b2 + ", wanted to skip: " + a2 + ", but actually skipped: " + a3);
        return -1;
    }

    private static int a(b bVar) {
        ByteOrder byteOrder;
        int length = "Exif\u0000\u0000".length();
        short b2 = bVar.b(length);
        if (b2 == 19789) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else if (b2 == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else {
            if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Unknown endianness = " + b2);
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        bVar.a(byteOrder);
        int a2 = length + bVar.a(length + 4);
        short b3 = bVar.b(a2);
        for (int i = 0; i < b3; i++) {
            int a3 = a(a2, i);
            short b4 = bVar.b(a3);
            if (b4 == 274) {
                short b5 = bVar.b(a3 + 2);
                if (b5 >= 1 && b5 <= 12) {
                    int a4 = bVar.a(a3 + 4);
                    if (a4 >= 0) {
                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Got tagIndex=" + i + " tagType=" + b4 + " formatCode=" + b5 + " componentCount=" + a4);
                        }
                        int i2 = a4 + b[b5];
                        if (i2 <= 4) {
                            int i3 = a3 + 8;
                            if (i3 < 0 || i3 > bVar.a()) {
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Illegal tagValueOffset=" + i3 + " tagType=" + b4);
                                }
                            } else if (i2 >= 0 && i3 + i2 <= bVar.a()) {
                                return bVar.b(i3);
                            } else {
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + b4);
                                }
                            }
                        } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + b5);
                        }
                    } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        Log.d("DfltImageHeaderParser", "Negative tiff component count");
                    }
                } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Got invalid format code = " + b5);
                }
            }
        }
        return -1;
    }

    private static int a(int i, int i2) {
        return i + 2 + (i2 * 12);
    }

    private static boolean a(int i) {
        return (i & 65496) == 65496 || i == 19789 || i == 18761;
    }
}
