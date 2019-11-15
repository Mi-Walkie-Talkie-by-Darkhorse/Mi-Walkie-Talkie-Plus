package org.jboss.netty.handler.codec.http.multipart;

import com.mi.milinkforgame.sdk.data.Const;
import com.tencent.open.SocialConstants;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.regex.Pattern;
import org.apache.http.protocol.HTTP;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.handler.codec.http.DefaultHttpChunk;
import org.jboss.netty.handler.codec.http.HttpChunk;
import org.jboss.netty.handler.codec.http.HttpConstants;
import org.jboss.netty.handler.codec.http.HttpHeaders.Values;
import org.jboss.netty.handler.codec.http.HttpMethod;
import org.jboss.netty.handler.codec.http.HttpRequest;
import org.jboss.netty.handler.codec.http.multipart.HttpPostBodyUtil.TransferEncodingMechanism;
import org.jboss.netty.handler.stream.ChunkedInput;

public class HttpPostRequestEncoder implements ChunkedInput {
    private static final Map<Pattern, String> percentEncodings = new HashMap();
    private final List<InterfaceHttpData> bodyListDatas;
    private final Charset charset;
    private ChannelBuffer currentBuffer;
    private InterfaceHttpData currentData;
    private FileUpload currentFileUpload;
    private boolean duringMixedMode;
    private final EncoderMode encoderMode;
    private final HttpDataFactory factory;
    private long globalBodySize;
    private boolean headerFinalized;
    private boolean isChunked;
    private boolean isKey;
    private boolean isLastChunk;
    private boolean isLastChunkSent;
    private final boolean isMultipart;
    private ListIterator<InterfaceHttpData> iterator;
    private String multipartDataBoundary;
    private final List<InterfaceHttpData> multipartHttpDatas;
    private String multipartMixedBoundary;
    private final HttpRequest request;

    public enum EncoderMode {
        RFC1738,
        RFC3986
    }

    public static class ErrorDataEncoderException extends Exception {
        private static final long serialVersionUID = 5020247425493164465L;

        public ErrorDataEncoderException() {
        }

        public ErrorDataEncoderException(String str) {
            super(str);
        }

        public ErrorDataEncoderException(Throwable th) {
            super(th);
        }

        public ErrorDataEncoderException(String str, Throwable th) {
            super(str, th);
        }
    }

    static {
        percentEncodings.put(Pattern.compile("\\*"), "%2A");
        percentEncodings.put(Pattern.compile("\\+"), "%20");
        percentEncodings.put(Pattern.compile("%7E"), "~");
    }

    public HttpPostRequestEncoder(HttpRequest httpRequest, boolean z) throws ErrorDataEncoderException {
        this(new DefaultHttpDataFactory(16384), httpRequest, z, HttpConstants.DEFAULT_CHARSET);
    }

    public HttpPostRequestEncoder(HttpDataFactory httpDataFactory, HttpRequest httpRequest, boolean z) throws ErrorDataEncoderException {
        this(httpDataFactory, httpRequest, z, HttpConstants.DEFAULT_CHARSET);
    }

    public HttpPostRequestEncoder(HttpDataFactory httpDataFactory, HttpRequest httpRequest, boolean z, Charset charset2) throws ErrorDataEncoderException {
        this(httpDataFactory, httpRequest, z, charset2, EncoderMode.RFC1738);
    }

    public HttpPostRequestEncoder(HttpDataFactory httpDataFactory, HttpRequest httpRequest, boolean z, Charset charset2, EncoderMode encoderMode2) throws ErrorDataEncoderException {
        this.isKey = true;
        if (httpDataFactory == null) {
            throw new NullPointerException("factory");
        } else if (httpRequest == null) {
            throw new NullPointerException(SocialConstants.TYPE_REQUEST);
        } else if (charset2 == null) {
            throw new NullPointerException("charset");
        } else if (httpRequest.getMethod() != HttpMethod.POST) {
            throw new ErrorDataEncoderException("Cannot create a Encoder if not a POST");
        } else {
            this.request = httpRequest;
            this.charset = charset2;
            this.factory = httpDataFactory;
            this.encoderMode = encoderMode2;
            this.bodyListDatas = new ArrayList();
            this.isLastChunk = false;
            this.isLastChunkSent = false;
            this.isMultipart = z;
            this.multipartHttpDatas = new ArrayList();
            if (this.isMultipart) {
                initDataMultipart();
            }
        }
    }

