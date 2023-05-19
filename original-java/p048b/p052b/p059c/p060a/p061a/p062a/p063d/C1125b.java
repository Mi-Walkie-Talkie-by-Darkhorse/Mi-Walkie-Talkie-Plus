package p048b.p052b.p059c.p060a.p061a.p062a.p063d;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.security.auth.x500.X500Principal;

/* renamed from: b.b.c.a.a.a.d.b */
/* loaded from: classes2.dex */
public class C1125b {

    /* renamed from: a */
    private final String f5303a;

    /* renamed from: b */
    private final int f5304b;

    /* renamed from: c */
    private int f5305c;

    /* renamed from: d */
    private int f5306d;

    /* renamed from: e */
    private int f5307e;

    /* renamed from: f */
    private int f5308f;

    /* renamed from: g */
    private char[] f5309g;

    public C1125b(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.f5303a = name;
        this.f5304b = name.length();
    }

    /* renamed from: a */
    private int m21144a(int i) {
        int i2;
        int i3;
        int i4 = i + 1;
        if (i4 < this.f5304b) {
            char[] cArr = this.f5309g;
            char c = cArr[i];
            if (c >= '0' && c <= '9') {
                i2 = c - '0';
            } else if (c >= 'a' && c <= 'f') {
                i2 = c - 'W';
            } else if (c < 'A' || c > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f5303a);
            } else {
                i2 = c - '7';
            }
            char c2 = cArr[i4];
            if (c2 >= '0' && c2 <= '9') {
                i3 = c2 - '0';
            } else if (c2 >= 'a' && c2 <= 'f') {
                i3 = c2 - 'W';
            } else if (c2 < 'A' || c2 > 'F') {
                throw new IllegalStateException("Malformed DN: " + this.f5303a);
            } else {
                i3 = c2 - '7';
            }
            return (i2 << 4) + i3;
        }
        throw new IllegalStateException("Malformed DN: " + this.f5303a);
    }

    /* renamed from: c */
    private String m21142c() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        while (true) {
            i = this.f5305c;
            i2 = this.f5304b;
            if (i >= i2 || this.f5309g[i] != ' ') {
                break;
            }
            this.f5305c = i + 1;
        }
        if (i == i2) {
            return null;
        }
        this.f5306d = i;
        this.f5305c = i + 1;
        while (true) {
            i3 = this.f5305c;
            i4 = this.f5304b;
            if (i3 >= i4) {
                break;
            }
            char[] cArr = this.f5309g;
            if (cArr[i3] == '=' || cArr[i3] == ' ') {
                break;
            }
            this.f5305c = i3 + 1;
        }
        if (i3 < i4) {
            this.f5307e = i3;
            if (this.f5309g[i3] == ' ') {
                while (true) {
                    i5 = this.f5305c;
                    i6 = this.f5304b;
                    if (i5 >= i6) {
                        break;
                    }
                    char[] cArr2 = this.f5309g;
                    if (cArr2[i5] == '=' || cArr2[i5] != ' ') {
                        break;
                    }
                    this.f5305c = i5 + 1;
                }
                if (this.f5309g[i5] != '=' || i5 == i6) {
                    throw new IllegalStateException("Unexpected end of DN: " + this.f5303a);
                }
            }
            this.f5305c++;
            while (true) {
                int i7 = this.f5305c;
                if (i7 >= this.f5304b || this.f5309g[i7] != ' ') {
                    break;
                }
                this.f5305c = i7 + 1;
            }
            int i8 = this.f5307e;
            int i9 = this.f5306d;
            if (i8 - i9 > 4) {
                char[] cArr3 = this.f5309g;
                if (cArr3[i9 + 3] == '.' && ((cArr3[i9] == 'O' || cArr3[i9] == 'o') && ((cArr3[i9 + 1] == 'I' || cArr3[i9 + 1] == 'i') && (cArr3[i9 + 2] == 'D' || cArr3[i9 + 2] == 'd')))) {
                    this.f5306d = i9 + 4;
                }
            }
            char[] cArr4 = this.f5309g;
            int i10 = this.f5306d;
            return new String(cArr4, i10, this.f5307e - i10);
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f5303a);
    }

    /* renamed from: d */
    private String m21141d() {
        int i = this.f5305c + 1;
        this.f5305c = i;
        this.f5306d = i;
        this.f5307e = i;
        while (true) {
            int i2 = this.f5305c;
            if (i2 != this.f5304b) {
                char[] cArr = this.f5309g;
                if (cArr[i2] == '\"') {
                    this.f5305c = i2 + 1;
                    while (true) {
                        int i3 = this.f5305c;
                        if (i3 >= this.f5304b || this.f5309g[i3] != ' ') {
                            break;
                        }
                        this.f5305c = i3 + 1;
                    }
                    char[] cArr2 = this.f5309g;
                    int i4 = this.f5306d;
                    return new String(cArr2, i4, this.f5307e - i4);
                }
                if (cArr[i2] == '\\') {
                    cArr[this.f5307e] = m21138g();
                } else {
                    cArr[this.f5307e] = cArr[i2];
                }
                this.f5305c++;
                this.f5307e++;
            } else {
                throw new IllegalStateException("Unexpected end of DN: " + this.f5303a);
            }
        }
    }

    /* renamed from: e */
    private String m21140e() {
        int i;
        int i2 = this.f5305c;
        if (i2 + 4 < this.f5304b) {
            this.f5306d = i2;
            this.f5305c = i2 + 1;
            while (true) {
                i = this.f5305c;
                if (i == this.f5304b) {
                    break;
                }
                char[] cArr = this.f5309g;
                if (cArr[i] == '+' || cArr[i] == ',' || cArr[i] == ';') {
                    break;
                } else if (cArr[i] == ' ') {
                    this.f5307e = i;
                    this.f5305c = i + 1;
                    while (true) {
                        int i3 = this.f5305c;
                        if (i3 >= this.f5304b || this.f5309g[i3] != ' ') {
                            break;
                        }
                        this.f5305c = i3 + 1;
                    }
                } else {
                    if (cArr[i] >= 'A' && cArr[i] <= 'F') {
                        cArr[i] = (char) (cArr[i] + ' ');
                    }
                    this.f5305c = i + 1;
                }
            }
            this.f5307e = i;
            int i4 = this.f5307e;
            int i5 = this.f5306d;
            int i6 = i4 - i5;
            if (i6 >= 5 && (i6 & 1) != 0) {
                int i7 = i6 / 2;
                byte[] bArr = new byte[i7];
                int i8 = i5 + 1;
                for (int i9 = 0; i9 < i7; i9++) {
                    bArr[i9] = (byte) m21144a(i8);
                    i8 += 2;
                }
                return new String(this.f5309g, this.f5306d, i6);
            }
            throw new IllegalStateException("Unexpected end of DN: " + this.f5303a);
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f5303a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a3, code lost:
        return new java.lang.String(r1, r2, r8.f5308f - r2);
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String m21139f() {
        int i;
        int i2;
        int i3 = this.f5305c;
        this.f5306d = i3;
        this.f5307e = i3;
        while (true) {
            int i4 = this.f5305c;
            if (i4 >= this.f5304b) {
                char[] cArr = this.f5309g;
                int i5 = this.f5306d;
                return new String(cArr, i5, this.f5307e - i5);
            }
            char[] cArr2 = this.f5309g;
            char c = cArr2[i4];
            if (c == ' ') {
                int i6 = this.f5307e;
                this.f5308f = i6;
                this.f5305c = i4 + 1;
                this.f5307e = i6 + 1;
                cArr2[i6] = ' ';
                while (true) {
                    i = this.f5305c;
                    i2 = this.f5304b;
                    if (i >= i2) {
                        break;
                    }
                    char[] cArr3 = this.f5309g;
                    if (cArr3[i] != ' ') {
                        break;
                    }
                    int i7 = this.f5307e;
                    this.f5307e = i7 + 1;
                    cArr3[i7] = ' ';
                    this.f5305c = i + 1;
                }
                if (i == i2) {
                    break;
                }
                char[] cArr4 = this.f5309g;
                if (cArr4[i] == ',' || cArr4[i] == '+' || cArr4[i] == ';') {
                    break;
                }
            } else if (c == ';') {
                break;
            } else if (c == '\\') {
                int i8 = this.f5307e;
                this.f5307e = i8 + 1;
                cArr2[i8] = m21138g();
                this.f5305c++;
            } else if (c == '+' || c == ',') {
                break;
            } else {
                int i9 = this.f5307e;
                this.f5307e = i9 + 1;
                cArr2[i9] = cArr2[i4];
                this.f5305c = i4 + 1;
            }
        }
        char[] cArr5 = this.f5309g;
        int i10 = this.f5306d;
        return new String(cArr5, i10, this.f5307e - i10);
    }

    /* renamed from: g */
    private char m21138g() {
        int i = this.f5305c + 1;
        this.f5305c = i;
        if (i != this.f5304b) {
            char[] cArr = this.f5309g;
            char c = cArr[i];
            if (c != ' ' && c != '%' && c != '\\' && c != '_' && c != '\"' && c != '#') {
                switch (c) {
                    case '*':
                    case '+':
                    case ',':
                        break;
                    default:
                        switch (c) {
                            case ';':
                            case '<':
                            case '=':
                            case '>':
                                break;
                            default:
                                return m21137h();
                        }
                }
            }
            return cArr[i];
        }
        throw new IllegalStateException("Unexpected end of DN: " + this.f5303a);
    }

    /* renamed from: h */
    private char m21137h() {
        int i;
        int i2;
        int m21144a = m21144a(this.f5305c);
        this.f5305c++;
        if (m21144a < 128) {
            return (char) m21144a;
        }
        if (m21144a < 192 || m21144a > 247) {
            return '?';
        }
        if (m21144a <= 223) {
            i2 = m21144a & 31;
            i = 1;
        } else if (m21144a <= 239) {
            i = 2;
            i2 = m21144a & 15;
        } else {
            i = 3;
            i2 = m21144a & 7;
        }
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = this.f5305c + 1;
            this.f5305c = i4;
            if (i4 == this.f5304b || this.f5309g[i4] != '\\') {
                return '?';
            }
            int i5 = i4 + 1;
            this.f5305c = i5;
            int m21144a2 = m21144a(i5);
            this.f5305c++;
            if ((m21144a2 & 192) != 128) {
                return '?';
            }
            i2 = (i2 << 6) + (m21144a2 & 63);
        }
        return (char) i2;
    }

    /* renamed from: b */
    public List<String> m21143b(String str) {
        String m21141d;
        this.f5305c = 0;
        this.f5306d = 0;
        this.f5307e = 0;
        this.f5308f = 0;
        this.f5309g = this.f5303a.toCharArray();
        List<String> emptyList = Collections.emptyList();
        String m21142c = m21142c();
        if (m21142c == null) {
            return emptyList;
        }
        do {
            int i = this.f5305c;
            if (i < this.f5304b) {
                char c = this.f5309g[i];
                if (c == '\"') {
                    m21141d = m21141d();
                } else if (c != '#') {
                    m21141d = (c == '+' || c == ',' || c == ';') ? "" : m21139f();
                } else {
                    m21141d = m21140e();
                }
                if (str.equalsIgnoreCase(m21142c)) {
                    if (emptyList.isEmpty()) {
                        emptyList = new ArrayList<>();
                    }
                    emptyList.add(m21141d);
                }
                int i2 = this.f5305c;
                if (i2 < this.f5304b) {
                    char[] cArr = this.f5309g;
                    if (cArr[i2] != ',' && cArr[i2] != ';' && cArr[i2] != '+') {
                        throw new IllegalStateException("Malformed DN: " + this.f5303a);
                    }
                    this.f5305c = i2 + 1;
                    m21142c = m21142c();
                }
            }
            return emptyList;
        } while (m21142c != null);
        throw new IllegalStateException("Malformed DN: " + this.f5303a);
    }
}
