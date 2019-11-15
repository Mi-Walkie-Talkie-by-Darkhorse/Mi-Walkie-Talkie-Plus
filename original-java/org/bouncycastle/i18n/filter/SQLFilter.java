package org.bouncycastle.i18n.filter;

public class SQLFilter implements Filter {
    public String doFilter(String str) {
        StringBuffer stringBuffer = new StringBuffer(str);
        int i = 0;
        while (i < stringBuffer.length()) {
            switch (stringBuffer.charAt(i)) {
                case 10:
                    stringBuffer.replace(i, i + 1, "\\n");
                    i++;
                    break;
                case 13:
                    stringBuffer.replace(i, i + 1, "\\r");
                    i++;
                    break;
                case '\"':
                    stringBuffer.replace(i, i + 1, "\\\"");
                    i++;
                    break;
                case '\'':
                    stringBuffer.replace(i, i + 1, "\\'");
                    i++;
                    break;
                case '-':
                    stringBuffer.replace(i, i + 1, "\\-");
                    i++;
                    break;
                case '/':
                    stringBuffer.replace(i, i + 1, "\\/");
                    i++;
                    break;
                case ';':
                    stringBuffer.replace(i, i + 1, "\\;");
                    i++;
                    break;
                case '=':
                    stringBuffer.replace(i, i + 1, "\\=");
                    i++;
                    break;
                case '\\':
                    stringBuffer.replace(i, i + 1, "\\\\");
                    i++;
                    break;
            }
            i++;
        }
        return stringBuffer.toString();
    }

    public String doFilterUrl(String str) {
        return doFilter(str);
    }
}
