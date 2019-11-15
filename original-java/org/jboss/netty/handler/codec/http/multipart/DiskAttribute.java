package org.jboss.netty.handler.codec.http.multipart;

import java.io.IOException;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.handler.codec.http.HttpConstants;
import org.jboss.netty.handler.codec.http.multipart.InterfaceHttpData.HttpDataType;

public class DiskAttribute extends AbstractDiskHttpData implements Attribute {
    public static String baseDirectory = null;
    public static boolean deleteOnExitTemporaryFile = true;
    public static final String postfix = ".att";
    public static final String prefix = "Attr_";

    public DiskAttribute(String str) {
        super(str, HttpConstants.DEFAULT_CHARSET, 0);
    }

    public DiskAttribute(String str, String str2) throws IOException {
        super(str, HttpConstants.DEFAULT_CHARSET, 0);
        setValue(str2);
    }

    public HttpDataType getHttpDataType() {
        return HttpDataType.Attribute;
    }

    public String getValue() throws IOException {
        return new String(get(), this.charset.name());
    }

    public void setValue(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("value");
        }
        ChannelBuffer wrappedBuffer = ChannelBuffers.wrappedBuffer(str.getBytes(this.charset.name()));
        if (this.definedSize > 0) {
            this.definedSize = (long) wrappedBuffer.readableBytes();
        }
        setContent(wrappedBuffer);
    }

    public void addContent(ChannelBuffer channelBuffer, boolean z) throws IOException {
        int readableBytes = channelBuffer.readableBytes();
        if (this.definedSize > 0 && this.definedSize < this.size + ((long) readableBytes)) {
            this.definedSize = ((long) readableBytes) + this.size;
        }
        super.addContent(channelBuffer, z);
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
        if (interfaceHttpData instanceof Attribute) {
            return compareTo((Attribute) interfaceHttpData);
        }
        throw new ClassCastException("Cannot compare " + getHttpDataType() + " with " + interfaceHttpData.getHttpDataType());
    }

    public int compareTo(Attribute attribute) {
        return getName().compareToIgnoreCase(attribute.getName());
    }

    public String toString() {
        try {
            return getName() + '=' + getValue();
        } catch (IOException e) {
            return getName() + "=IoException";
        }
    }

    /* access modifiers changed from: protected */
    public boolean deleteOnExit() {
        return deleteOnExitTemporaryFile;
    }

    /* access modifiers changed from: protected */
    public String getBaseDirectory() {
        return baseDirectory;
    }

    /* access modifiers changed from: protected */
    public String getDiskFilename() {
        return getName() + postfix;
    }

    /* access modifiers changed from: protected */
    public String getPostfix() {
        return postfix;
    }

    /* access modifiers changed from: protected */
    public String getPrefix() {
        return prefix;
    }
}