    public void cleanFiles() {
        this.factory.cleanRequestHttpDatas(this.request);
    }

    public boolean isMultipart() {
        return this.isMultipart;
    }

    private void initDataMultipart() {
        this.multipartDataBoundary = getNewMultipartDelimiter();
    }

    private void initMixedMultipart() {
        this.multipartMixedBoundary = getNewMultipartDelimiter();
    }

    private static String getNewMultipartDelimiter() {
        return Long.toHexString(new Random().nextLong()).toLowerCase();
    }

    public List<InterfaceHttpData> getBodyListAttributes() {
        return this.bodyListDatas;
    }

    public void setBodyHttpDatas(List<InterfaceHttpData> list) throws ErrorDataEncoderException {
        if (list == null) {
            throw new NullPointerException("datas");
        }
        this.globalBodySize = 0;
        this.bodyListDatas.clear();
        this.currentFileUpload = null;
        this.duringMixedMode = false;
        this.multipartHttpDatas.clear();
        for (InterfaceHttpData addBodyHttpData : list) {
            addBodyHttpData(addBodyHttpData);
        }
    }

    public void addBodyAttribute(String str, String str2) throws ErrorDataEncoderException {
        if (str == null) {
            throw new NullPointerException(HttpPostBodyUtil.NAME);
        }
        if (str2 == null) {
            str2 = "";
        }
        addBodyHttpData(this.factory.createAttribute(this.request, str, str2));
    }

    public void addBodyFileUpload(String str, File file, String str2, boolean z) throws ErrorDataEncoderException {
        String str3;
        String str4;
        if (str == null) {
            throw new NullPointerException(HttpPostBodyUtil.NAME);
        } else if (file == null) {
            throw new NullPointerException(HttpPostBodyUtil.FILE);
        } else {
            if (str2 != null) {
                str3 = str2;
            } else if (z) {
                str3 = "text/plain";
            } else {
                str3 = "application/octet-stream";
            }
            if (!z) {
                str4 = TransferEncodingMechanism.BINARY.value();
            } else {
                str4 = null;
            }
            FileUpload createFileUpload = this.factory.createFileUpload(this.request, str, file.getName(), str3, str4, null, file.length());
            try {
                createFileUpload.setContent(file);
                addBodyHttpData(createFileUpload);
            } catch (IOException e) {
                throw new ErrorDataEncoderException((Throwable) e);
            }
        }
    }

    public void addBodyFileUploads(String str, File[] fileArr, String[] strArr, boolean[] zArr) throws ErrorDataEncoderException {
        if (fileArr.length == strArr.length || fileArr.length == zArr.length) {
            for (int i = 0; i < fileArr.length; i++) {
                addBodyFileUpload(str, fileArr[i], strArr[i], zArr[i]);
            }
            return;
        }
        throw new NullPointerException("Different array length");
    }

