package org.jboss.netty.handler.codec.http;

import java.util.Date;
import java.util.Set;
import java.util.TreeSet;

public class CookieEncoder {
    private final Set<Cookie> cookies = new TreeSet();
    private final boolean server;

    public CookieEncoder(boolean z) {
        this.server = z;
    }

    public void addCookie(String str, String str2) {
        this.cookies.add(new DefaultCookie(str, str2));
    }

    public void addCookie(Cookie cookie) {
        this.cookies.add(cookie);
    }

    public String encode() {
        String encodeClientSide;
        if (this.server) {
            encodeClientSide = encodeServerSide();
        } else {
            encodeClientSide = encodeClientSide();
        }
        this.cookies.clear();
        return encodeClientSide;
    }

    private String encodeServerSide() {
        if (this.cookies.size() > 1) {
            throw new IllegalStateException("encode() can encode only one cookie on server mode: " + this.cookies.size() + " cookies added");
        }
        StringBuilder sb = new StringBuilder();
        for (Cookie cookie : this.cookies) {
            add(sb, cookie.getName(), cookie.getValue());
            if (cookie.getMaxAge() != Integer.MIN_VALUE) {
                if (cookie.getVersion() == 0) {
                    addUnquoted(sb, "Expires", new CookieDateFormat().format(new Date(System.currentTimeMillis() + (((long) cookie.getMaxAge()) * 1000))));
                } else {
                    add(sb, "Max-Age", cookie.getMaxAge());
                }
            }
            if (cookie.getPath() != null) {
                if (cookie.getVersion() > 0) {
                    add(sb, "Path", cookie.getPath());
                } else {
                    addUnquoted(sb, "Path", cookie.getPath());
                }
            }
            if (cookie.getDomain() != null) {
                if (cookie.getVersion() > 0) {
                    add(sb, "Domain", cookie.getDomain());
                } else {
                    addUnquoted(sb, "Domain", cookie.getDomain());
                }
            }
            if (cookie.isSecure()) {
                sb.append("Secure");
                sb.append(';');
                sb.append(' ');
            }
            if (cookie.isHttpOnly()) {
                sb.append("HTTPOnly");
                sb.append(';');
                sb.append(' ');
            }
            if (cookie.getVersion() >= 1) {
                if (cookie.getComment() != null) {
                    add(sb, "Comment", cookie.getComment());
                }
                add(sb, "Version", 1);
                if (cookie.getCommentUrl() != null) {
                    addQuoted(sb, "CommentURL", cookie.getCommentUrl());
                }
                if (!cookie.getPorts().isEmpty()) {
                    sb.append("Port");
                    sb.append('=');
                    sb.append('\"');
                    for (Integer intValue : cookie.getPorts()) {
                        sb.append(intValue.intValue());
                        sb.append(',');
                    }
                    sb.setCharAt(sb.length() - 1, '\"');
                    sb.append(';');
                    sb.append(' ');
                }
                if (cookie.isDiscard()) {
                    sb.append("Discard");
                    sb.append(';');
                    sb.append(' ');
                }
            }
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 2);
        }
        return sb.toString();
    }

    private String encodeClientSide() {
        StringBuilder sb = new StringBuilder();
        for (Cookie cookie : this.cookies) {
            if (cookie.getVersion() >= 1) {
                add(sb, "$Version", 1);
            }
            add(sb, cookie.getName(), cookie.getValue());
            if (cookie.getPath() != null) {
                add(sb, "$Path", cookie.getPath());
            }
            if (cookie.getDomain() != null) {
                add(sb, "$Domain", cookie.getDomain());
            }
            if (cookie.getVersion() >= 1 && !cookie.getPorts().isEmpty()) {
                sb.append('$');
                sb.append("Port");
                sb.append('=');
                sb.append('\"');
                for (Integer intValue : cookie.getPorts()) {
                    sb.append(intValue.intValue());
                    sb.append(',');
                }
                sb.setCharAt(sb.length() - 1, '\"');
                sb.append(';');
                sb.append(' ');
            }
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 2);
        }
        return sb.toString();
    }

    private static void add(StringBuilder sb, String str, String str2) {
        if (str2 == null) {
            addQuoted(sb, str, "");
            return;
        }
        int i = 0;
        while (i < str2.length()) {
            switch (str2.charAt(i)) {
                case 9:
                case ' ':
                case '\"':
                case '(':
                case ')':
                case ',':
                case '/':
                case ':':
                case ';':
                case '<':
                case '=':
                case '>':
                case '?':
                case '@':
                case '[':
                case '\\':
                case ']':
                case '{':
                case '}':
                    addQuoted(sb, str, str2);
                    return;
                default:
                    i++;
            }
        }
        addUnquoted(sb, str, str2);
    }

    private static void addUnquoted(StringBuilder sb, String str, String str2) {
        sb.append(str);
        sb.append('=');
        sb.append(str2);
        sb.append(';');
        sb.append(' ');
    }

    private static void addQuoted(StringBuilder sb, String str, String str2) {
        if (str2 == null) {
            str2 = "";
        }
        sb.append(str);
        sb.append('=');
        sb.append('\"');
        sb.append(str2.replace("\\", "\\\\").replace("\"", "\\\""));
        sb.append('\"');
        sb.append(';');
        sb.append(' ');
    }

    private static void add(StringBuilder sb, String str, int i) {
        sb.append(str);
        sb.append('=');
        sb.append(i);
        sb.append(';');
        sb.append(' ');
    }
}
