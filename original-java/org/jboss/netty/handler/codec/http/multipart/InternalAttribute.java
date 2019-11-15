package org.jboss.netty.handler.codec.http.multipart;

import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.handler.codec.http.multipart.InterfaceHttpData.HttpDataType;
import org.jboss.netty.util.CharsetUtil;

public class InternalAttribute implements InterfaceHttpData {
    private final Charset charset;
    @Deprecated
    protected final List<String> value;

    @Deprecated
    public InternalAttribute() {
        this(CharsetUtil.UTF_8);
    }

    @Deprecated
    public InternalAttribute(Charset charset2) {
        this.value = new ArrayList();
        this.charset = charset2;
    }

    public HttpDataType getHttpDataType() {
        return HttpDataType.InternalAttribute;
    }

    @Deprecated
    public List<String> getValue() {
        return this.value;
    }

    public void addValue(String str) {
        if (str == null) {
            throw new NullPointerException("value");
        }
        this.value.add(str);
    }

    public void addValue(String str, int i) {
        if (str == null) {
            throw new NullPointerException("value");
        }
        this.value.add(i, str);
    }

    public void setValue(String str, int i) {
        if (str == null) {
            throw new NullPointerException("value");
        }
        this.value.set(i, str);
    }

    public int hashCode() {
        return getName().hashCode();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Attribute)) {
            return false;
        }
        return getName().equalsIgnoreCase(((Attribute) obj).getName());
    }

    public int compareTo(InterfaceHttpData interfaceHttpData) {
        if (interfaceHttpData instanceof InternalAttribute) {
            return compareTo((InternalAttribute) interfaceHttpData);
        }
        throw new ClassCastException("Cannot compare " + getHttpDataType() + " with " + interfaceHttpData.getHttpDataType());
    }

    public int compareTo(InternalAttribute internalAttribute) {
        return getName().compareToIgnoreCase(internalAttribute.getName());
    }

    public int size() {
        int i = 0;
        Iterator it = this.value.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2;
            }
            try {
                i = ((String) it.next()).getBytes(this.charset.name()).length + i2;
            } catch (UnsupportedEncodingException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        for (String append : this.value) {
            sb.append(append);
        }
        return sb.toString();
    }

    public ChannelBuffer toChannelBuffer() {
        ChannelBuffer[] channelBufferArr = new ChannelBuffer[this.value.size()];
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= channelBufferArr.length) {
                return ChannelBuffers.wrappedBuffer(channelBufferArr);
            }
            channelBufferArr[i2] = ChannelBuffers.copiedBuffer((CharSequence) this.value.get(i2), this.charset);
            i = i2 + 1;
        }
    }

    public String getName() {
        return "InternalAttribute";
    }
}
