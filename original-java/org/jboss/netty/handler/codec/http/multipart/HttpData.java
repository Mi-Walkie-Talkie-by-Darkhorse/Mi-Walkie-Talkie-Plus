package org.jboss.netty.handler.codec.http.multipart;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import org.jboss.netty.buffer.ChannelBuffer;

public interface HttpData extends InterfaceHttpData {
    void addContent(ChannelBuffer channelBuffer, boolean z) throws IOException;

    void delete();

    byte[] get() throws IOException;

    ChannelBuffer getChannelBuffer() throws IOException;

    Charset getCharset();

    ChannelBuffer getChunk(int i) throws IOException;

    File getFile() throws IOException;

    String getString() throws IOException;

    String getString(Charset charset) throws IOException;

    boolean isCompleted();

    boolean isInMemory();

    long length();

    boolean renameTo(File file) throws IOException;

    void setCharset(Charset charset);

    void setContent(File file) throws IOException;

    void setContent(InputStream inputStream) throws IOException;

    void setContent(ChannelBuffer channelBuffer) throws IOException;
}
