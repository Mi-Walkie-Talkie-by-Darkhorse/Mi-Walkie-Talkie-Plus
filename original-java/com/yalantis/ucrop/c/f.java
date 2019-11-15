package com.yalantis.ucrop.c;

import android.media.ExifInterface;
import android.support.v4.view.MotionEventCompat;
import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;

/* compiled from: ImageHeaderParser */
public class f {
    private static final byte[] a = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));
    private static final int[] b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};
    private final b c;

    /* compiled from: ImageHeaderParser */
    private static class a {
        private final ByteBuffer a;

        public a(byte[] bArr, int i) {
            this.a = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i);
        }

        public void a(ByteOrder byteOrder) {
            this.a.order(byteOrder);
        }

        public int a() {
            return this.a.remaining();
        }

        public int a(int i) {
            return this.a.getInt(i);
        }

        public short b(int i) {
            return this.a.getShort(i);
        }
    }

    /* compiled from: ImageHeaderParser */
    private interface b {
        int a() throws IOException;

        int a(byte[] bArr, int i) throws IOException;

        long a(long j) throws IOException;

        short b() throws IOException;
    }

    /* compiled from: ImageHeaderParser */
    private static class c implements b {
        private final InputStream a;

        public c(InputStream inputStream) {
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
    }

    public f(InputStream inputStream) {
        this.c = new c(inputStream);
    }

    public int a() throws IOException {
        int a2 = this.c.a();
        if (a(a2)) {
            int b2 = b();
            if (b2 != -1) {
                return a(new byte[b2], b2);
            }
            if (!Log.isLoggable("ImageHeaderParser", 3)) {
                return -1;
            }
            Log.d("ImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
            return -1;
        } else if (!Log.isLoggable("ImageHeaderParser", 3)) {
            return -1;
        } else {
            Log.d("ImageHeaderParser", "Parser doesn't handle magic number: " + a2);
            return -1;
        }
    }

    private int a(byte[] bArr, int i) throws IOException {
        int a2 = this.c.a(bArr, i);
        if (a2 != i) {
            if (!Log.isLoggable("ImageHeaderParser", 3)) {
                return -1;
            }
            Log.d("ImageHeaderParser", "Unable to read exif segment data, length: " + i + ", actually read: " + a2);
            return -1;
        } else if (b(bArr, i)) {
            return a(new a(bArr, i));
        } else {
            if (!Log.isLoggable("ImageHeaderParser", 3)) {
                return -1;
            }
            Log.d("ImageHeaderParser", "Missing jpeg exif preamble");
            return -1;
        }
    }

    private boolean b(byte[] bArr, int i) {
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

    private int b() throws IOException {
        short b2;
        int a2;
        long a3;
        do {
            short b3 = this.c.b();
            if (b3 == 255) {
                b2 = this.c.b();
                if (b2 == 218) {
                    return -1;
                }
                if (b2 != 217) {
                    a2 = this.c.a() - 2;
                    if (b2 == 225) {
                        return a2;
                    }
                    a3 = this.c.a((long) a2);
                } else if (!Log.isLoggable("ImageHeaderParser", 3)) {
                    return -1;
                } else {
                    Log.d("ImageHeaderParser", "Found MARKER_EOI in exif segment");
                    return -1;
                }
            } else if (!Log.isLoggable("ImageHeaderParser", 3)) {
                return -1;
            } else {
                Log.d("ImageHeaderParser", "Unknown segmentId=" + b3);
                return -1;
            }
        } while (a3 == ((long) a2));
        if (!Log.isLoggable("ImageHeaderParser", 3)) {
            return -1;
        }
        Log.d("ImageHeaderParser", "Unable to skip enough data, type: " + b2 + ", wanted to skip: " + a2 + ", but actually skipped: " + a3);
        return -1;
    }

    private static int a(a aVar) {
        ByteOrder byteOrder;
        int length = "Exif\u0000\u0000".length();
        short b2 = aVar.b(length);
        if (b2 == 19789) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else if (b2 == 18761) {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        } else {
            if (Log.isLoggable("ImageHeaderParser", 3)) {
                Log.d("ImageHeaderParser", "Unknown endianness = " + b2);
            }
            byteOrder = ByteOrder.BIG_ENDIAN;
        }
        aVar.a(byteOrder);
        int a2 = length + aVar.a(length + 4);
        short b3 = aVar.b(a2);
        for (int i = 0; i < b3; i++) {
            int a3 = a(a2, i);
            short b4 = aVar.b(a3);
            if (b4 == 274) {
                short b5 = aVar.b(a3 + 2);
                if (b5 >= 1 && b5 <= 12) {
                    int a4 = aVar.a(a3 + 4);
                    if (a4 >= 0) {
                        if (Log.isLoggable("ImageHeaderParser", 3)) {
                            Log.d("ImageHeaderParser", "Got tagIndex=" + i + " tagType=" + b4 + " formatCode=" + b5 + " componentCount=" + a4);
                        }
                        int i2 = a4 + b[b5];
                        if (i2 <= 4) {
                            int i3 = a3 + 8;
                            if (i3 < 0 || i3 > aVar.a()) {
                                if (Log.isLoggable("ImageHeaderParser", 3)) {
                                    Log.d("ImageHeaderParser", "Illegal tagValueOffset=" + i3 + " tagType=" + b4);
                                }
                            } else if (i2 >= 0 && i3 + i2 <= aVar.a()) {
                                return aVar.b(i3);
                            } else {
                                if (Log.isLoggable("ImageHeaderParser", 3)) {
                                    Log.d("ImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + b4);
                                }
                            }
                        } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                            Log.d("ImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + b5);
                        }
                    } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                        Log.d("ImageHeaderParser", "Negative tiff component count");
                    }
                } else if (Log.isLoggable("ImageHeaderParser", 3)) {
                    Log.d("ImageHeaderParser", "Got invalid format code = " + b5);
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

    public static void a(ExifInterface exifInterface, int i, int i2, String str) {
        String[] strArr = {"FNumber", "DateTime", "DateTimeDigitized", "ExposureTime", "Flash", "FocalLength", "GPSAltitude", "GPSAltitudeRef", "GPSDateStamp", "GPSLatitude", "GPSLatitudeRef", "GPSLongitude", "GPSLongitudeRef", "GPSProcessingMethod", "GPSTimeStamp", "ISOSpeedRatings", "Make", "Model", "SubSecTime", "SubSecTimeDigitized", "SubSecTimeOriginal", "WhiteBalance"};
        try {
            ExifInterface exifInterface2 = new ExifInterface(str);
            for (String str2 : strArr) {
                String attribute = exifInterface.getAttribute(str2);
                if (!TextUtils.isEmpty(attribute)) {
                    exifInterface2.setAttribute(str2, attribute);
                }
            }
            exifInterface2.setAttribute("ImageWidth", String.valueOf(i));
            exifInterface2.setAttribute("ImageLength", String.valueOf(i2));
            exifInterface2.setAttribute("Orientation", "0");
            exifInterface2.saveAttributes();
        } catch (IOException e) {
            Log.d("ImageHeaderParser", e.getMessage());
        }
    }
}
