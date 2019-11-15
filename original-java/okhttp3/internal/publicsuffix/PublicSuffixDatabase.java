package okhttp3.internal.publicsuffix;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.IDN;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import okio.BufferedSource;
import okio.GzipSource;
import okio.Okio;
import okio.Source;

public final class PublicSuffixDatabase {
    private static final String[] EMPTY_RULE = new String[0];
    private static final byte EXCEPTION_MARKER = 33;
    private static final String[] PREVAILING_RULE = {"*"};
    public static final String PUBLIC_SUFFIX_RESOURCE = "publicsuffixes.gz";
    private static final byte[] WILDCARD_LABEL = {42};
    private static final PublicSuffixDatabase instance = new PublicSuffixDatabase();
    private final AtomicBoolean listRead = new AtomicBoolean(false);
    private byte[] publicSuffixExceptionListBytes;
    private byte[] publicSuffixListBytes;
    private final CountDownLatch readCompleteLatch = new CountDownLatch(1);

    public static PublicSuffixDatabase get() {
        return instance;
    }

    public String getEffectiveTldPlusOne(String str) {
        int length;
        if (str == null) {
            throw new NullPointerException("domain == null");
        }
        String[] split = IDN.toUnicode(str).split("\\.");
        String[] findMatchingRule = findMatchingRule(split);
        if (split.length == findMatchingRule.length && findMatchingRule[0].charAt(0) != '!') {
            return null;
        }
        if (findMatchingRule[0].charAt(0) == '!') {
            length = split.length - findMatchingRule.length;
        } else {
            length = split.length - (findMatchingRule.length + 1);
        }
        StringBuilder sb = new StringBuilder();
        String[] split2 = str.split("\\.");
        while (length < split2.length) {
            sb.append(split2[length]).append('.');
            length++;
        }
        sb.deleteCharAt(sb.length() - 1);
        return sb.toString();
    }

