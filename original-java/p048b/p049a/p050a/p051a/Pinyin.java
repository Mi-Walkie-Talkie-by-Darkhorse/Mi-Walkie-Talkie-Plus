package p048b.p049a.p050a.p051a;

import com.google.common.primitives.UnsignedBytes;
import java.util.List;
import p287d.p288a.p290b.Trie;

/* renamed from: b.a.a.a.b */
/* loaded from: classes.dex */
public final class Pinyin {

    /* renamed from: a */
    static Trie f5249a;

    /* renamed from: b */
    static SegmentationSelector f5250b;

    /* renamed from: c */
    static List<Object> f5251c;

    /* renamed from: a */
    private static short m21198a(byte[] bArr, byte[] bArr2, int i) {
        int i2 = i % 8;
        short s = (short) (bArr2[i] & UnsignedBytes.MAX_VALUE);
        return (bArr[i / 8] & PinyinData.f5258a[i2]) != 0 ? (short) (s | 256) : s;
    }

    /* renamed from: b */
    private static int m21197b(char c) {
        int i = c - 19968;
        if (i < 0 || i >= 7000) {
            if (7000 <= i && i < 14000) {
                return m21198a(PinyinCode2.f5254a, PinyinCode2.f5255b, i - 7000);
            }
            return m21198a(PinyinCode3.f5256a, PinyinCode3.f5257b, i - 14000);
        }
        return m21198a(PinyinCode1.f5252a, PinyinCode1.f5253b, i);
    }

    /* renamed from: c */
    public static boolean m21196c(char c) {
        return (19968 <= c && c <= 40869 && m21197b(c) > 0) || 12295 == c;
    }

    /* renamed from: d */
    public static String m21195d(char c) {
        if (m21196c(c)) {
            return c == 12295 ? "LING" : PinyinData.f5259b[m21197b(c)];
        }
        return String.valueOf(c);
    }

    /* renamed from: e */
    public static String m21194e(String str, String str2) {
        return Engine.m21200a(str, f5249a, f5251c, str2, f5250b);
    }
}
