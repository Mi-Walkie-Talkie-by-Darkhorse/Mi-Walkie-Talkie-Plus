package org.greenrobot.greendao.b;

import org.greenrobot.greendao.DaoException;
import org.greenrobot.greendao.f;

/* compiled from: SqlUtils */
public class d {
    private static final char[] a = "0123456789ABCDEF".toCharArray();

    public static StringBuilder a(StringBuilder sb, String str, f fVar) {
        if (str != null) {
            sb.append(str).append('.');
        }
        sb.append('\"').append(fVar.e).append('\"');
        return sb;
    }

    public static StringBuilder a(StringBuilder sb, String str) {
        sb.append('\"').append(str).append('\"');
        return sb;
    }

    public static StringBuilder a(StringBuilder sb, String str, String str2) {
        sb.append(str).append(".\"").append(str2).append('\"');
        return sb;
    }

    public static StringBuilder a(StringBuilder sb, String str, String[] strArr) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            a(sb, str, strArr[i]);
            if (i < length - 1) {
                sb.append(',');
            }
        }
        return sb;
    }

    public static StringBuilder a(StringBuilder sb, String[] strArr) {
        int length = strArr.length;
        for (int i = 0; i < length; i++) {
            sb.append('\"').append(strArr[i]).append('\"');
            if (i < length - 1) {
                sb.append(',');
            }
        }
        return sb;
    }

    public static StringBuilder a(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 < i - 1) {
                sb.append("?,");
            } else {
                sb.append('?');
            }
        }
        return sb;
    }

    public static StringBuilder b(StringBuilder sb, String[] strArr) {
        for (int i = 0; i < strArr.length; i++) {
            a(sb, strArr[i]).append("=?");
            if (i < strArr.length - 1) {
                sb.append(',');
            }
        }
        return sb;
    }

    public static StringBuilder b(StringBuilder sb, String str, String[] strArr) {
        for (int i = 0; i < strArr.length; i++) {
            a(sb, str, strArr[i]).append("=?");
            if (i < strArr.length - 1) {
                sb.append(',');
            }
        }
        return sb;
    }

    public static String a(String str, String str2, String[] strArr) {
        StringBuilder sb = new StringBuilder(str);
        sb.append('\"').append(str2).append('\"').append(" (");
        a(sb, strArr);
        sb.append(") VALUES (");
        a(sb, strArr.length);
        sb.append(')');
        return sb.toString();
    }

    public static String a(String str, String str2, String[] strArr, boolean z) {
        if (str2 == null || str2.length() < 0) {
            throw new DaoException("Table alias required");
        }
        StringBuilder sb = new StringBuilder(z ? "SELECT DISTINCT " : "SELECT ");
        a(sb, str2, strArr).append(" FROM ");
        sb.append('\"').append(str).append('\"').append(' ').append(str2).append(' ');
        return sb.toString();
    }

    public static String a(String str, String[] strArr) {
        String str2 = '\"' + str + '\"';
        StringBuilder sb = new StringBuilder("DELETE FROM ");
        sb.append(str2);
        if (strArr != null && strArr.length > 0) {
            sb.append(" WHERE ");
            b(sb, str2, strArr);
        }
        return sb.toString();
    }

    public static String a(String str, String[] strArr, String[] strArr2) {
        String str2 = '\"' + str + '\"';
        StringBuilder sb = new StringBuilder("UPDATE ");
        sb.append(str2).append(" SET ");
        b(sb, strArr);
        sb.append(" WHERE ");
        b(sb, str2, strArr2);
        return sb.toString();
    }

    public static String a(String str) {
        return "SELECT COUNT(*) FROM \"" + str + '\"';
    }
}
