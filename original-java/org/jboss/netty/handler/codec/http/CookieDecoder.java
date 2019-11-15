package org.jboss.netty.handler.codec.http;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;
import org.jboss.netty.util.internal.StringUtil;

public class CookieDecoder {
    private static final char COMMA = ',';

    public CookieDecoder() {
    }

    @Deprecated
    public CookieDecoder(boolean z) {
    }

    public Set<Cookie> decode(String str) {
        int i;
        int i2;
        int i3;
        String str2;
        String str3;
        boolean z;
        boolean z2;
        boolean z3;
        int i4;
        String str4;
        ArrayList arrayList = new ArrayList(8);
        ArrayList arrayList2 = new ArrayList(8);
        extractKeyValuePairs(str, arrayList, arrayList2);
        if (arrayList.isEmpty()) {
            return Collections.emptySet();
        }
        if (((String) arrayList.get(0)).equalsIgnoreCase("Version")) {
            try {
                i2 = Integer.parseInt((String) arrayList2.get(0));
            } catch (NumberFormatException e) {
                i2 = 0;
            }
            i = 1;
        } else {
            i = 0;
            i2 = 0;
        }
        if (arrayList.size() <= i) {
            return Collections.emptySet();
        }
        TreeSet treeSet = new TreeSet();
        int i5 = i2;
        while (true) {
            int i6 = i;
            if (i6 >= arrayList.size()) {
                return treeSet;
            }
            String str5 = (String) arrayList.get(i6);
            String str6 = (String) arrayList2.get(i6);
            if (str6 == null) {
                str6 = "";
            }
            DefaultCookie defaultCookie = new DefaultCookie(str5, str6);
            boolean z4 = false;
            boolean z5 = false;
            boolean z6 = false;
            String str7 = null;
            String str8 = null;
            String str9 = null;
            String str10 = null;
            ArrayList arrayList3 = new ArrayList(2);
            int i7 = i6 + 1;
            int i8 = i6;
            int i9 = Integer.MIN_VALUE;
            while (i7 < arrayList.size()) {
                String str11 = (String) arrayList.get(i7);
                String str12 = (String) arrayList2.get(i7);
                if (!"Discard".equalsIgnoreCase(str11)) {
                    if (!"Secure".equalsIgnoreCase(str11)) {
                        if (!"HTTPOnly".equalsIgnoreCase(str11)) {
                            if (!"Comment".equalsIgnoreCase(str11)) {
                                if (!"CommentURL".equalsIgnoreCase(str11)) {
                                    if (!"Domain".equalsIgnoreCase(str11)) {
                                        if (!"Path".equalsIgnoreCase(str11)) {
                                            if (!"Expires".equalsIgnoreCase(str11)) {
                                                if (!"Max-Age".equalsIgnoreCase(str11)) {
                                                    if (!"Version".equalsIgnoreCase(str11)) {
                                                        if (!"Port".equalsIgnoreCase(str11)) {
                                                            break;
                                                        }
                                                        for (String valueOf : StringUtil.split(str12, COMMA)) {
                                                            try {
                                                                arrayList3.add(Integer.valueOf(valueOf));
                                                            } catch (NumberFormatException e2) {
                                                            }
                                                        }
                                                        i3 = i9;
                                                        str12 = str10;
                                                        str2 = str8;
                                                        str3 = str7;
                                                        z = z5;
                                                        z2 = z4;
                                                        String str13 = str9;
                                                        z3 = z6;
                                                        i4 = i5;
                                                        str4 = str13;
                                                    } else {
                                                        int parseInt = Integer.parseInt(str12);
                                                        i3 = i9;
                                                        str12 = str10;
                                                        str2 = str8;
                                                        str3 = str7;
                                                        z = z5;
                                                        z2 = z4;
                                                        String str14 = str9;
                                                        z3 = z6;
                                                        i4 = parseInt;
                                                        str4 = str14;
                                                    }
                                                } else {
                                                    i3 = Integer.parseInt(str12);
                                                    str12 = str10;
                                                    str2 = str8;
                                                    str3 = str7;
                                                    z = z5;
                                                    z2 = z4;
                                                    String str15 = str9;
                                                    z3 = z6;
                                                    i4 = i5;
                                                    str4 = str15;
                                                }
                                            } else {
                                                try {
                                                    long time = new CookieDateFormat().parse(str12).getTime() - System.currentTimeMillis();
                                                    i3 = (time % 1000 != 0 ? 1 : 0) + ((int) (time / 1000));
                                                    str12 = str10;
                                                    str2 = str8;
                                                    str3 = str7;
                                                    z = z5;
                                                    z2 = z4;
                                                    String str16 = str9;
                                                    z3 = z6;
                                                    i4 = i5;
                                                    str4 = str16;
                                                } catch (ParseException e3) {
                                                    i3 = i9;
                                                    str12 = str10;
                                                    str2 = str8;
                                                    str3 = str7;
                                                    z = z5;
                                                    z2 = z4;
                                                    String str17 = str9;
                                                    z3 = z6;
                                                    i4 = i5;
                                                    str4 = str17;
                                                }
                                            }
                                        } else {
                                            i3 = i9;
                                            str3 = str7;
                                            str2 = str8;
                                            z2 = z4;
                                            z = z5;
                                            boolean z7 = z6;
                                            i4 = i5;
                                            str4 = str9;
                                            z3 = z7;
                                        }
                                    } else {
                                        i3 = i9;
                                        z3 = z6;
                                        str2 = str8;
                                        i4 = i5;
                                        z = z5;
                                        str4 = str12;
                                        str12 = str10;
                                        str3 = str7;
                                        z2 = z4;
                                    }
                                } else {
                                    i3 = i9;
                                    z = z5;
                                    str2 = str12;
                                    str12 = str10;
                                    str3 = str7;
                                    z2 = z4;
                                    String str18 = str9;
                                    z3 = z6;
                                    i4 = i5;
                                    str4 = str18;
                                }
                            } else {
                                i3 = i9;
                                z2 = z4;
                                str2 = str8;
                                z = z5;
                                String str19 = str12;
                                str12 = str10;
                                str3 = str19;
                                String str20 = str9;
                                z3 = z6;
                                i4 = i5;
                                str4 = str20;
                            }
                        } else {
                            str12 = str10;
                            i4 = i5;
                            str4 = str9;
                            str3 = str7;
                            z3 = true;
                            z2 = z4;
                            i3 = i9;
                            str2 = str8;
                            z = z5;
                        }
                    } else {
                        str12 = str10;
                        str3 = str7;
                        z2 = z4;
                        String str21 = str8;
                        z = true;
                        i3 = i9;
                        str2 = str21;
                        boolean z8 = z6;
                        i4 = i5;
                        str4 = str9;
                        z3 = z8;
                    }
                } else {
                    str12 = str10;
                    str3 = str7;
                    z2 = true;
                    i3 = i9;
                    str2 = str8;
                    z = z5;
                    boolean z9 = z6;
                    i4 = i5;
                    str4 = str9;
                    z3 = z9;
                }
                i7++;
                i8++;
                z5 = z;
                z4 = z2;
                str8 = str2;
                str7 = str3;
                str10 = str12;
                i9 = i3;
                String str22 = str4;
                i5 = i4;
                z6 = z3;
                str9 = str22;
            }
            defaultCookie.setVersion(i5);
            defaultCookie.setMaxAge(i9);
            defaultCookie.setPath(str10);
            defaultCookie.setDomain(str9);
            defaultCookie.setSecure(z5);
            defaultCookie.setHttpOnly(z6);
            if (i5 > 0) {
                defaultCookie.setComment(str7);
            }
            if (i5 > 1) {
                defaultCookie.setCommentUrl(str8);
                defaultCookie.setPorts((Iterable<Integer>) arrayList3);
                defaultCookie.setDiscard(z4);
            }
            treeSet.add(defaultCookie);
            i = i8 + 1;
        }
    }

