package org.jboss.netty.handler.codec.http.multipart;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.handler.codec.http.multipart.InterfaceHttpData.HttpDataType;

public class MixedFileUpload implements FileUpload {
    private final long definedSize;
    private FileUpload fileUpload;
    private final long limitSize;

    public MixedFileUpload(String str, String str2, String str3, String str4, Charset charset, long j, long j2) {
        this.limitSize = j2;
        if (j > this.limitSize) {
            this.fileUpload = new DiskFileUpload(str, str2, str3, str4, charset, j);
        } else {
            this.fileUpload = new MemoryFileUpload(str, str2, str3, str4, charset, j);
        }
        this.definedSize = j;
    }

    public void addContent(ChannelBuffer channelBuffer, boolean z) throws IOException {
        if ((this.fileUpload instanceof MemoryFileUpload) && this.fileUpload.length() + ((long) channelBuffer.readableBytes()) > this.limitSize) {
            DiskFileUpload diskFileUpload = new DiskFileUpload(this.fileUpload.getName(), this.fileUpload.getFilename(), this.fileUpload.getContentType(), this.fileUpload.getContentTransferEncoding(), this.fileUpload.getCharset(), this.definedSize);
            if (((MemoryFileUpload) this.fileUpload).getChannelBuffer() != null) {
                diskFileUpload.addContent(((MemoryFileUpload) this.fileUpload).getChannelBuffer(), false);
            }
            this.fileUpload = diskFileUpload;
        }
        this.fileUpload.addContent(channelBuffer, z);
    }

    public void delete() {
        this.fileUpload.delete();
    }

    public byte[] get() throws IOException {
        return this.fileUpload.get();
    }

    public ChannelBuffer getChannelBuffer() throws IOException {
        return this.fileUpload.getChannelBuffer();
    }

    public Charset getCharset() {
        return this.fileUpload.getCharset();
    }

    public String getContentType() {
        return this.fileUpload.getContentType();
    }

    public String getContentTransferEncoding() {
        return this.fileUpload.getContentTransferEncoding();
    }

    public String getFilename() {
        return this.fileUpload.getFilename();
    }

    public String getString() throws IOException {
        return this.fileUpload.getString();
    }

    public String getString(Charset charset) throws IOException {
        return this.fileUpload.getString(charset);
    }

    public boolean isCompleted() {
        return this.fileUpload.isCompleted();
    }

    public boolean isInMemory() {
        return this.fileUpload.isInMemory();
    }

    public long length() {
        return this.fileUpload.length();
    }

    public boolean renameTo(File file) throws IOException {
        return this.fileUpload.renameTo(file);
    }

    public void setCharset(Charset charset) {
        this.fileUpload.setCharset(charset);
    }

    public void setContent(ChannelBuffer channelBuffer) throws IOException {
        if (((long) channelBuffer.readableBytes()) > this.limitSize && (this.fileUpload instanceof MemoryFileUpload)) {
            this.fileUpload = new DiskFileUpload(this.fileUpload.getName(), this.fileUpload.getFilename(), this.fileUpload.getContentType(), this.fileUpload.getContentTransferEncoding(), this.fileUpload.getCharset(), this.definedSize);
        }
        this.fileUpload.setContent(channelBuffer);
    }

    public void setContent(File file) throws IOException {
        if (file.length() > this.limitSize && (this.fileUpload instanceof MemoryFileUpload)) {
            this.fileUpload = new DiskFileUpload(this.fileUpload.getName(), this.fileUpload.getFilename(), this.fileUpload.getContentType(), this.fileUpload.getContentTransferEncoding(), this.fileUpload.getCharset(), this.definedSize);
        }
        this.fileUpload.setContent(file);
    }

    public void setContent(InputStream inputStream) throws IOException {
        if (this.fileUpload instanceof MemoryFileUpload) {
            this.fileUpload = new DiskFileUpload(this.fileUpload.getName(), this.fileUpload.getFilename(), this.fileUpload.getContentType(), this.fileUpload.getContentTransferEncoding(), this.fileUpload.getCharset(), this.definedSize);
        }
        this.fileUpload.setContent(inputStream);
    }

    public void setContentType(String str) {
        this.fileUpload.setContentType(str);
    }

    public void setContentTransferEncoding(String str) {
        this.fileUpload.setContentTransferEncoding(str);
    }

    public void setFilename(String str) {
        this.fileUpload.setFilename(str);
    }

    public HttpDataType getHttpDataType() {
        return this.fileUpload.getHttpDataType();
    }

    public String getName() {
        return this.fileUpload.getName();
    }

    public int compareTo(InterfaceHttpData interfaceHttpData) {
        return this.fileUpload.compareTo(interfaceHttpData);
    }

    public String toString() {
        return "Mixed: " + this.fileUpload.toString();
    }

    public ChannelBuffer getChunk(int i) throws IOException {
        return this.fileUpload.getChunk(i);
    }

    public File getFile() throws IOException {
        return this.fileUpload.getFile();
    }
}
