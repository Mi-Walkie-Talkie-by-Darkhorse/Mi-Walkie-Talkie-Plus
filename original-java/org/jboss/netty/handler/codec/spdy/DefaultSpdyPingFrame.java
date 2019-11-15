package org.jboss.netty.handler.codec.spdy;

import org.jboss.netty.util.internal.StringUtil;

public class DefaultSpdyPingFrame implements SpdyPingFrame {
    private int id;

    public DefaultSpdyPingFrame(int i) {
        setId(i);
    }

    @Deprecated
    public int getID() {
        return getId();
    }

    public int getId() {
        return this.id;
    }

    @Deprecated
    public void setID(int i) {
        setId(i);
    }

    public void setId(int i) {
        this.id = i;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(StringUtil.NEWLINE);
        sb.append("--> ID = ");
        sb.append(this.id);
        return sb.toString();
    }
}