    private String[] findMatchingRule(String[] strArr) {
        String str;
        String str2;
        String[] strArr2;
        String[] strArr3;
        String str3 = null;
        int i = 0;
        if (this.listRead.get() || !this.listRead.compareAndSet(false, true)) {
            try {
                this.readCompleteLatch.await();
            } catch (InterruptedException e) {
            }
        } else {
            readTheList();
        }
        synchronized (this) {
            if (this.publicSuffixListBytes == null) {
                throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
            }
        }
        byte[][] bArr = new byte[strArr.length][];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            bArr[i2] = strArr[i2].getBytes(Util.UTF_8);
        }
        int i3 = 0;
        while (true) {
            if (i3 >= bArr.length) {
                str = null;
                break;
            }
            str = binarySearchBytes(this.publicSuffixListBytes, bArr, i3);
            if (str != null) {
                break;
            }
            i3++;
        }
        if (bArr.length > 1) {
            byte[][] bArr2 = (byte[][]) bArr.clone();
            int i4 = 0;
            while (true) {
                if (i4 >= bArr2.length - 1) {
                    break;
                }
                bArr2[i4] = WILDCARD_LABEL;
                String binarySearchBytes = binarySearchBytes(this.publicSuffixListBytes, bArr2, i4);
                if (binarySearchBytes != null) {
                    str2 = binarySearchBytes;
                    break;
                }
                i4++;
            }
        }
        str2 = null;
        if (str2 != null) {
            while (true) {
                if (i >= bArr.length - 1) {
                    break;
                }
                String binarySearchBytes2 = binarySearchBytes(this.publicSuffixExceptionListBytes, bArr, i);
                if (binarySearchBytes2 != null) {
                    str3 = binarySearchBytes2;
                    break;
                }
                i++;
            }
        }
        if (str3 != null) {
            return ("!" + str3).split("\\.");
        }
        if (str == null && str2 == null) {
            return PREVAILING_RULE;
        }
        if (str != null) {
            strArr2 = str.split("\\.");
        } else {
            strArr2 = EMPTY_RULE;
        }
        if (str2 != null) {
            strArr3 = str2.split("\\.");
        } else {
            strArr3 = EMPTY_RULE;
        }
        return strArr2.length > strArr3.length ? strArr2 : strArr3;
    }

    private static String binarySearchBytes(byte[] bArr, byte[][] bArr2, int i) {
        byte b;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = 0;
        int length = bArr.length;
        while (i7 < length) {
            int i8 = (i7 + length) / 2;
            while (i8 > -1 && bArr[i8] != 10) {
                i8--;
            }
            int i9 = i8 + 1;
            int i10 = 1;
            while (bArr[i9 + i10] != 10) {
                i10++;
            }
            int i11 = (i9 + i10) - i9;
            int i12 = 0;
            int i13 = 0;
            boolean z = false;
            int i14 = i;
            while (true) {
                if (z) {
                    b = 46;
                    z = false;
                } else {
                    b = bArr2[i14][i12] & 255;
                }
                i2 = b - (bArr[i9 + i13] & 255);
                if (i2 != 0) {
                    i3 = i13;
                    i4 = i12;
                    break;
                }
                i13++;
                int i15 = i12 + 1;
                if (i13 == i11) {
                    i4 = i15;
                    i3 = i13;
                    break;
                }
                if (bArr2[i14].length == i15) {
                    if (i14 == bArr2.length - 1) {
                        i4 = i15;
                        i3 = i13;
                        break;
                    }
                    i14++;
                    i15 = -1;
                    z = true;
                }
                i12 = i15;
            }
            if (i2 < 0) {
                i6 = i9 - 1;
                i5 = i7;
            } else if (i2 > 0) {
                i5 = i10 + i9 + 1;
                i6 = length;
            } else {
                int i16 = i11 - i3;
                int length2 = bArr2[i14].length - i4;
                for (int i17 = i14 + 1; i17 < bArr2.length; i17++) {
                    length2 += bArr2[i17].length;
                }
                if (length2 < i16) {
                    i6 = i9 - 1;
                    i5 = i7;
                } else if (length2 <= i16) {
                    return new String(bArr, i9, i11, Util.UTF_8);
                } else {
                    i5 = i10 + i9 + 1;
                    i6 = length;
                }
            }
            length = i6;
            i7 = i5;
        }
        return null;
    }

    private void readTheList() {
        byte[] bArr;
        byte[] bArr2 = null;
        InputStream resourceAsStream = PublicSuffixDatabase.class.getClassLoader().getResourceAsStream(PUBLIC_SUFFIX_RESOURCE);
        if (resourceAsStream != null) {
            BufferedSource buffer = Okio.buffer((Source) new GzipSource(Okio.source(resourceAsStream)));
            try {
                byte[] bArr3 = new byte[buffer.readInt()];
                buffer.readFully(bArr3);
                bArr = new byte[buffer.readInt()];
                buffer.readFully(bArr);
                Util.closeQuietly((Closeable) buffer);
                bArr2 = bArr3;
            } catch (IOException e) {
                Platform.get().log(5, "Failed to read public suffix list", e);
                Util.closeQuietly((Closeable) buffer);
                bArr = null;
            } catch (Throwable th) {
                Util.closeQuietly((Closeable) buffer);
                throw th;
            }
        } else {
            bArr = null;
        }
        synchronized (this) {
            this.publicSuffixListBytes = bArr2;
            this.publicSuffixExceptionListBytes = bArr;
        }
        this.readCompleteLatch.countDown();
    }

    /* access modifiers changed from: 0000 */
    public void setListBytes(byte[] bArr, byte[] bArr2) {
        this.publicSuffixListBytes = bArr;
        this.publicSuffixExceptionListBytes = bArr2;
        this.listRead.set(true);
        this.readCompleteLatch.countDown();
    }
}
