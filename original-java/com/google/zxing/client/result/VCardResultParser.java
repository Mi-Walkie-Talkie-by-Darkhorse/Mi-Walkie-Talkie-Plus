package com.google.zxing.client.result;

import com.google.zxing.Result;
import com.xiaomi.mipush.sdk.Constants;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class VCardResultParser extends ResultParser {
    private static final Pattern BEGIN_VCARD = Pattern.compile("BEGIN:VCARD", 2);
    private static final Pattern COMMA = Pattern.compile(Constants.ACCEPT_TIME_SEPARATOR_SP);
    private static final Pattern CR_LF_SPACE_TAB = Pattern.compile("\r\n[ \t]");
    private static final Pattern EQUALS = Pattern.compile("=");
    private static final Pattern NEWLINE_ESCAPE = Pattern.compile("\\\\[nN]");
    private static final Pattern SEMICOLON = Pattern.compile(";");
    private static final Pattern SEMICOLON_OR_COMMA = Pattern.compile("[;,]");
    private static final Pattern UNESCAPED_SEMICOLONS = Pattern.compile("(?<!\\\\);+");
    private static final Pattern VCARD_ESCAPES = Pattern.compile("\\\\([,;\\\\])");
    private static final Pattern VCARD_LIKE_DATE = Pattern.compile("\\d{4}-?\\d{2}-?\\d{2}");

    public AddressBookParsedResult parse(Result result) {
        String[] split;
        List list;
        String massagedText = getMassagedText(result);
        Matcher matcher = BEGIN_VCARD.matcher(massagedText);
        if (!matcher.find() || matcher.start() != 0) {
            return null;
        }
        List matchVCardPrefixedField = matchVCardPrefixedField("FN", massagedText, true, false);
        if (matchVCardPrefixedField == null) {
            matchVCardPrefixedField = matchVCardPrefixedField("N", massagedText, true, false);
            formatNames(matchVCardPrefixedField);
        }
        List list2 = matchVCardPrefixedField;
        List matchSingleVCardPrefixedField = matchSingleVCardPrefixedField("NICKNAME", massagedText, true, false);
        if (matchSingleVCardPrefixedField == null) {
            split = null;
        } else {
            split = COMMA.split((CharSequence) matchSingleVCardPrefixedField.get(0));
        }
        List matchVCardPrefixedField2 = matchVCardPrefixedField("TEL", massagedText, true, false);
        List matchVCardPrefixedField3 = matchVCardPrefixedField("EMAIL", massagedText, true, false);
        List matchSingleVCardPrefixedField2 = matchSingleVCardPrefixedField("NOTE", massagedText, false, false);
        List matchVCardPrefixedField4 = matchVCardPrefixedField("ADR", massagedText, true, true);
        List matchSingleVCardPrefixedField3 = matchSingleVCardPrefixedField("ORG", massagedText, true, true);
        List matchSingleVCardPrefixedField4 = matchSingleVCardPrefixedField("BDAY", massagedText, true, false);
        if (matchSingleVCardPrefixedField4 == null || isLikeVCardDate((CharSequence) matchSingleVCardPrefixedField4.get(0))) {
            list = matchSingleVCardPrefixedField4;
        } else {
            list = null;
        }
        List matchSingleVCardPrefixedField5 = matchSingleVCardPrefixedField("TITLE", massagedText, true, false);
        List matchVCardPrefixedField5 = matchVCardPrefixedField("URL", massagedText, true, false);
        List matchSingleVCardPrefixedField6 = matchSingleVCardPrefixedField("IMPP", massagedText, true, false);
        List matchSingleVCardPrefixedField7 = matchSingleVCardPrefixedField("GEO", massagedText, true, false);
        String[] split2 = matchSingleVCardPrefixedField7 == null ? null : SEMICOLON_OR_COMMA.split((CharSequence) matchSingleVCardPrefixedField7.get(0));
        if (!(split2 == null || split2.length == 2)) {
            split2 = null;
        }
        return new AddressBookParsedResult(toPrimaryValues(list2), split, null, toPrimaryValues(matchVCardPrefixedField2), toTypes(matchVCardPrefixedField2), toPrimaryValues(matchVCardPrefixedField3), toTypes(matchVCardPrefixedField3), toPrimaryValue(matchSingleVCardPrefixedField6), toPrimaryValue(matchSingleVCardPrefixedField2), toPrimaryValues(matchVCardPrefixedField4), toTypes(matchVCardPrefixedField4), toPrimaryValue(matchSingleVCardPrefixedField3), toPrimaryValue(list), toPrimaryValue(matchSingleVCardPrefixedField5), toPrimaryValues(matchVCardPrefixedField5), split2);
    }

    static List<List<String>> matchVCardPrefixedField(CharSequence charSequence, String str, boolean z, boolean z2) {
        String str2;
        List list;
        int indexOf;
        String replaceAll;
        String str3;
        boolean z3;
        int i = 0;
        int length = str.length();
        List<List<String>> list2 = null;
        while (i < length) {
            Matcher matcher = Pattern.compile("(?:^|\n)" + charSequence + "(?:;([^:]*))?:", 2).matcher(str);
            if (i > 0) {
                i--;
            }
            if (!matcher.find(i)) {
                break;
            }
            int end = matcher.end(0);
            String group = matcher.group(1);
            ArrayList arrayList = null;
            boolean z4 = false;
            String str4 = null;
            String str5 = null;
            if (group != null) {
                String[] split = SEMICOLON.split(group);
                int length2 = split.length;
                int i2 = 0;
                while (i2 < length2) {
                    String str6 = split[i2];
                    if (arrayList == null) {
                        arrayList = new ArrayList(1);
                    }
                    arrayList.add(str6);
                    String[] split2 = EQUALS.split(str6, 2);
                    if (split2.length > 1) {
                        String str7 = split2[0];
                        str3 = split2[1];
                        if (!"ENCODING".equalsIgnoreCase(str7) || !"QUOTED-PRINTABLE".equalsIgnoreCase(str3)) {
                            if ("CHARSET".equalsIgnoreCase(str7)) {
                                z3 = z4;
                            } else if ("VALUE".equalsIgnoreCase(str7)) {
                                str5 = str3;
                                str3 = str4;
                                z3 = z4;
                            }
                            i2++;
                            z4 = z3;
                            str4 = str3;
                        } else {
                            String str8 = str4;
                            z3 = true;
                            str3 = str8;
                            i2++;
                            z4 = z3;
                            str4 = str3;
                        }
                    }
                    str3 = str4;
                    z3 = z4;
                    i2++;
                    z4 = z3;
                    str4 = str3;
                }
                str2 = str5;
                list = arrayList;
            } else {
                str2 = null;
                list = null;
            }
            int i3 = end;
            while (true) {
                indexOf = str.indexOf(10, i3);
                if (indexOf < 0) {
                    break;
                } else if (indexOf >= str.length() - 1 || (str.charAt(indexOf + 1) != ' ' && str.charAt(indexOf + 1) != 9)) {
                    if (!z4 || ((indexOf <= 0 || str.charAt(indexOf - 1) != '=') && (indexOf < 2 || str.charAt(indexOf - 2) != '='))) {
                        break;
                    }
                    i3 = indexOf + 1;
                } else {
                    i3 = indexOf + 2;
                }
            }
            if (indexOf < 0) {
                i = length;
            } else if (indexOf > end) {
                if (list2 == null) {
                    list2 = new ArrayList<>(1);
                }
                if (indexOf > 0 && str.charAt(indexOf - 1) == 13) {
                    indexOf--;
                }
                String substring = str.substring(end, indexOf);
                if (z) {
                    substring = substring.trim();
                }
                if (z4) {
                    replaceAll = decodeQuotedPrintable(substring, str4);
                    if (z2) {
                        replaceAll = UNESCAPED_SEMICOLONS.matcher(replaceAll).replaceAll("\n").trim();
                    }
                } else {
                    if (z2) {
                        substring = UNESCAPED_SEMICOLONS.matcher(substring).replaceAll("\n").trim();
                    }
                    replaceAll = VCARD_ESCAPES.matcher(NEWLINE_ESCAPE.matcher(CR_LF_SPACE_TAB.matcher(substring).replaceAll("")).replaceAll("\n")).replaceAll("$1");
                }
                if ("uri".equals(str2)) {
                    replaceAll = URI.create(replaceAll).getSchemeSpecificPart();
                }
                if (list == null) {
                    ArrayList arrayList2 = new ArrayList(1);
                    arrayList2.add(replaceAll);
                    list2.add(arrayList2);
                } else {
                    list.add(0, replaceAll);
                    list2.add(list);
                }
                i = indexOf + 1;
            } else {
                i = indexOf + 1;
            }
        }
        return list2;
    }

    private static String decodeQuotedPrintable(CharSequence charSequence, String str) {
        int length = charSequence.length();
        StringBuilder sb = new StringBuilder(length);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            switch (charAt) {
                case 10:
                case 13:
                    break;
                case '=':
                    if (i >= length - 2) {
                        break;
                    } else {
                        char charAt2 = charSequence.charAt(i + 1);
                        if (!(charAt2 == 13 || charAt2 == 10)) {
                            char charAt3 = charSequence.charAt(i + 2);
                            int parseHexDigit = parseHexDigit(charAt2);
                            int parseHexDigit2 = parseHexDigit(charAt3);
                            if (parseHexDigit >= 0 && parseHexDigit2 >= 0) {
                                byteArrayOutputStream.write((parseHexDigit << 4) + parseHexDigit2);
                            }
                            i += 2;
                            break;
                        }
                    }
                default:
                    maybeAppendFragment(byteArrayOutputStream, str, sb);
                    sb.append(charAt);
                    break;
            }
            i++;
        }
        maybeAppendFragment(byteArrayOutputStream, str, sb);
        return sb.toString();
    }

    private static void maybeAppendFragment(ByteArrayOutputStream byteArrayOutputStream, String str, StringBuilder sb) {
        String str2;
        if (byteArrayOutputStream.size() > 0) {
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            if (str == null) {
                str2 = new String(byteArray, StandardCharsets.UTF_8);
            } else {
                try {
                    str2 = new String(byteArray, str);
                } catch (UnsupportedEncodingException e) {
                    str2 = new String(byteArray, StandardCharsets.UTF_8);
                }
            }
            byteArrayOutputStream.reset();
            sb.append(str2);
        }
    }

    static List<String> matchSingleVCardPrefixedField(CharSequence charSequence, String str, boolean z, boolean z2) {
        List matchVCardPrefixedField = matchVCardPrefixedField(charSequence, str, z, z2);
        if (matchVCardPrefixedField == null || matchVCardPrefixedField.isEmpty()) {
            return null;
        }
        return (List) matchVCardPrefixedField.get(0);
    }

    private static String toPrimaryValue(List<String> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (String) list.get(0);
    }

    private static String[] toPrimaryValues(Collection<List<String>> collection) {
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (List list : collection) {
            String str = (String) list.get(0);
            if (str != null && !str.isEmpty()) {
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private static String[] toTypes(Collection<List<String>> collection) {
        String str;
        if (collection == null || collection.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList(collection.size());
        for (List list : collection) {
            String str2 = (String) list.get(0);
            if (str2 != null && !str2.isEmpty()) {
                int i = 1;
                while (true) {
                    int i2 = i;
                    if (i2 >= list.size()) {
                        str = null;
                        break;
                    }
                    str = (String) list.get(i2);
                    int indexOf = str.indexOf(61);
                    if (indexOf < 0) {
                        break;
                    } else if ("TYPE".equalsIgnoreCase(str.substring(0, indexOf))) {
                        str = str.substring(indexOf + 1);
                        break;
                    } else {
                        i = i2 + 1;
                    }
                }
                arrayList.add(str);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    private static boolean isLikeVCardDate(CharSequence charSequence) {
        return charSequence == null || VCARD_LIKE_DATE.matcher(charSequence).matches();
    }

    private static void formatNames(Iterable<List<String>> iterable) {
        if (iterable != null) {
            for (List list : iterable) {
                String str = (String) list.get(0);
                String[] strArr = new String[5];
                int i = 0;
                int i2 = 0;
                while (i < 4) {
                    int indexOf = str.indexOf(59, i2);
                    if (indexOf < 0) {
                        break;
                    }
                    strArr[i] = str.substring(i2, indexOf);
                    i++;
                    i2 = indexOf + 1;
                }
                strArr[i] = str.substring(i2);
                StringBuilder sb = new StringBuilder(100);
                maybeAppendComponent(strArr, 3, sb);
                maybeAppendComponent(strArr, 1, sb);
                maybeAppendComponent(strArr, 2, sb);
                maybeAppendComponent(strArr, 0, sb);
                maybeAppendComponent(strArr, 4, sb);
                list.set(0, sb.toString().trim());
            }
        }
    }

    private static void maybeAppendComponent(String[] strArr, int i, StringBuilder sb) {
        if (strArr[i] != null && !strArr[i].isEmpty()) {
            if (sb.length() > 0) {
                sb.append(' ');
            }
            sb.append(strArr[i]);
        }
    }
}