    public void addBodyHttpData(InterfaceHttpData interfaceHttpData) throws ErrorDataEncoderException {
        InternalAttribute internalAttribute;
        boolean z = false;
        if (this.headerFinalized) {
            throw new ErrorDataEncoderException("Cannot add value once finalized");
        } else if (interfaceHttpData == null) {
            throw new NullPointerException(Const.PARAM_DATA);
        } else {
            this.bodyListDatas.add(interfaceHttpData);
            if (!this.isMultipart) {
                if (interfaceHttpData instanceof Attribute) {
                    Attribute attribute = (Attribute) interfaceHttpData;
                    try {
                        Attribute createAttribute = this.factory.createAttribute(this.request, encodeAttribute(attribute.getName(), this.charset), encodeAttribute(attribute.getValue(), this.charset));
                        this.multipartHttpDatas.add(createAttribute);
                        this.globalBodySize = createAttribute.length() + ((long) (createAttribute.getName().length() + 1)) + 1 + this.globalBodySize;
                    } catch (IOException e) {
                        throw new ErrorDataEncoderException((Throwable) e);
                    }
                } else if (interfaceHttpData instanceof FileUpload) {
                    FileUpload fileUpload = (FileUpload) interfaceHttpData;
                    Attribute createAttribute2 = this.factory.createAttribute(this.request, encodeAttribute(fileUpload.getName(), this.charset), encodeAttribute(fileUpload.getFilename(), this.charset));
                    this.multipartHttpDatas.add(createAttribute2);
                    this.globalBodySize = createAttribute2.length() + ((long) (createAttribute2.getName().length() + 1)) + 1 + this.globalBodySize;
                }
            } else if (interfaceHttpData instanceof Attribute) {
                if (this.duringMixedMode) {
                    InternalAttribute internalAttribute2 = new InternalAttribute(this.charset);
                    internalAttribute2.addValue("\r\n--" + this.multipartMixedBoundary + "--");
                    this.multipartHttpDatas.add(internalAttribute2);
                    this.multipartMixedBoundary = null;
                    this.currentFileUpload = null;
                    this.duringMixedMode = false;
                }
                InternalAttribute internalAttribute3 = new InternalAttribute(this.charset);
                if (!this.multipartHttpDatas.isEmpty()) {
                    internalAttribute3.addValue("\r\n");
                }
                internalAttribute3.addValue("--" + this.multipartDataBoundary + "\r\n");
                Attribute attribute2 = (Attribute) interfaceHttpData;
                internalAttribute3.addValue("Content-Disposition: form-data; name=\"" + attribute2.getName() + "\"\r\n");
                Charset charset2 = attribute2.getCharset();
                if (charset2 != null) {
                    internalAttribute3.addValue("Content-Type: text/plain; charset=" + charset2 + "\r\n");
                }
                internalAttribute3.addValue("\r\n");
                this.multipartHttpDatas.add(internalAttribute3);
                this.multipartHttpDatas.add(interfaceHttpData);
                this.globalBodySize = ((long) internalAttribute3.size()) + attribute2.length() + this.globalBodySize;
            } else if (interfaceHttpData instanceof FileUpload) {
                FileUpload fileUpload2 = (FileUpload) interfaceHttpData;
                InternalAttribute internalAttribute4 = new InternalAttribute(this.charset);
                if (!this.multipartHttpDatas.isEmpty()) {
                    internalAttribute4.addValue("\r\n");
                }
                if (this.duringMixedMode) {
                    if (this.currentFileUpload == null || !this.currentFileUpload.getName().equals(fileUpload2.getName())) {
                        internalAttribute4.addValue("--" + this.multipartMixedBoundary + "--");
                        this.multipartHttpDatas.add(internalAttribute4);
                        this.multipartMixedBoundary = null;
                        internalAttribute = new InternalAttribute(this.charset);
                        internalAttribute.addValue("\r\n");
                        this.currentFileUpload = fileUpload2;
                        this.duringMixedMode = false;
                    } else {
                        z = true;
                        internalAttribute = internalAttribute4;
                    }
                } else if (this.currentFileUpload == null || !this.currentFileUpload.getName().equals(fileUpload2.getName())) {
                    this.currentFileUpload = fileUpload2;
                    this.duringMixedMode = false;
                    internalAttribute = internalAttribute4;
                } else {
                    initMixedMultipart();
                    InternalAttribute internalAttribute5 = (InternalAttribute) this.multipartHttpDatas.get(this.multipartHttpDatas.size() - 2);
                    this.globalBodySize -= (long) internalAttribute5.size();
                    internalAttribute5.setValue(((("Content-Disposition: form-data; name=\"" + fileUpload2.getName() + "\"\r\n") + "Content-Type: multipart/mixed; boundary=" + this.multipartMixedBoundary + "\r\n\r\n") + "--" + this.multipartMixedBoundary + "\r\n") + "Content-Disposition: file; filename=\"" + fileUpload2.getFilename() + "\"\r\n", 1);
                    this.globalBodySize += (long) internalAttribute5.size();
                    this.duringMixedMode = true;
                    z = true;
                    internalAttribute = internalAttribute4;
                }
                if (z) {
                    internalAttribute.addValue("--" + this.multipartMixedBoundary + "\r\n");
                    internalAttribute.addValue("Content-Disposition: file; filename=\"" + fileUpload2.getFilename() + "\"\r\n");
                } else {
                    internalAttribute.addValue("--" + this.multipartDataBoundary + "\r\n");
                    internalAttribute.addValue("Content-Disposition: form-data; name=\"" + fileUpload2.getName() + "\"; " + HttpPostBodyUtil.FILENAME + "=\"" + fileUpload2.getFilename() + "\"\r\n");
                }
                internalAttribute.addValue("Content-Type: " + fileUpload2.getContentType());
                String contentTransferEncoding = fileUpload2.getContentTransferEncoding();
                if (contentTransferEncoding != null && contentTransferEncoding.equals(TransferEncodingMechanism.BINARY.value())) {
                    internalAttribute.addValue("\r\nContent-Transfer-Encoding: " + TransferEncodingMechanism.BINARY.value() + "\r\n\r\n");
                } else if (fileUpload2.getCharset() != null) {
                    internalAttribute.addValue(HTTP.CHARSET_PARAM + fileUpload2.getCharset() + "\r\n\r\n");
                } else {
                    internalAttribute.addValue("\r\n\r\n");
                }
                this.multipartHttpDatas.add(internalAttribute);
                this.multipartHttpDatas.add(interfaceHttpData);
                this.globalBodySize = fileUpload2.length() + ((long) internalAttribute.size()) + this.globalBodySize;
            }
        }
    }

