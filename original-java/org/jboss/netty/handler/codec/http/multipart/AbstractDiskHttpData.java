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

public abstract class AbstractDiskHttpData extends AbstractHttpData {
    protected File file;
    private FileChannel fileChannel;
    private boolean isRenamed;

    /* access modifiers changed from: protected */
    public abstract boolean deleteOnExit();

    /* access modifiers changed from: protected */
    public abstract String getBaseDirectory();

    /* access modifiers changed from: protected */
    public abstract String getDiskFilename();

    /* access modifiers changed from: protected */
    public abstract String getPostfix();

    /* access modifiers changed from: protected */
    public abstract String getPrefix();

    protected AbstractDiskHttpData(String str, Charset charset, long j) {
        super(str, charset, j);
    }

    private File tempFile() throws IOException {
        String postfix;
        File createTempFile;
        String diskFilename = getDiskFilename();
        if (diskFilename != null) {
            postfix = '_' + diskFilename;
        } else {
            postfix = getPostfix();
        }
        if (getBaseDirectory() == null) {
            createTempFile = File.createTempFile(getPrefix(), postfix);
        } else {
            createTempFile = File.createTempFile(getPrefix(), postfix, new File(getBaseDirectory()));
        }
        if (deleteOnExit()) {
            createTempFile.deleteOnExit();
        }
        return createTempFile;
    }

    public void setContent(ChannelBuffer channelBuffer) throws IOException {
        if (channelBuffer == null) {
            throw new NullPointerException("buffer");
        }
        this.size = (long) channelBuffer.readableBytes();
        if (this.definedSize <= 0 || this.definedSize >= this.size) {
            if (this.file == null) {
                this.file = tempFile();
            }
            if (channelBuffer.readableBytes() == 0) {
                this.file.createNewFile();
                return;
            }
            FileOutputStream fileOutputStream = new FileOutputStream(this.file);
            FileChannel channel = fileOutputStream.getChannel();
            ByteBuffer byteBuffer = channelBuffer.toByteBuffer();
            int i = 0;
            while (((long) i) < this.size) {
                i += channel.write(byteBuffer);
            }
            channelBuffer.readerIndex(i + channelBuffer.readerIndex());
            channel.force(false);
            channel.close();
            fileOutputStream.close();
            this.completed = true;
            return;
        }
        throw new IOException("Out of size: " + this.size + " > " + this.definedSize);
    }

    public void addContent(ChannelBuffer channelBuffer, boolean z) throws IOException {
        if (channelBuffer != null) {
            int readableBytes = channelBuffer.readableBytes();
            if (this.definedSize <= 0 || this.definedSize >= this.size + ((long) readableBytes)) {
                ByteBuffer byteBuffer = channelBuffer.toByteBuffer();
                if (this.file == null) {
                    this.file = tempFile();
                }
                if (this.fileChannel == null) {
                    this.fileChannel = new FileOutputStream(this.file).getChannel();
                }
                int i = 0;
                while (i < readableBytes) {
                    i += this.fileChannel.write(byteBuffer);
                }
                this.size = ((long) readableBytes) + this.size;
                channelBuffer.readerIndex(i + channelBuffer.readerIndex());
            } else {
                throw new IOException("Out of size: " + (((long) readableBytes) + this.size) + " > " + this.definedSize);
            }
        }
        if (z) {
            if (this.file == null) {
                this.file = tempFile();
            }
            if (this.fileChannel == null) {
                this.fileChannel = new FileOutputStream(this.file).getChannel();
            }
            this.fileChannel.force(false);
            this.fileChannel.close();
            this.fileChannel = null;
            this.completed = true;
        } else if (channelBuffer == null) {
            throw new NullPointerException("buffer");
        }
    }

    public void setContent(File file2) throws IOException {
        if (this.file != null) {
            delete();
        }
        this.file = file2;
        this.size = file2.length();
        this.isRenamed = true;
        this.completed = true;
    }

