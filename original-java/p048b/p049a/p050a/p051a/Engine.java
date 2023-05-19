package p048b.p049a.p050a.p051a;

import java.util.Comparator;
import java.util.List;
import p287d.p288a.p290b.Emit;
import p287d.p288a.p290b.Trie;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: b.a.a.a.a */
/* loaded from: classes.dex */
public final class Engine {

    /* renamed from: a */
    static final C1099a f5248a = new C1099a();

    /* compiled from: Engine.java */
    /* renamed from: b.a.a.a.a$a */
    /* loaded from: classes.dex */
    static final class C1099a implements Comparator<Emit> {
        C1099a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(Emit emit, Emit emit2) {
            if (emit.getStart() == emit2.getStart()) {
                if (emit.m840a() < emit2.m840a()) {
                    return 1;
                }
                return emit.m840a() == emit2.m840a() ? 0 : -1;
            } else if (emit.getStart() < emit2.getStart()) {
                return -1;
            } else {
                return emit.getStart() == emit2.getStart() ? 0 : 1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static String m21200a(String str, Trie trie, List<Object> list, String str2, SegmentationSelector segmentationSelector) {
        if (str == null || str.length() == 0) {
            return str;
        }
        if (trie != null && segmentationSelector != null) {
            trie.m839a(str);
            throw null;
        }
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < str.length(); i++) {
            stringBuffer.append(Pinyin.m21195d(str.charAt(i)));
            if (i != str.length() - 1) {
                stringBuffer.append(str2);
            }
        }
        return stringBuffer.toString();
    }
}