    public HttpRequest finalizeRequest() throws ErrorDataEncoderException {
        if (!this.headerFinalized) {
            if (this.isMultipart) {
                InternalAttribute internalAttribute = new InternalAttribute(this.charset);
                if (this.duringMixedMode) {
                    internalAttribute.addValue("\r\n--" + this.multipartMixedBoundary + "--");
                }
                internalAttribute.addValue("\r\n--" + this.multipartDataBoundary + "--\r\n");
                this.multipartHttpDatas.add(internalAttribute);
                this.multipartMixedBoundary = null;
                this.currentFileUpload = null;
                this.duringMixedMode = false;
                this.globalBodySize = ((long) internalAttribute.size()) + this.globalBodySize;
            }
            this.headerFinalized = true;
            List<String> headers = this.request.getHeaders("Content-Type");
            List<String> headers2 = this.request.getHeaders("Transfer-Encoding");
            if (headers != null) {
                this.request.removeHeader("Content-Type");
                for (String str : headers) {
                    if (!str.toLowerCase().startsWith(Values.MULTIPART_FORM_DATA) && !str.toLowerCase().startsWith("application/x-www-form-urlencoded")) {
                        this.request.addHeader("Content-Type", str);
                    }
                }
            }
            if (this.isMultipart) {
                this.request.addHeader("Content-Type", "multipart/form-data; boundary=" + this.multipartDataBoundary);
            } else {
                this.request.addHeader("Content-Type", "application/x-www-form-urlencoded");
            }
            long j = this.globalBodySize;
            if (this.isMultipart) {
                this.iterator = this.multipartHttpDatas.listIterator();
            } else {
                j--;
                this.iterator = this.multipartHttpDatas.listIterator();
            }
            this.request.setHeader("Content-Length", (Object) String.valueOf(j));
            if (j > 8096 || this.isMultipart) {
                this.isChunked = true;
                if (headers2 != null) {
                    this.request.removeHeader("Transfer-Encoding");
                    for (String str2 : headers2) {
                        if (!str2.equalsIgnoreCase("chunked")) {
                            this.request.addHeader("Transfer-Encoding", str2);
                        }
                    }
                }
                this.request.addHeader("Transfer-Encoding", "chunked");
                this.request.setContent(ChannelBuffers.EMPTY_BUFFER);
            } else {
                this.request.setContent(nextChunk().getContent());
            }
            return this.request;
        }
        throw new ErrorDataEncoderException("Header already encoded");
    }