    private static void extractKeyValuePairs(String str, List<String> list, List<String> list2) {
        String sb;
        int i;
        String str2;
        int length = str.length();
        int i2 = 0;
        while (i2 != length) {
            switch (str.charAt(i2)) {
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case ' ':
                case ',':
                case ';':
                    i2++;
                    break;
                default:
                    while (i2 != length) {
                        if (str.charAt(i2) != '$') {
                            if (i2 != length) {
                                int i3 = i2;
                                while (true) {
                                    switch (str.charAt(i3)) {
                                        case ';':
                                            str2 = str.substring(i2, i3);
                                            i = i3;
                                            sb = null;
                                            break;
                                        case '=':
                                            String substring = str.substring(i2, i3);
                                            int i4 = i3 + 1;
                                            if (i4 != length) {
                                                char charAt = str.charAt(i4);
                                                if (charAt != '\"' && charAt != '\'') {
                                                    int indexOf = str.indexOf(59, i4);
                                                    if (indexOf > 0) {
                                                        sb = str.substring(i4, indexOf);
                                                    } else {
                                                        sb = str.substring(i4);
                                                        indexOf = length;
                                                    }
                                                    String str3 = substring;
                                                    i = indexOf;
                                                    str2 = str3;
                                                    break;
                                                } else {
                                                    StringBuilder sb2 = new StringBuilder(str.length() - i4);
                                                    boolean z = false;
                                                    int i5 = i4 + 1;
                                                    while (true) {
                                                        if (i5 == length) {
                                                            sb = sb2.toString();
                                                            String str4 = substring;
                                                            i = i5;
                                                            str2 = str4;
                                                            break;
                                                        } else if (z) {
                                                            int i6 = i5 + 1;
                                                            char charAt2 = str.charAt(i5);
                                                            switch (charAt2) {
                                                                case '\"':
                                                                case '\'':
                                                                case '\\':
                                                                    sb2.setCharAt(sb2.length() - 1, charAt2);
                                                                    z = false;
                                                                    i5 = i6;
                                                                    break;
                                                                default:
                                                                    sb2.append(charAt2);
                                                                    z = false;
                                                                    i5 = i6;
                                                                    break;
                                                            }
                                                        } else {
                                                            int i7 = i5 + 1;
                                                            char charAt3 = str.charAt(i5);
                                                            if (charAt3 == charAt) {
                                                                sb = sb2.toString();
                                                                str2 = substring;
                                                                i = i7;
                                                                break;
                                                            } else {
                                                                sb2.append(charAt3);
                                                                if (charAt3 == '\\') {
                                                                    z = true;
                                                                    i5 = i7;
                                                                } else {
                                                                    i5 = i7;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            } else {
                                                sb = "";
                                                str2 = substring;
                                                i = i4;
                                                break;
                                            }
                                            break;
                                        default:
                                            i3++;
                                            if (i3 == length) {
                                                str2 = str.substring(i2);
                                                i = i3;
                                                sb = null;
                                                break;
                                            }
                                    }
                                }
                            } else {
                                sb = null;
                                i = i2;
                                str2 = null;
                            }
                            list.add(str2);
                            list2.add(sb);
                            i2 = i;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    return;
            }
        }
    }
}
