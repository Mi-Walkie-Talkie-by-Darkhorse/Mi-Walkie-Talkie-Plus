package org.bouncycastle.i18n.filter;

public class HTMLFilter implements Filter {
    public String doFilter(String str) {
        StringBuffer stringBuffer = new StringBuffer(str);
        int i = 0;
        while (i < stringBuffer.length()) {
            switch (stringBuffer.charAt(i)) {
                case '\"':
                    stringBuffer.replace(i, i + 1, "&#34");
                    break;
                case '#':
                    stringBuffer.replace(i, i + 1, "&#35");
                    break;
                case '%':
                    stringBuffer.replace(i, i + 1, "&#37");
                    break;
                case '&':
                    stringBuffer.replace(i, i + 1, "&#38");
                    break;
                case '\'':
                    stringBuffer.replace(i, i + 1, "&#39");
                    break;
                case '(':
                    stringBuffer.replace(i, i + 1, "&#40");
                    break;
                case ')':
                    stringBuffer.replace(i, i + 1, "&#41");
                    break;
                case '+':
                    stringBuffer.replace(i, i + 1, "&#43");
                    break;
                case '-':
                    stringBuffer.replace(i, i + 1, "&#45");
                    break;
                case ';':
                    stringBuffer.replace(i, i + 1, "&#59");
                    break;
                case '<':
                    stringBuffer.replace(i, i + 1, "&#60");
                    break;
                case '>':
                    stringBuffer.replace(i, i + 1, "&#62");
                    break;
                default:
                    i -= 3;
                    break;
            }
            i += 4;
        }
        return stringBuffer.toString();
    }

    public String doFilterUrl(String str) {
        return doFilter(str);
    }
}