    public boolean isChunked() {
        return this.isChunked;
    }

    private String encodeAttribute(String str, Charset charset2) throws ErrorDataEncoderException {
        if (str == null) {
            return "";
        }
        try {
            String encode = URLEncoder.encode(str, charset2.name());
            if (this.encoderMode != EncoderMode.RFC3986) {
                return encode;
            }
            String str2 = encode;
            for (Entry entry : percentEncodings.entrySet()) {
                str2 = ((Pattern) entry.getKey()).matcher(str2).replaceAll((String) entry.getValue());
            }
            return str2;
        } catch (UnsupportedEncodingException e) {
            throw new ErrorDataEncoderException(charset2.name(), e);
        }
    }

    private ChannelBuffer fillChannelBuffer() {
        if (this.currentBuffer.readableBytes() > 8096) {
            ChannelBuffer slice = this.currentBuffer.slice(this.currentBuffer.readerIndex(), HttpPostBodyUtil.chunkSize);
            this.currentBuffer.skipBytes((int) HttpPostBodyUtil.chunkSize);
            return slice;
        }
        ChannelBuffer channelBuffer = this.currentBuffer;
        this.currentBuffer = null;
        return channelBuffer;
    }

    private HttpChunk encodeNextChunkMultipart(int i) throws ErrorDataEncoderException {
        ChannelBuffer chunk;
        if (this.currentData == null) {
            return null;
        }
        if (this.currentData instanceof InternalAttribute) {
            chunk = ((InternalAttribute) this.currentData).toChannelBuffer();
            this.currentData = null;
        } else {
            if (this.currentData instanceof Attribute) {
                try {
                    chunk = ((Attribute) this.currentData).getChunk(i);
                } catch (IOException e) {
                    throw new ErrorDataEncoderException((Throwable) e);
                }
            } else {
                try {
                    chunk = ((HttpData) this.currentData).getChunk(i);
                } catch (IOException e2) {
                    throw new ErrorDataEncoderException((Throwable) e2);
                }
            }
            if (chunk.capacity() == 0) {
                this.currentData = null;
                return null;
            }
        }
        if (this.currentBuffer == null) {
            this.currentBuffer = chunk;
        } else {
            this.currentBuffer = ChannelBuffers.wrappedBuffer(this.currentBuffer, chunk);
        }
        if (this.currentBuffer.readableBytes() >= 8096) {
            return new DefaultHttpChunk(fillChannelBuffer());
        }
        this.currentData = null;
        return null;
    }

