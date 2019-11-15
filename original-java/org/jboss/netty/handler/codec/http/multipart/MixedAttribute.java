package org.jboss.netty.handler.codec.http.multipart;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.handler.codec.http.multipart.InterfaceHttpData.HttpDataType;

public class MixedAttribute implements Attribute {
    private Attribute attribute;
    private final long limitSize;

    public MixedAttribute(String str, long j) {
        this.limitSize = j;
        this.attribute = new MemoryAttribute(str);
    }

    public MixedAttribute(String str, String str2, long j) {
        this.limitSize = j;
        if (((long) str2.length()) > this.limitSize) {
            try {
                this.attribute = new DiskAttribute(str, str2);
            } catch (IOException e) {
                try {
                    this.attribute = new MemoryAttribute(str, str2);
                } catch (IOException e2) {
                    throw new IllegalArgumentException(e);
                }
            }
        } else {
            try {
                this.attribute = new MemoryAttribute(str, str2);
            } catch (IOException e3) {
                throw new IllegalArgumentException(e3);
            }
        }
    }

    public void addContent(ChannelBuffer channelBuffer, boolean z) throws IOException {
        if ((this.attribute instanceof MemoryAttribute) && this.attribute.length() + ((long) channelBuffer.readableBytes()) > this.limitSize) {
            DiskAttribute diskAttribute = new DiskAttribute(this.attribute.getName());
            if (((MemoryAttribute) this.attribute).getChannelBuffer() != null) {
                diskAttribute.addContent(((MemoryAttribute) this.attribute).getChannelBuffer(), false);
            }
            this.attribute = diskAttribute;
        }
        this.attribute.addContent(channelBuffer, z);
    }

    public void delete() {
        this.attribute.delete();
    }

    public byte[] get() throws IOException {
        return this.attribute.get();
    }

    public ChannelBuffer getChannelBuffer() throws IOException {
        return this.attribute.getChannelBuffer();
    }

    public Charset getCharset() {
        return this.attribute.getCharset();
    }

    public String getString() throws IOException {
        return this.attribute.getString();
    }

    public String getString(Charset charset) throws IOException {
        return this.attribute.getString(charset);
    }

    public boolean isCompleted() {
        return this.attribute.isCompleted();
    }

    public boolean isInMemory() {
        return this.attribute.isInMemory();
    }

    public long length() {
        return this.attribute.length();
    }

    public boolean renameTo(File file) throws IOException {
        return this.attribute.renameTo(file);
    }

    public void setCharset(Charset charset) {
        this.attribute.setCharset(charset);
    }

    public void setContent(ChannelBuffer channelBuffer) throws IOException {
        if (((long) channelBuffer.readableBytes()) > this.limitSize && (this.attribute instanceof MemoryAttribute)) {
            this.attribute = new DiskAttribute(this.attribute.getName());
        }
        this.attribute.setContent(channelBuffer);
    }

    public void setContent(File file) throws IOException {
        if (file.length() > this.limitSize && (this.attribute instanceof MemoryAttribute)) {
            this.attribute = new DiskAttribute(this.attribute.getName());
        }
        this.attribute.setContent(file);
    }

    public void setContent(InputStream inputStream) throws IOException {
        if (this.attribute instanceof MemoryAttribute) {
            this.attribute = new DiskAttribute(this.attribute.getName());
        }
        this.attribute.setContent(inputStream);
    }

    public HttpDataType getHttpDataType() {
        return this.attribute.getHttpDataType();
    }

    public String getName() {
        return this.attribute.getName();
    }

    public int compareTo(InterfaceHttpData interfaceHttpData) {
        return this.attribute.compareTo(interfaceHttpData);
    }

    public String toString() {
        return "Mixed: " + this.attribute.toString();
    }

    public String getValue() throws IOException {
        return this.attribute.getValue();
    }

    public void setValue(String str) throws IOException {
        this.attribute.setValue(str);
    }

    public ChannelBuffer getChunk(int i) throws IOException {
        return this.attribute.getChunk(i);
    }

    public File getFile() throws IOException {
        return this.attribute.getFile();
    }
}