    public void setContent(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            throw new NullPointerException("inputStream");
        }
        if (this.file != null) {
            delete();
        }
        this.file = tempFile();
        FileChannel channel = new FileOutputStream(this.file).getChannel();
        byte[] bArr = new byte[16384];
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        int read = inputStream.read(bArr);
        int i = 0;
        while (read > 0) {
            wrap.position(read).flip();
            i += channel.write(wrap);
            read = inputStream.read(bArr);
        }
        channel.force(false);
        channel.close();
        this.size = (long) i;
        if (this.definedSize <= 0 || this.definedSize >= this.size) {
            this.isRenamed = true;
            this.completed = true;
            return;
        }
        this.file.delete();
        this.file = null;
        throw new IOException("Out of size: " + this.size + " > " + this.definedSize);
    }

    public void delete() {
        if (!this.isRenamed && this.file != null) {
            this.file.delete();
        }
    }

    public byte[] get() throws IOException {
        if (this.file == null) {
            return new byte[0];
        }
        return readFrom(this.file);
    }

    public ChannelBuffer getChannelBuffer() throws IOException {
        if (this.file == null) {
            return ChannelBuffers.EMPTY_BUFFER;
        }
        return ChannelBuffers.wrappedBuffer(readFrom(this.file));
    }

    public ChannelBuffer getChunk(int i) throws IOException {
        if (this.file == null || i == 0) {
            return ChannelBuffers.EMPTY_BUFFER;
        }
        if (this.fileChannel == null) {
            this.fileChannel = new FileInputStream(this.file).getChannel();
        }
        ByteBuffer allocate = ByteBuffer.allocate(i);
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                break;
            }
            int read = this.fileChannel.read(allocate);
            if (read == -1) {
                this.fileChannel.close();
                this.fileChannel = null;
                break;
            }
            i2 = read + i2;
        }
        if (i2 == 0) {
            return ChannelBuffers.EMPTY_BUFFER;
        }
        allocate.flip();
        ChannelBuffer wrappedBuffer = ChannelBuffers.wrappedBuffer(allocate);
        wrappedBuffer.readerIndex(0);
        wrappedBuffer.writerIndex(i2);
        return wrappedBuffer;
    }

    public String getString() throws IOException {
        return getString(HttpConstants.DEFAULT_CHARSET);
    }

    public String getString(Charset charset) throws IOException {
        if (this.file == null) {
            return "";
        }
        if (charset == null) {
            return new String(readFrom(this.file), HttpConstants.DEFAULT_CHARSET.name());
        }
        return new String(readFrom(this.file), charset.name());
    }

    public boolean isInMemory() {
        return false;
    }

    public boolean renameTo(File file2) throws IOException {
        if (file2 == null) {
            throw new NullPointerException("dest");
        } else if (!this.file.renameTo(file2)) {
            FileInputStream fileInputStream = new FileInputStream(this.file);
            FileOutputStream fileOutputStream = new FileOutputStream(file2);
            FileChannel channel = fileInputStream.getChannel();
            FileChannel channel2 = fileOutputStream.getChannel();
            int i = 8196;
            long j = 0;
            while (j < this.size) {
                if (((long) i) < this.size - j) {
                    i = (int) (this.size - j);
                }
                j += channel.transferTo(j, (long) i, channel2);
            }
            channel.close();
            channel2.close();
            if (j == this.size) {
                this.file.delete();
                this.file = file2;
                this.isRenamed = true;
                return true;
            }
            file2.delete();
            return false;
        } else {
            this.file = file2;
            this.isRenamed = true;
            return true;
        }
    }

    private static byte[] readFrom(File file2) throws IOException {
        long length = file2.length();
        if (length > 2147483647L) {
            throw new IllegalArgumentException("File too big to be loaded in memory");
        }
        FileChannel channel = new FileInputStream(file2).getChannel();
        byte[] bArr = new byte[((int) length)];
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        for (int i = 0; ((long) i) < length; i += channel.read(wrap)) {
        }
        channel.close();
        return bArr;
    }

    public File getFile() throws IOException {
        return this.file;
    }
}
