package org.jboss.netty.handler.codec.http.multipart;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.handler.codec.http.HttpConstants;

public abstract class AbstractMemoryHttpData extends AbstractHttpData {
    private ChannelBuffer channelBuffer;
    private int chunkPosition;
    protected boolean isRenamed;

    protected AbstractMemoryHttpData(String str, Charset charset, long j) {
        super(str, charset, j);
    }

    public void setContent(ChannelBuffer channelBuffer2) throws IOException {
        if (channelBuffer2 == null) {
            throw new NullPointerException("buffer");
        }
        long readableBytes = (long) channelBuffer2.readableBytes();
        if (this.definedSize <= 0 || this.definedSize >= readableBytes) {
            this.channelBuffer = channelBuffer2;
            this.size = readableBytes;
            this.completed = true;
            return;
        }
        throw new IOException("Out of size: " + readableBytes + " > " + this.definedSize);
    }

    public void setContent(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            throw new NullPointerException("inputStream");
        }
        ChannelBuffer dynamicBuffer = ChannelBuffers.dynamicBuffer();
        byte[] bArr = new byte[16384];
        int read = inputStream.read(bArr);
        int i = 0;
        while (read > 0) {
            dynamicBuffer.writeBytes(bArr, 0, read);
            i += read;
            read = inputStream.read(bArr);
        }
        this.size = (long) i;
        if (this.definedSize <= 0 || this.definedSize >= this.size) {
            this.channelBuffer = dynamicBuffer;
            this.completed = true;
            return;
        }
        throw new IOException("Out of size: " + this.size + " > " + this.definedSize);
    }

    public void addContent(ChannelBuffer channelBuffer2, boolean z) throws IOException {
        if (channelBuffer2 != null) {
            long readableBytes = (long) channelBuffer2.readableBytes();
            if (this.definedSize <= 0 || this.definedSize >= this.size + readableBytes) {
                this.size = readableBytes + this.size;
                if (this.channelBuffer == null) {
                    this.channelBuffer = channelBuffer2;
                } else {
                    this.channelBuffer = ChannelBuffers.wrappedBuffer(this.channelBuffer, channelBuffer2);
                }
            } else {
                throw new IOException("Out of size: " + (readableBytes + this.size) + " > " + this.definedSize);
            }
        }
        if (z) {
            this.completed = true;
        } else if (channelBuffer2 == null) {
            throw new NullPointerException("buffer");
        }
    }

    public void setContent(File file) throws IOException {
        if (file == null) {
            throw new NullPointerException(HttpPostBodyUtil.FILE);
        }
        long length = file.length();
        if (length > 2147483647L) {
            throw new IllegalArgumentException("File too big to be loaded in memory");
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        FileChannel channel = fileInputStream.getChannel();
        ByteBuffer wrap = ByteBuffer.wrap(new byte[((int) length)]);
        for (int i = 0; ((long) i) < length; i += channel.read(wrap)) {
        }
        channel.close();
        fileInputStream.close();
        wrap.flip();
        this.channelBuffer = ChannelBuffers.wrappedBuffer(wrap);
        this.size = length;
        this.completed = true;
    }

    public void delete() {
    }

    public byte[] get() {
        if (this.channelBuffer == null) {
            return new byte[0];
        }
        byte[] bArr = new byte[this.channelBuffer.readableBytes()];
        this.channelBuffer.getBytes(this.channelBuffer.readerIndex(), bArr);
        return bArr;
    }

    public String getString() {
        return getString(HttpConstants.DEFAULT_CHARSET);
    }

    public String getString(Charset charset) {
        if (this.channelBuffer == null) {
            return "";
        }
        if (charset == null) {
            charset = HttpConstants.DEFAULT_CHARSET;
        }
        return this.channelBuffer.toString(charset);
    }

    public ChannelBuffer getChannelBuffer() {
        return this.channelBuffer;
    }

    public ChannelBuffer getChunk(int i) throws IOException {
        if (this.channelBuffer == null || i == 0 || this.channelBuffer.readableBytes() == 0) {
            this.chunkPosition = 0;
            return ChannelBuffers.EMPTY_BUFFER;
        }
        int readableBytes = this.channelBuffer.readableBytes() - this.chunkPosition;
        if (readableBytes == 0) {
            this.chunkPosition = 0;
            return ChannelBuffers.EMPTY_BUFFER;
        }
        if (readableBytes < i) {
            i = readableBytes;
        }
        ChannelBuffer slice = this.channelBuffer.slice(this.chunkPosition, i);
        this.chunkPosition += i;
        return slice;
    }

    public boolean isInMemory() {
        return true;
    }

    public boolean renameTo(File file) throws IOException {
        if (file == null) {
            throw new NullPointerException("dest");
        } else if (this.channelBuffer == null) {
            file.createNewFile();
            this.isRenamed = true;
            return true;
        } else {
            int readableBytes = this.channelBuffer.readableBytes();
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            FileChannel channel = fileOutputStream.getChannel();
            ByteBuffer byteBuffer = this.channelBuffer.toByteBuffer();
            int i = 0;
            while (i < readableBytes) {
                i += channel.write(byteBuffer);
            }
            channel.force(false);
            channel.close();
            fileOutputStream.close();
            this.isRenamed = true;
            if (i != readableBytes) {
                return false;
            }
            return true;
        }
    }

    public File getFile() throws IOException {
        throw new IOException("Not represented by a file");
    }
}
