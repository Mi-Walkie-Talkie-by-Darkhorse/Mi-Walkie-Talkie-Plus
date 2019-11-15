package org.jboss.netty.handler.codec.http.multipart;

import com.ifengyu.im.utils.pinyin.HanziToPinyin3.Token;
import java.nio.charset.Charset;
import java.util.regex.Pattern;
import org.jboss.netty.handler.codec.http.HttpConstants;

public abstract class AbstractHttpData implements HttpData {
    private static final Pattern REPLACE_PATTERN = Pattern.compile("[\\r\\t]");
    private static final Pattern STRIP_PATTERN = Pattern.compile("(?:^\\s+|\\s+$|\\n)");
    protected Charset charset = HttpConstants.DEFAULT_CHARSET;
    protected boolean completed;
    protected long definedSize;
    protected final String name;
    protected long size;

    protected AbstractHttpData(String str, Charset charset2, long j) {
        if (str == null) {
            throw new NullPointerException(HttpPostBodyUtil.NAME);
        }
        String replaceAll = STRIP_PATTERN.matcher(REPLACE_PATTERN.matcher(str).replaceAll(Token.SEPARATOR)).replaceAll("");
        if (replaceAll.length() == 0) {
            throw new IllegalArgumentException("empty name");
        }
        this.name = replaceAll;
        if (charset2 != null) {
            setCharset(charset2);
        }
        this.definedSize = j;
    }

    public String getName() {
        return this.name;
    }

    public boolean isCompleted() {
        return this.completed;
    }

    public Charset getCharset() {
        return this.charset;
    }

    public void setCharset(Charset charset2) {
        if (charset2 == null) {
            throw new NullPointerException("charset");
        }
        this.charset = charset2;
    }

    public long length() {
        return this.size;
    }
}