    private HttpChunk encodeNextChunkUrlEncoded(int i) throws ErrorDataEncoderException {
        ChannelBuffer channelBuffer;
        int readableBytes;
        if (this.currentData == null) {
            return null;
        }
        if (this.isKey) {
            ChannelBuffer wrappedBuffer = ChannelBuffers.wrappedBuffer(this.currentData.getName().getBytes());
            this.isKey = false;
            if (this.currentBuffer == null) {
                this.currentBuffer = ChannelBuffers.wrappedBuffer(wrappedBuffer, ChannelBuffers.wrappedBuffer("=".getBytes()));
                readableBytes = i - (wrappedBuffer.readableBytes() + 1);
            } else {
                this.currentBuffer = ChannelBuffers.wrappedBuffer(this.currentBuffer, wrappedBuffer, ChannelBuffers.wrappedBuffer("=".getBytes()));
                readableBytes = i - (wrappedBuffer.readableBytes() + 1);
            }
            if (this.currentBuffer.readableBytes() >= 8096) {
                return new DefaultHttpChunk(fillChannelBuffer());
            }
            i = readableBytes;
        }
        try {
            ChannelBuffer chunk = ((HttpData) this.currentData).getChunk(i);
            if (chunk.readableBytes() < i) {
                this.isKey = true;
                if (this.iterator.hasNext()) {
                    channelBuffer = ChannelBuffers.wrappedBuffer("&".getBytes());
                } else {
                    channelBuffer = null;
                }
            } else {
                channelBuffer = null;
            }
            if (chunk.capacity() == 0) {
                this.currentData = null;
                if (this.currentBuffer == null) {
                    this.currentBuffer = channelBuffer;
                } else if (channelBuffer != null) {
                    this.currentBuffer = ChannelBuffers.wrappedBuffer(this.currentBuffer, channelBuffer);
                }
                if (this.currentBuffer.readableBytes() >= 8096) {
                    return new DefaultHttpChunk(fillChannelBuffer());
                }
                return null;
            }
            if (this.currentBuffer == null) {
                if (channelBuffer != null) {
                    this.currentBuffer = ChannelBuffers.wrappedBuffer(chunk, channelBuffer);
                } else {
                    this.currentBuffer = chunk;
                }
            } else if (channelBuffer != null) {
                this.currentBuffer = ChannelBuffers.wrappedBuffer(this.currentBuffer, chunk, channelBuffer);
            } else {
                this.currentBuffer = ChannelBuffers.wrappedBuffer(this.currentBuffer, chunk);
            }
            if (this.currentBuffer.readableBytes() >= 8096) {
                return new DefaultHttpChunk(fillChannelBuffer());
            }
            this.currentData = null;
            this.isKey = true;
            return null;
        } catch (IOException e) {
            throw new ErrorDataEncoderException((Throwable) e);
        }
    }

    public void close() throws Exception {
    }

    public HttpChunk nextChunk() throws ErrorDataEncoderException {
        HttpChunk encodeNextChunkUrlEncoded;
        if (this.isLastChunk) {
            this.isLastChunkSent = true;
            return new DefaultHttpChunk(ChannelBuffers.EMPTY_BUFFER);
        }
        int i = HttpPostBodyUtil.chunkSize;
        if (this.currentBuffer != null) {
            i = HttpPostBodyUtil.chunkSize - this.currentBuffer.readableBytes();
        }
        if (i <= 0) {
            return new DefaultHttpChunk(fillChannelBuffer());
        }
        if (this.currentData != null) {
            if (this.isMultipart) {
                HttpChunk encodeNextChunkMultipart = encodeNextChunkMultipart(i);
                if (encodeNextChunkMultipart != null) {
                    return encodeNextChunkMultipart;
                }
            } else {
                HttpChunk encodeNextChunkUrlEncoded2 = encodeNextChunkUrlEncoded(i);
                if (encodeNextChunkUrlEncoded2 != null) {
                    return encodeNextChunkUrlEncoded2;
                }
            }
            i = 8096 - this.currentBuffer.readableBytes();
        }
        if (!this.iterator.hasNext()) {
            this.isLastChunk = true;
            ChannelBuffer channelBuffer = this.currentBuffer;
            this.currentBuffer = null;
            return new DefaultHttpChunk(channelBuffer);
        }
        int i2 = i;
        while (i2 > 0 && this.iterator.hasNext()) {
            this.currentData = (InterfaceHttpData) this.iterator.next();
            if (this.isMultipart) {
                encodeNextChunkUrlEncoded = encodeNextChunkMultipart(i2);
            } else {
                encodeNextChunkUrlEncoded = encodeNextChunkUrlEncoded(i2);
            }
            if (encodeNextChunkUrlEncoded != null) {
                return encodeNextChunkUrlEncoded;
            }
            i2 = 8096 - this.currentBuffer.readableBytes();
        }
        this.isLastChunk = true;
        if (this.currentBuffer == null) {
            this.isLastChunkSent = true;
            return new DefaultHttpChunk(ChannelBuffers.EMPTY_BUFFER);
        }
        ChannelBuffer channelBuffer2 = this.currentBuffer;
        this.currentBuffer = null;
        return new DefaultHttpChunk(channelBuffer2);
    }

    public boolean isEndOfInput() throws Exception {
        return this.isLastChunkSent;
    }

    public boolean hasNextChunk() throws Exception {
        return !this.isLastChunkSent;
    }
}
