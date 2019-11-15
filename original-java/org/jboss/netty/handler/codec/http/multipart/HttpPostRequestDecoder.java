package org.jboss.netty.handler.codec.http.multipart;

import com.tencent.open.SocialConstants;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.buffer.ChannelBuffers;
import org.jboss.netty.handler.codec.http.HttpChunk;
import org.jboss.netty.handler.codec.http.HttpConstants;
import org.jboss.netty.handler.codec.http.HttpHeaders.Names;
import org.jboss.netty.handler.codec.http.HttpHeaders.Values;
import org.jboss.netty.handler.codec.http.HttpMethod;
import org.jboss.netty.handler.codec.http.HttpRequest;
import org.jboss.netty.handler.codec.http.multipart.HttpPostBodyUtil.TransferEncodingMechanism;
import org.jboss.netty.util.internal.CaseIgnoringComparator;
import org.jboss.netty.util.internal.StringUtil;

public class HttpPostRequestDecoder {
    private final List<InterfaceHttpData> bodyListHttpData;
    private int bodyListHttpDataRank;
    private final Map<String, List<InterfaceHttpData>> bodyMapHttpData;
    private boolean bodyToDecode;
    private final Charset charset;
    private Attribute currentAttribute;
    private Map<String, Attribute> currentFieldAttributes;
    private FileUpload currentFileUpload;
    private MultiPartStatus currentStatus;
    private final HttpDataFactory factory;
    private boolean isLastChunk;
    private boolean isMultipart;
    private String multipartDataBoundary;
    private String multipartMixedBoundary;
    private final HttpRequest request;
    private ChannelBuffer undecodedChunk;

    public static class EndOfDataDecoderException extends Exception {
        private static final long serialVersionUID = 1336267941020800769L;
    }

    public static class ErrorDataDecoderException extends Exception {
        private static final long serialVersionUID = 5020247425493164465L;

        public ErrorDataDecoderException() {
        }

        public ErrorDataDecoderException(String str) {
            super(str);
        }

        public ErrorDataDecoderException(Throwable th) {
            super(th);
        }

        public ErrorDataDecoderException(String str, Throwable th) {
            super(str, th);
        }
    }

    public static class IncompatibleDataDecoderException extends Exception {
        private static final long serialVersionUID = -953268047926250267L;

        public IncompatibleDataDecoderException() {
        }

        public IncompatibleDataDecoderException(String str) {
            super(str);
        }

        public IncompatibleDataDecoderException(Throwable th) {
            super(th);
        }

        public IncompatibleDataDecoderException(String str, Throwable th) {
            super(str, th);
        }
    }

    private enum MultiPartStatus {
        NOTSTARTED,
        PREAMBLE,
        HEADERDELIMITER,
        DISPOSITION,
        FIELD,
        FILEUPLOAD,
        MIXEDPREAMBLE,
        MIXEDDELIMITER,
        MIXEDDISPOSITION,
        MIXEDFILEUPLOAD,
        MIXEDCLOSEDELIMITER,
        CLOSEDELIMITER,
        PREEPILOGUE,
        EPILOGUE
    }

    public static class NotEnoughDataDecoderException extends Exception {
        private static final long serialVersionUID = -7846841864603865638L;

        public NotEnoughDataDecoderException() {
        }

        public NotEnoughDataDecoderException(String str) {
            super(str);
        }

        public NotEnoughDataDecoderException(Throwable th) {
            super(th);
        }

        public NotEnoughDataDecoderException(String str, Throwable th) {
            super(str, th);
        }
    }

    public HttpPostRequestDecoder(HttpRequest httpRequest) throws ErrorDataDecoderException, IncompatibleDataDecoderException {
        this(new DefaultHttpDataFactory(16384), httpRequest, HttpConstants.DEFAULT_CHARSET);
    }

    public HttpPostRequestDecoder(HttpDataFactory httpDataFactory, HttpRequest httpRequest) throws ErrorDataDecoderException, IncompatibleDataDecoderException {
        this(httpDataFactory, httpRequest, HttpConstants.DEFAULT_CHARSET);
    }

    public HttpPostRequestDecoder(HttpDataFactory httpDataFactory, HttpRequest httpRequest, Charset charset2) throws ErrorDataDecoderException, IncompatibleDataDecoderException {
        this.bodyListHttpData = new ArrayList();
        this.bodyMapHttpData = new TreeMap(CaseIgnoringComparator.INSTANCE);
        this.currentStatus = MultiPartStatus.NOTSTARTED;
        if (httpDataFactory == null) {
            throw new NullPointerException("factory");
        } else if (httpRequest == null) {
            throw new NullPointerException(SocialConstants.TYPE_REQUEST);
        } else if (charset2 == null) {
            throw new NullPointerException("charset");
        } else {
            this.request = httpRequest;
            HttpMethod method = httpRequest.getMethod();
            if (method.equals(HttpMethod.POST) || method.equals(HttpMethod.PUT) || method.equals(HttpMethod.PATCH)) {
                this.bodyToDecode = true;
            }
            this.charset = charset2;
            this.factory = httpDataFactory;
            if (this.request.containsHeader("Content-Type")) {
                checkMultipart(this.request.getHeader("Content-Type"));
            } else {
                this.isMultipart = false;
            }
            if (!this.bodyToDecode) {
                throw new IncompatibleDataDecoderException("No Body to decode");
            } else if (!this.request.isChunked()) {
                this.undecodedChunk = this.request.getContent();
                this.isLastChunk = true;
                parseBody();
            }
        }
    }

    private void checkMultipart(String str) throws ErrorDataDecoderException {
        String[] splitHeaderContentType = splitHeaderContentType(str);
        if (!splitHeaderContentType[0].toLowerCase().startsWith(Values.MULTIPART_FORM_DATA) || !splitHeaderContentType[1].toLowerCase().startsWith(Values.BOUNDARY)) {
            this.isMultipart = false;
            return;
        }
        String[] split = StringUtil.split(splitHeaderContentType[1], '=');
        if (split.length != 2) {
            throw new ErrorDataDecoderException("Needs a boundary value");
        }
        this.multipartDataBoundary = "--" + split[1];
        this.isMultipart = true;
        this.currentStatus = MultiPartStatus.HEADERDELIMITER;
    }

    public boolean isMultipart() {
        return this.isMultipart;
    }

    public List<InterfaceHttpData> getBodyHttpDatas() throws NotEnoughDataDecoderException {
        if (this.isLastChunk) {
            return this.bodyListHttpData;
        }
        throw new NotEnoughDataDecoderException();
    }

    public List<InterfaceHttpData> getBodyHttpDatas(String str) throws NotEnoughDataDecoderException {
        if (this.isLastChunk) {
            return (List) this.bodyMapHttpData.get(str);
        }
        throw new NotEnoughDataDecoderException();
    }

    public InterfaceHttpData getBodyHttpData(String str) throws NotEnoughDataDecoderException {
        if (!this.isLastChunk) {
            throw new NotEnoughDataDecoderException();
        }
        List list = (List) this.bodyMapHttpData.get(str);
        if (list != null) {
            return (InterfaceHttpData) list.get(0);
        }
        return null;
    }

    public void offer(HttpChunk httpChunk) throws ErrorDataDecoderException {
        ChannelBuffer content = httpChunk.getContent();
        if (this.undecodedChunk == null) {
            this.undecodedChunk = content;
        } else {
            this.undecodedChunk = ChannelBuffers.wrappedBuffer(this.undecodedChunk, content);
        }
        if (httpChunk.isLast()) {
            this.isLastChunk = true;
        }
        parseBody();
    }

    public boolean hasNext() throws EndOfDataDecoderException {
        if (this.currentStatus != MultiPartStatus.EPILOGUE || this.bodyListHttpDataRank < this.bodyListHttpData.size()) {
            return !this.bodyListHttpData.isEmpty() && this.bodyListHttpDataRank < this.bodyListHttpData.size();
        }
        throw new EndOfDataDecoderException();
    }

    public InterfaceHttpData next() throws EndOfDataDecoderException {
        if (!hasNext()) {
            return null;
        }
        List<InterfaceHttpData> list = this.bodyListHttpData;
        int i = this.bodyListHttpDataRank;
        this.bodyListHttpDataRank = i + 1;
        return (InterfaceHttpData) list.get(i);
    }

    private void parseBody() throws ErrorDataDecoderException {
        if (this.currentStatus == MultiPartStatus.PREEPILOGUE || this.currentStatus == MultiPartStatus.EPILOGUE) {
            if (this.isLastChunk) {
                this.currentStatus = MultiPartStatus.EPILOGUE;
            }
        } else if (this.isMultipart) {
            parseBodyMultipart();
        } else {
            parseBodyAttributes();
        }
    }

    private void addHttpData(InterfaceHttpData interfaceHttpData) {
        if (interfaceHttpData != null) {
            List list = (List) this.bodyMapHttpData.get(interfaceHttpData.getName());
            if (list == null) {
                list = new ArrayList(1);
                this.bodyMapHttpData.put(interfaceHttpData.getName(), list);
            }
            list.add(interfaceHttpData);
            this.bodyListHttpData.add(interfaceHttpData);
        }
    }

    private void parseBodyAttributesStandard() throws ErrorDataDecoderException {
        int readerIndex = this.undecodedChunk.readerIndex();
        if (this.currentStatus == MultiPartStatus.NOTSTARTED) {
            this.currentStatus = MultiPartStatus.DISPOSITION;
        }
        boolean z = true;
        int i = readerIndex;
        while (this.undecodedChunk.readable() && z) {
            try {
                char readUnsignedByte = (char) this.undecodedChunk.readUnsignedByte();
                readerIndex++;
                switch (this.currentStatus) {
                    case DISPOSITION:
                        if (readUnsignedByte != '=') {
                            if (readUnsignedByte != '&') {
                                break;
                            } else {
                                this.currentStatus = MultiPartStatus.DISPOSITION;
                                this.currentAttribute = this.factory.createAttribute(this.request, decodeAttribute(this.undecodedChunk.toString(i, (readerIndex - 1) - i, this.charset), this.charset));
                                this.currentAttribute.setValue("");
                                addHttpData(this.currentAttribute);
                                this.currentAttribute = null;
                                z = true;
                                i = readerIndex;
                                break;
                            }
                        } else {
                            this.currentStatus = MultiPartStatus.FIELD;
                            this.currentAttribute = this.factory.createAttribute(this.request, decodeAttribute(this.undecodedChunk.toString(i, (readerIndex - 1) - i, this.charset), this.charset));
                            i = readerIndex;
                            break;
                        }
                    case FIELD:
                        if (readUnsignedByte != '&') {
                            if (readUnsignedByte != 13) {
                                if (readUnsignedByte != 10) {
                                    break;
                                } else {
                                    this.currentStatus = MultiPartStatus.PREEPILOGUE;
                                    setFinalBuffer(this.undecodedChunk.slice(i, (readerIndex - 1) - i));
                                    z = false;
                                    i = readerIndex;
                                    break;
                                }
                            } else if (!this.undecodedChunk.readable()) {
                                readerIndex--;
                                break;
                            } else {
                                int i2 = readerIndex + 1;
                                if (((char) this.undecodedChunk.readUnsignedByte()) == 10) {
                                    this.currentStatus = MultiPartStatus.PREEPILOGUE;
                                    setFinalBuffer(this.undecodedChunk.slice(i, (i2 - 2) - i));
                                    readerIndex = i2;
                                    i = i2;
                                    z = false;
                                    break;
                                } else {
                                    throw new ErrorDataDecoderException("Bad end of line");
                                }
                            }
                        } else {
                            this.currentStatus = MultiPartStatus.DISPOSITION;
                            setFinalBuffer(this.undecodedChunk.slice(i, (readerIndex - 1) - i));
                            z = true;
                            i = readerIndex;
                            break;
                        }
                    default:
                        z = false;
                        break;
                }
            } catch (ErrorDataDecoderException e) {
                e = e;
                this.undecodedChunk.readerIndex(i);
                throw e;
            } catch (IOException e2) {
                e = e2;
                this.undecodedChunk.readerIndex(i);
                throw new ErrorDataDecoderException((Throwable) e);
            }
        }
        if (this.isLastChunk && this.currentAttribute != null) {
            if (readerIndex > i) {
                setFinalBuffer(this.undecodedChunk.slice(i, readerIndex - i));
            } else if (!this.currentAttribute.isCompleted()) {
                setFinalBuffer(ChannelBuffers.EMPTY_BUFFER);
            }
            try {
                this.currentStatus = MultiPartStatus.EPILOGUE;
            } catch (ErrorDataDecoderException e3) {
                e = e3;
                i = readerIndex;
            } catch (IOException e4) {
                e = e4;
                i = readerIndex;
                this.undecodedChunk.readerIndex(i);
                throw new ErrorDataDecoderException((Throwable) e);
            }
        } else if (!z) {
        } else {
            if (this.currentAttribute != null) {
                if (this.currentStatus == MultiPartStatus.FIELD) {
                    this.currentAttribute.addContent(this.undecodedChunk.slice(i, readerIndex - i), false);
                    i = readerIndex;
                }
                this.undecodedChunk.readerIndex(i);
            }
        }
    }

    private void parseBodyAttributes() throws ErrorDataDecoderException {
        int i;
        boolean z;
        try {
            SeekAheadOptimize seekAheadOptimize = new SeekAheadOptimize(this.undecodedChunk);
            int readerIndex = this.undecodedChunk.readerIndex();
            if (this.currentStatus == MultiPartStatus.NOTSTARTED) {
                this.currentStatus = MultiPartStatus.DISPOSITION;
            }
            int i2 = readerIndex;
            while (true) {
                try {
                    if (seekAheadOptimize.pos < seekAheadOptimize.limit) {
                        byte[] bArr = seekAheadOptimize.bytes;
                        int i3 = seekAheadOptimize.pos;
                        seekAheadOptimize.pos = i3 + 1;
                        char c = (char) (bArr[i3] & 255);
                        readerIndex++;
                        switch (this.currentStatus) {
                            case DISPOSITION:
                                if (c != '=') {
                                    if (c != '&') {
                                        break;
                                    } else {
                                        this.currentStatus = MultiPartStatus.DISPOSITION;
                                        this.currentAttribute = this.factory.createAttribute(this.request, decodeAttribute(this.undecodedChunk.toString(i2, (readerIndex - 1) - i2, this.charset), this.charset));
                                        this.currentAttribute.setValue("");
                                        addHttpData(this.currentAttribute);
                                        this.currentAttribute = null;
                                        i2 = readerIndex;
                                        break;
                                    }
                                } else {
                                    this.currentStatus = MultiPartStatus.FIELD;
                                    this.currentAttribute = this.factory.createAttribute(this.request, decodeAttribute(this.undecodedChunk.toString(i2, (readerIndex - 1) - i2, this.charset), this.charset));
                                    i2 = readerIndex;
                                    continue;
                                }
                            case FIELD:
                                if (c != '&') {
                                    if (c != 13) {
                                        if (c != 10) {
                                            break;
                                        } else {
                                            this.currentStatus = MultiPartStatus.PREEPILOGUE;
                                            int i4 = readerIndex - 1;
                                            seekAheadOptimize.setReadPosition(0);
                                            setFinalBuffer(this.undecodedChunk.slice(i2, i4 - i2));
                                            i2 = readerIndex;
                                            int i5 = readerIndex;
                                            z = false;
                                            i = i5;
                                            break;
                                        }
                                    } else if (seekAheadOptimize.pos >= seekAheadOptimize.limit) {
                                        if (seekAheadOptimize.limit <= 0) {
                                            break;
                                        } else {
                                            readerIndex--;
                                            break;
                                        }
                                    } else {
                                        byte[] bArr2 = seekAheadOptimize.bytes;
                                        int i6 = seekAheadOptimize.pos;
                                        seekAheadOptimize.pos = i6 + 1;
                                        int i7 = readerIndex + 1;
                                        if (((char) (bArr2[i6] & 255)) == 10) {
                                            this.currentStatus = MultiPartStatus.PREEPILOGUE;
                                            int i8 = i7 - 2;
                                            seekAheadOptimize.setReadPosition(0);
                                            setFinalBuffer(this.undecodedChunk.slice(i2, i8 - i2));
                                            i2 = i7;
                                            int i9 = i7;
                                            z = false;
                                            i = i9;
                                            break;
                                        } else {
                                            seekAheadOptimize.setReadPosition(0);
                                            throw new ErrorDataDecoderException("Bad end of line");
                                        }
                                    }
                                } else {
                                    this.currentStatus = MultiPartStatus.DISPOSITION;
                                    setFinalBuffer(this.undecodedChunk.slice(i2, (readerIndex - 1) - i2));
                                    i2 = readerIndex;
                                    continue;
                                }
                            default:
                                seekAheadOptimize.setReadPosition(0);
                                i = readerIndex;
                                z = false;
                                break;
                        }
                    } else {
                        i = readerIndex;
                        z = true;
                    }
                } catch (ErrorDataDecoderException e) {
                    e = e;
                    this.undecodedChunk.readerIndex(i2);
                    throw e;
                } catch (IOException e2) {
                    e = e2;
                    this.undecodedChunk.readerIndex(i2);
                    throw new ErrorDataDecoderException((Throwable) e);
                }
            }
            if (this.isLastChunk && this.currentAttribute != null) {
                if (i > i2) {
                    setFinalBuffer(this.undecodedChunk.slice(i2, i - i2));
                } else if (!this.currentAttribute.isCompleted()) {
                    setFinalBuffer(ChannelBuffers.EMPTY_BUFFER);
                }
                try {
                    this.currentStatus = MultiPartStatus.EPILOGUE;
                } catch (ErrorDataDecoderException e3) {
                    e = e3;
                    i2 = i;
                } catch (IOException e4) {
                    e = e4;
                    i2 = i;
                    this.undecodedChunk.readerIndex(i2);
                    throw new ErrorDataDecoderException((Throwable) e);
                }
            } else if (!z) {
            } else {
                if (this.currentAttribute != null) {
                    if (this.currentStatus == MultiPartStatus.FIELD) {
                        this.currentAttribute.addContent(this.undecodedChunk.slice(i2, i - i2), false);
                        i2 = i;
                    }
                    this.undecodedChunk.readerIndex(i2);
                }
            }
        } catch (SeekAheadNoBackArrayException e5) {
            parseBodyAttributesStandard();
        }
    }

    private void setFinalBuffer(ChannelBuffer channelBuffer) throws ErrorDataDecoderException, IOException {
        this.currentAttribute.addContent(channelBuffer, true);
        this.currentAttribute.setValue(decodeAttribute(this.currentAttribute.getChannelBuffer().toString(this.charset), this.charset));
        addHttpData(this.currentAttribute);
        this.currentAttribute = null;
    }

    private static String decodeAttribute(String str, Charset charset2) throws ErrorDataDecoderException {
        if (str == null) {
            return "";
        }
        try {
            return URLDecoder.decode(str, charset2.name());
        } catch (UnsupportedEncodingException e) {
            throw new ErrorDataDecoderException(charset2.toString(), e);
        } catch (IllegalArgumentException e2) {
            throw new ErrorDataDecoderException("Bad string: '" + str + '\'', e2);
        }
    }

    private void parseBodyMultipart() throws ErrorDataDecoderException {
        if (this.undecodedChunk != null && this.undecodedChunk.readableBytes() != 0) {
            InterfaceHttpData decodeMultipart = decodeMultipart(this.currentStatus);
            while (decodeMultipart != null) {
                addHttpData(decodeMultipart);
                if (this.currentStatus != MultiPartStatus.PREEPILOGUE && this.currentStatus != MultiPartStatus.EPILOGUE) {
                    decodeMultipart = decodeMultipart(this.currentStatus);
                } else {
                    return;
                }
            }
        }
    }

    private InterfaceHttpData decodeMultipart(MultiPartStatus multiPartStatus) throws ErrorDataDecoderException {
        Charset charset2;
        switch (multiPartStatus) {
            case DISPOSITION:
                return findMultipartDisposition();
            case FIELD:
                Attribute attribute = (Attribute) this.currentFieldAttributes.get("charset");
                if (attribute != null) {
                    try {
                        charset2 = Charset.forName(attribute.getValue());
                    } catch (IOException e) {
                        throw new ErrorDataDecoderException((Throwable) e);
                    }
                } else {
                    charset2 = null;
                }
                Attribute attribute2 = (Attribute) this.currentFieldAttributes.get(HttpPostBodyUtil.NAME);
                if (this.currentAttribute == null) {
                    try {
                        this.currentAttribute = this.factory.createAttribute(this.request, cleanString(attribute2.getValue()));
                        if (charset2 != null) {
                            this.currentAttribute.setCharset(charset2);
                        }
                    } catch (NullPointerException e2) {
                        throw new ErrorDataDecoderException((Throwable) e2);
                    } catch (IllegalArgumentException e3) {
                        throw new ErrorDataDecoderException((Throwable) e3);
                    } catch (IOException e4) {
                        throw new ErrorDataDecoderException((Throwable) e4);
                    }
                }
                try {
                    loadFieldMultipart(this.multipartDataBoundary);
                    Attribute attribute3 = this.currentAttribute;
                    this.currentAttribute = null;
                    this.currentFieldAttributes = null;
                    this.currentStatus = MultiPartStatus.HEADERDELIMITER;
                    return attribute3;
                } catch (NotEnoughDataDecoderException e5) {
                    return null;
                }
            case NOTSTARTED:
                throw new ErrorDataDecoderException("Should not be called with the current status");
            case PREAMBLE:
                throw new ErrorDataDecoderException("Should not be called with the current status");
            case HEADERDELIMITER:
                return findMultipartDelimiter(this.multipartDataBoundary, MultiPartStatus.DISPOSITION, MultiPartStatus.PREEPILOGUE);
            case FILEUPLOAD:
                return getFileUpload(this.multipartDataBoundary);
            case MIXEDDELIMITER:
                return findMultipartDelimiter(this.multipartMixedBoundary, MultiPartStatus.MIXEDDISPOSITION, MultiPartStatus.HEADERDELIMITER);
            case MIXEDDISPOSITION:
                return findMultipartDisposition();
            case MIXEDFILEUPLOAD:
                return getFileUpload(this.multipartMixedBoundary);
            case PREEPILOGUE:
            case EPILOGUE:
                return null;
            default:
                throw new ErrorDataDecoderException("Shouldn't reach here.");
        }
    }

    /* access modifiers changed from: 0000 */
    public void skipControlCharacters() throws NotEnoughDataDecoderException {
        try {
            SeekAheadOptimize seekAheadOptimize = new SeekAheadOptimize(this.undecodedChunk);
            while (seekAheadOptimize.pos < seekAheadOptimize.limit) {
                byte[] bArr = seekAheadOptimize.bytes;
                int i = seekAheadOptimize.pos;
                seekAheadOptimize.pos = i + 1;
                char c = (char) (bArr[i] & 255);
                if (!Character.isISOControl(c) && !Character.isWhitespace(c)) {
                    seekAheadOptimize.setReadPosition(1);
                    return;
                }
            }
            throw new NotEnoughDataDecoderException("Access out of bounds");
        } catch (SeekAheadNoBackArrayException e) {
            try {
                skipControlCharactersStandard();
            } catch (IndexOutOfBoundsException e2) {
                throw new NotEnoughDataDecoderException((Throwable) e2);
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void skipControlCharactersStandard() {
        while (true) {
            char readUnsignedByte = (char) this.undecodedChunk.readUnsignedByte();
            if (!Character.isISOControl(readUnsignedByte) && !Character.isWhitespace(readUnsignedByte)) {
                this.undecodedChunk.readerIndex(this.undecodedChunk.readerIndex() - 1);
                return;
            }
        }
    }

    private InterfaceHttpData findMultipartDelimiter(String str, MultiPartStatus multiPartStatus, MultiPartStatus multiPartStatus2) throws ErrorDataDecoderException {
        int readerIndex = this.undecodedChunk.readerIndex();
        try {
            skipControlCharacters();
            skipOneLine();
            try {
                String readDelimiter = readDelimiter(str);
                if (readDelimiter.equals(str)) {
                    this.currentStatus = multiPartStatus;
                    return decodeMultipart(multiPartStatus);
                } else if (readDelimiter.equals(str + "--")) {
                    this.currentStatus = multiPartStatus2;
                    if (this.currentStatus != MultiPartStatus.HEADERDELIMITER) {
                        return null;
                    }
                    this.currentFieldAttributes = null;
                    return decodeMultipart(MultiPartStatus.HEADERDELIMITER);
                } else {
                    this.undecodedChunk.readerIndex(readerIndex);
                    throw new ErrorDataDecoderException("No Multipart delimiter found");
                }
            } catch (NotEnoughDataDecoderException e) {
                this.undecodedChunk.readerIndex(readerIndex);
                return null;
            }
        } catch (NotEnoughDataDecoderException e2) {
            this.undecodedChunk.readerIndex(readerIndex);
            return null;
        }
    }

    private InterfaceHttpData findMultipartDisposition() throws ErrorDataDecoderException {
        String cleanString;
        int readerIndex = this.undecodedChunk.readerIndex();
        if (this.currentStatus == MultiPartStatus.DISPOSITION) {
            this.currentFieldAttributes = new TreeMap(CaseIgnoringComparator.INSTANCE);
        }
        while (!skipOneLine()) {
            try {
                skipControlCharacters();
                String readLine = readLine();
                String[] splitMultipartHeader = splitMultipartHeader(readLine);
                if (splitMultipartHeader[0].equalsIgnoreCase(HttpPostBodyUtil.CONTENT_DISPOSITION)) {
                    boolean z = this.currentStatus == MultiPartStatus.DISPOSITION ? splitMultipartHeader[1].equalsIgnoreCase(HttpPostBodyUtil.FORM_DATA) : splitMultipartHeader[1].equalsIgnoreCase(HttpPostBodyUtil.ATTACHMENT) || splitMultipartHeader[1].equalsIgnoreCase(HttpPostBodyUtil.FILE);
                    if (z) {
                        int i = 2;
                        while (i < splitMultipartHeader.length) {
                            String[] split = StringUtil.split(splitMultipartHeader[i], '=');
                            try {
                                String cleanString2 = cleanString(split[0]);
                                String str = split[1];
                                if (HttpPostBodyUtil.FILENAME.equals(cleanString2)) {
                                    cleanString = str.substring(1, str.length() - 1);
                                } else {
                                    cleanString = cleanString(str);
                                }
                                Attribute createAttribute = this.factory.createAttribute(this.request, cleanString2, cleanString);
                                this.currentFieldAttributes.put(createAttribute.getName(), createAttribute);
                                i++;
                            } catch (NullPointerException e) {
                                throw new ErrorDataDecoderException((Throwable) e);
                            } catch (IllegalArgumentException e2) {
                                throw new ErrorDataDecoderException((Throwable) e2);
                            }
                        }
                    }
                } else if (splitMultipartHeader[0].equalsIgnoreCase(Names.CONTENT_TRANSFER_ENCODING)) {
                    try {
                        this.currentFieldAttributes.put(Names.CONTENT_TRANSFER_ENCODING, this.factory.createAttribute(this.request, Names.CONTENT_TRANSFER_ENCODING, cleanString(splitMultipartHeader[1])));
                    } catch (NullPointerException e3) {
                        throw new ErrorDataDecoderException((Throwable) e3);
                    } catch (IllegalArgumentException e4) {
                        throw new ErrorDataDecoderException((Throwable) e4);
                    }
                } else if (splitMultipartHeader[0].equalsIgnoreCase("Content-Length")) {
                    try {
                        this.currentFieldAttributes.put("Content-Length", this.factory.createAttribute(this.request, "Content-Length", cleanString(splitMultipartHeader[1])));
                    } catch (NullPointerException e5) {
                        throw new ErrorDataDecoderException((Throwable) e5);
                    } catch (IllegalArgumentException e6) {
                        throw new ErrorDataDecoderException((Throwable) e6);
                    }
                } else if (!splitMultipartHeader[0].equalsIgnoreCase("Content-Type")) {
                    throw new ErrorDataDecoderException("Unknown Params: " + readLine);
                } else if (!splitMultipartHeader[1].equalsIgnoreCase(HttpPostBodyUtil.MULTIPART_MIXED)) {
                    for (int i2 = 1; i2 < splitMultipartHeader.length; i2++) {
                        if (splitMultipartHeader[i2].toLowerCase().startsWith("charset")) {
                            try {
                                this.currentFieldAttributes.put("charset", this.factory.createAttribute(this.request, "charset", cleanString(StringUtil.split(splitMultipartHeader[i2], '=')[1])));
                            } catch (NullPointerException e7) {
                                throw new ErrorDataDecoderException((Throwable) e7);
                            } catch (IllegalArgumentException e8) {
                                throw new ErrorDataDecoderException((Throwable) e8);
                            }
                        } else {
                            try {
                                Attribute createAttribute2 = this.factory.createAttribute(this.request, cleanString(splitMultipartHeader[0]), splitMultipartHeader[i2]);
                                this.currentFieldAttributes.put(createAttribute2.getName(), createAttribute2);
                            } catch (NullPointerException e9) {
                                throw new ErrorDataDecoderException((Throwable) e9);
                            } catch (IllegalArgumentException e10) {
                                throw new ErrorDataDecoderException((Throwable) e10);
                            }
                        }
                    }
                } else if (this.currentStatus == MultiPartStatus.DISPOSITION) {
                    this.multipartMixedBoundary = "--" + StringUtil.split(splitMultipartHeader[2], '=')[1];
                    this.currentStatus = MultiPartStatus.MIXEDDELIMITER;
                    return decodeMultipart(MultiPartStatus.MIXEDDELIMITER);
                } else {
                    throw new ErrorDataDecoderException("Mixed Multipart found in a previous Mixed Multipart");
                }
            } catch (NotEnoughDataDecoderException e11) {
                this.undecodedChunk.readerIndex(readerIndex);
                return null;
            }
        }
        Attribute attribute = (Attribute) this.currentFieldAttributes.get(HttpPostBodyUtil.FILENAME);
        if (this.currentStatus == MultiPartStatus.DISPOSITION) {
            if (attribute != null) {
                this.currentStatus = MultiPartStatus.FILEUPLOAD;
                return decodeMultipart(MultiPartStatus.FILEUPLOAD);
            }
            this.currentStatus = MultiPartStatus.FIELD;
            return decodeMultipart(MultiPartStatus.FIELD);
        } else if (attribute != null) {
            this.currentStatus = MultiPartStatus.MIXEDFILEUPLOAD;
            return decodeMultipart(MultiPartStatus.MIXEDFILEUPLOAD);
        } else {
            throw new ErrorDataDecoderException("Filename not found");
        }
    }

    private InterfaceHttpData getFileUpload(String str) throws ErrorDataDecoderException {
        TransferEncodingMechanism transferEncodingMechanism;
        Charset charset2;
        Charset charset3;
        long j = 0;
        Attribute attribute = (Attribute) this.currentFieldAttributes.get(Names.CONTENT_TRANSFER_ENCODING);
        Charset charset4 = this.charset;
        TransferEncodingMechanism transferEncodingMechanism2 = TransferEncodingMechanism.BIT7;
        if (attribute != null) {
            try {
                String lowerCase = attribute.getValue().toLowerCase();
                if (lowerCase.equals(TransferEncodingMechanism.BIT7.value())) {
                    transferEncodingMechanism = transferEncodingMechanism2;
                    charset2 = HttpPostBodyUtil.US_ASCII;
                } else if (lowerCase.equals(TransferEncodingMechanism.BIT8.value())) {
                    charset2 = HttpPostBodyUtil.ISO_8859_1;
                    transferEncodingMechanism = TransferEncodingMechanism.BIT8;
                } else if (lowerCase.equals(TransferEncodingMechanism.BINARY.value())) {
                    transferEncodingMechanism = TransferEncodingMechanism.BINARY;
                    charset2 = charset4;
                } else {
                    throw new ErrorDataDecoderException("TransferEncoding Unknown: " + lowerCase);
                }
            } catch (IOException e) {
                throw new ErrorDataDecoderException((Throwable) e);
            }
        } else {
            transferEncodingMechanism = transferEncodingMechanism2;
            charset2 = charset4;
        }
        Attribute attribute2 = (Attribute) this.currentFieldAttributes.get("charset");
        if (attribute2 != null) {
            try {
                charset3 = Charset.forName(attribute2.getValue());
            } catch (IOException e2) {
                throw new ErrorDataDecoderException((Throwable) e2);
            }
        } else {
            charset3 = charset2;
        }
        if (this.currentFileUpload == null) {
            Attribute attribute3 = (Attribute) this.currentFieldAttributes.get(HttpPostBodyUtil.FILENAME);
            Attribute attribute4 = (Attribute) this.currentFieldAttributes.get(HttpPostBodyUtil.NAME);
            Attribute attribute5 = (Attribute) this.currentFieldAttributes.get("Content-Type");
            if (attribute5 == null) {
                throw new ErrorDataDecoderException("Content-Type is absent but required");
            }
            Attribute attribute6 = (Attribute) this.currentFieldAttributes.get("Content-Length");
            if (attribute6 != null) {
                try {
                    j = Long.parseLong(attribute6.getValue());
                } catch (IOException e3) {
                    throw new ErrorDataDecoderException((Throwable) e3);
                } catch (NumberFormatException e4) {
                }
            }
            try {
                this.currentFileUpload = this.factory.createFileUpload(this.request, cleanString(attribute4.getValue()), cleanString(attribute3.getValue()), attribute5.getValue(), transferEncodingMechanism.value(), charset3, j);
            } catch (NullPointerException e5) {
                throw new ErrorDataDecoderException((Throwable) e5);
            } catch (IllegalArgumentException e6) {
                throw new ErrorDataDecoderException((Throwable) e6);
            } catch (IOException e7) {
                throw new ErrorDataDecoderException((Throwable) e7);
            }
        }
        try {
            readFileUploadByteMultipart(str);
            if (!this.currentFileUpload.isCompleted()) {
                return null;
            }
            if (this.currentStatus == MultiPartStatus.FILEUPLOAD) {
                this.currentStatus = MultiPartStatus.HEADERDELIMITER;
                this.currentFieldAttributes = null;
            } else {
                this.currentStatus = MultiPartStatus.MIXEDDELIMITER;
                cleanMixedAttributes();
            }
            FileUpload fileUpload = this.currentFileUpload;
            this.currentFileUpload = null;
            return fileUpload;
        } catch (NotEnoughDataDecoderException e8) {
            return null;
        }
    }

    public void cleanFiles() {
        this.factory.cleanRequestHttpDatas(this.request);
    }

    public void removeHttpDataFromClean(InterfaceHttpData interfaceHttpData) {
        this.factory.removeHttpDataFromClean(this.request, interfaceHttpData);
    }

    private void cleanMixedAttributes() {
        this.currentFieldAttributes.remove("charset");
        this.currentFieldAttributes.remove("Content-Length");
        this.currentFieldAttributes.remove(Names.CONTENT_TRANSFER_ENCODING);
        this.currentFieldAttributes.remove("Content-Type");
        this.currentFieldAttributes.remove(HttpPostBodyUtil.FILENAME);
    }

    private String readLineStandard() throws NotEnoughDataDecoderException {
        int readerIndex = this.undecodedChunk.readerIndex();
        try {
            ChannelBuffer dynamicBuffer = ChannelBuffers.dynamicBuffer(64);
            while (this.undecodedChunk.readable()) {
                byte readByte = this.undecodedChunk.readByte();
                if (readByte == 13) {
                    if (this.undecodedChunk.readByte() == 10) {
                        return dynamicBuffer.toString(this.charset);
                    }
                } else if (readByte == 10) {
                    return dynamicBuffer.toString(this.charset);
                } else {
                    dynamicBuffer.writeByte(readByte);
                }
            }
            this.undecodedChunk.readerIndex(readerIndex);
            throw new NotEnoughDataDecoderException();
        } catch (IndexOutOfBoundsException e) {
            this.undecodedChunk.readerIndex(readerIndex);
            throw new NotEnoughDataDecoderException((Throwable) e);
        }
    }

    private String readLine() throws NotEnoughDataDecoderException {
        try {
            SeekAheadOptimize seekAheadOptimize = new SeekAheadOptimize(this.undecodedChunk);
            int readerIndex = this.undecodedChunk.readerIndex();
            try {
                ChannelBuffer dynamicBuffer = ChannelBuffers.dynamicBuffer(64);
                while (seekAheadOptimize.pos < seekAheadOptimize.limit) {
                    byte[] bArr = seekAheadOptimize.bytes;
                    int i = seekAheadOptimize.pos;
                    seekAheadOptimize.pos = i + 1;
                    byte b = bArr[i];
                    if (b == 13) {
                        if (seekAheadOptimize.pos < seekAheadOptimize.limit) {
                            byte[] bArr2 = seekAheadOptimize.bytes;
                            int i2 = seekAheadOptimize.pos;
                            seekAheadOptimize.pos = i2 + 1;
                            if (bArr2[i2] == 10) {
                                seekAheadOptimize.setReadPosition(0);
                                return dynamicBuffer.toString(this.charset);
                            }
                        } else {
                            dynamicBuffer.writeByte(b);
                        }
                    } else if (b == 10) {
                        seekAheadOptimize.setReadPosition(0);
                        return dynamicBuffer.toString(this.charset);
                    } else {
                        dynamicBuffer.writeByte(b);
                    }
                }
                this.undecodedChunk.readerIndex(readerIndex);
                throw new NotEnoughDataDecoderException();
            } catch (IndexOutOfBoundsException e) {
                this.undecodedChunk.readerIndex(readerIndex);
                throw new NotEnoughDataDecoderException((Throwable) e);
            }
        } catch (SeekAheadNoBackArrayException e2) {
            return readLineStandard();
        }
    }

    private String readDelimiterStandard(String str) throws NotEnoughDataDecoderException {
        int readerIndex = this.undecodedChunk.readerIndex();
        try {
            StringBuilder sb = new StringBuilder(64);
            int i = 0;
            int length = str.length();
            while (this.undecodedChunk.readable() && i < length) {
                byte readByte = this.undecodedChunk.readByte();
                if (readByte == str.charAt(i)) {
                    i++;
                    sb.append((char) readByte);
                } else {
                    this.undecodedChunk.readerIndex(readerIndex);
                    throw new NotEnoughDataDecoderException();
                }
            }
            if (this.undecodedChunk.readable()) {
                byte readByte2 = this.undecodedChunk.readByte();
                if (readByte2 == 13) {
                    if (this.undecodedChunk.readByte() == 10) {
                        return sb.toString();
                    }
                    this.undecodedChunk.readerIndex(readerIndex);
                    throw new NotEnoughDataDecoderException();
                } else if (readByte2 == 10) {
                    return sb.toString();
                } else {
                    if (readByte2 == 45) {
                        sb.append('-');
                        if (this.undecodedChunk.readByte() == 45) {
                            sb.append('-');
                            if (!this.undecodedChunk.readable()) {
                                return sb.toString();
                            }
                            byte readByte3 = this.undecodedChunk.readByte();
                            if (readByte3 == 13) {
                                if (this.undecodedChunk.readByte() == 10) {
                                    return sb.toString();
                                }
                                this.undecodedChunk.readerIndex(readerIndex);
                                throw new NotEnoughDataDecoderException();
                            } else if (readByte3 == 10) {
                                return sb.toString();
                            } else {
                                this.undecodedChunk.readerIndex(this.undecodedChunk.readerIndex() - 1);
                                return sb.toString();
                            }
                        }
                    }
                }
            }
            this.undecodedChunk.readerIndex(readerIndex);
            throw new NotEnoughDataDecoderException();
        } catch (IndexOutOfBoundsException e) {
            this.undecodedChunk.readerIndex(readerIndex);
            throw new NotEnoughDataDecoderException((Throwable) e);
        }
    }

    private String readDelimiter(String str) throws NotEnoughDataDecoderException {
        int i = 0;
        try {
            SeekAheadOptimize seekAheadOptimize = new SeekAheadOptimize(this.undecodedChunk);
            int readerIndex = this.undecodedChunk.readerIndex();
            int length = str.length();
            try {
                StringBuilder sb = new StringBuilder(64);
                while (seekAheadOptimize.pos < seekAheadOptimize.limit && i < length) {
                    byte[] bArr = seekAheadOptimize.bytes;
                    int i2 = seekAheadOptimize.pos;
                    seekAheadOptimize.pos = i2 + 1;
                    byte b = bArr[i2];
                    if (b == str.charAt(i)) {
                        i++;
                        sb.append((char) b);
                    } else {
                        this.undecodedChunk.readerIndex(readerIndex);
                        throw new NotEnoughDataDecoderException();
                    }
                }
                if (seekAheadOptimize.pos < seekAheadOptimize.limit) {
                    byte[] bArr2 = seekAheadOptimize.bytes;
                    int i3 = seekAheadOptimize.pos;
                    seekAheadOptimize.pos = i3 + 1;
                    byte b2 = bArr2[i3];
                    if (b2 == 13) {
                        if (seekAheadOptimize.pos < seekAheadOptimize.limit) {
                            byte[] bArr3 = seekAheadOptimize.bytes;
                            int i4 = seekAheadOptimize.pos;
                            seekAheadOptimize.pos = i4 + 1;
                            if (bArr3[i4] == 10) {
                                seekAheadOptimize.setReadPosition(0);
                                return sb.toString();
                            }
                        } else {
                            this.undecodedChunk.readerIndex(readerIndex);
                            throw new NotEnoughDataDecoderException();
                        }
                    } else if (b2 == 10) {
                        seekAheadOptimize.setReadPosition(0);
                        return sb.toString();
                    } else if (b2 == 45) {
                        sb.append('-');
                        if (seekAheadOptimize.pos < seekAheadOptimize.limit) {
                            byte[] bArr4 = seekAheadOptimize.bytes;
                            int i5 = seekAheadOptimize.pos;
                            seekAheadOptimize.pos = i5 + 1;
                            if (bArr4[i5] == 45) {
                                sb.append('-');
                                if (seekAheadOptimize.pos < seekAheadOptimize.limit) {
                                    byte[] bArr5 = seekAheadOptimize.bytes;
                                    int i6 = seekAheadOptimize.pos;
                                    seekAheadOptimize.pos = i6 + 1;
                                    byte b3 = bArr5[i6];
                                    if (b3 == 13) {
                                        if (seekAheadOptimize.pos < seekAheadOptimize.limit) {
                                            byte[] bArr6 = seekAheadOptimize.bytes;
                                            int i7 = seekAheadOptimize.pos;
                                            seekAheadOptimize.pos = i7 + 1;
                                            if (bArr6[i7] == 10) {
                                                seekAheadOptimize.setReadPosition(0);
                                                return sb.toString();
                                            }
                                        } else {
                                            this.undecodedChunk.readerIndex(readerIndex);
                                            throw new NotEnoughDataDecoderException();
                                        }
                                    } else if (b3 == 10) {
                                        seekAheadOptimize.setReadPosition(0);
                                        return sb.toString();
                                    } else {
                                        seekAheadOptimize.setReadPosition(1);
                                        return sb.toString();
                                    }
                                }
                                seekAheadOptimize.setReadPosition(0);
                                return sb.toString();
                            }
                        }
                    }
                }
                this.undecodedChunk.readerIndex(readerIndex);
                throw new NotEnoughDataDecoderException();
            } catch (IndexOutOfBoundsException e) {
                this.undecodedChunk.readerIndex(readerIndex);
                throw new NotEnoughDataDecoderException((Throwable) e);
            }
        } catch (SeekAheadNoBackArrayException e2) {
            return readDelimiterStandard(str);
        }
    }

    private void readFileUploadByteMultipartStandard(String str) throws NotEnoughDataDecoderException, ErrorDataDecoderException {
        boolean z = true;
        int readerIndex = this.undecodedChunk.readerIndex();
        int readerIndex2 = this.undecodedChunk.readerIndex();
        int i = 0;
        boolean z2 = true;
        while (true) {
            if (!this.undecodedChunk.readable()) {
                z = false;
                break;
            }
            byte readByte = this.undecodedChunk.readByte();
            if (z2) {
                if (readByte == str.codePointAt(i)) {
                    i++;
                    if (str.length() == i) {
                        break;
                    }
                } else if (readByte == 13) {
                    if (!this.undecodedChunk.readable()) {
                        i = 0;
                        z2 = false;
                    } else if (this.undecodedChunk.readByte() == 10) {
                        readerIndex2 = this.undecodedChunk.readerIndex() - 2;
                        i = 0;
                        z2 = true;
                    } else {
                        readerIndex2 = this.undecodedChunk.readerIndex() - 1;
                        this.undecodedChunk.readerIndex(readerIndex2);
                        i = 0;
                        z2 = false;
                    }
                } else if (readByte == 10) {
                    readerIndex2 = this.undecodedChunk.readerIndex() - 1;
                    i = 0;
                    z2 = true;
                } else {
                    readerIndex2 = this.undecodedChunk.readerIndex();
                    i = 0;
                    z2 = false;
                }
            } else if (readByte == 13) {
                if (this.undecodedChunk.readable()) {
                    if (this.undecodedChunk.readByte() == 10) {
                        readerIndex2 = this.undecodedChunk.readerIndex() - 2;
                        i = 0;
                        z2 = true;
                    } else {
                        readerIndex2 = this.undecodedChunk.readerIndex() - 1;
                        this.undecodedChunk.readerIndex(readerIndex2);
                    }
                }
            } else if (readByte == 10) {
                readerIndex2 = this.undecodedChunk.readerIndex() - 1;
                i = 0;
                z2 = true;
            } else {
                readerIndex2 = this.undecodedChunk.readerIndex();
            }
        }
        ChannelBuffer slice = this.undecodedChunk.slice(readerIndex, readerIndex2 - readerIndex);
        if (z) {
            try {
                this.currentFileUpload.addContent(slice, true);
                this.undecodedChunk.readerIndex(readerIndex2);
            } catch (IOException e) {
                throw new ErrorDataDecoderException((Throwable) e);
            }
        } else {
            try {
                this.currentFileUpload.addContent(slice, false);
                this.undecodedChunk.readerIndex(readerIndex2);
                throw new NotEnoughDataDecoderException();
            } catch (IOException e2) {
                throw new ErrorDataDecoderException((Throwable) e2);
            }
        }
    }

    private void readFileUploadByteMultipart(String str) throws NotEnoughDataDecoderException, ErrorDataDecoderException {
        boolean z = true;
        try {
            SeekAheadOptimize seekAheadOptimize = new SeekAheadOptimize(this.undecodedChunk);
            int readerIndex = this.undecodedChunk.readerIndex();
            int i = seekAheadOptimize.pos;
            int i2 = 0;
            boolean z2 = true;
            while (true) {
                if (seekAheadOptimize.pos >= seekAheadOptimize.limit) {
                    z = false;
                    break;
                }
                byte[] bArr = seekAheadOptimize.bytes;
                int i3 = seekAheadOptimize.pos;
                seekAheadOptimize.pos = i3 + 1;
                byte b = bArr[i3];
                if (z2) {
                    if (b == str.codePointAt(i2)) {
                        i2++;
                        if (str.length() == i2) {
                            break;
                        }
                    } else if (b == 13) {
                        if (seekAheadOptimize.pos < seekAheadOptimize.limit) {
                            byte[] bArr2 = seekAheadOptimize.bytes;
                            int i4 = seekAheadOptimize.pos;
                            seekAheadOptimize.pos = i4 + 1;
                            if (bArr2[i4] == 10) {
                                i = seekAheadOptimize.pos - 2;
                                i2 = 0;
                                z2 = true;
                            } else {
                                seekAheadOptimize.pos--;
                                i = seekAheadOptimize.pos;
                                i2 = 0;
                                z2 = false;
                            }
                        } else {
                            i2 = 0;
                            z2 = false;
                        }
                    } else if (b == 10) {
                        i = seekAheadOptimize.pos - 1;
                        i2 = 0;
                        z2 = true;
                    } else {
                        i = seekAheadOptimize.pos;
                        i2 = 0;
                        z2 = false;
                    }
                } else if (b == 13) {
                    if (seekAheadOptimize.pos < seekAheadOptimize.limit) {
                        byte[] bArr3 = seekAheadOptimize.bytes;
                        int i5 = seekAheadOptimize.pos;
                        seekAheadOptimize.pos = i5 + 1;
                        if (bArr3[i5] == 10) {
                            i = seekAheadOptimize.pos - 2;
                            i2 = 0;
                            z2 = true;
                        } else {
                            seekAheadOptimize.pos--;
                            i = seekAheadOptimize.pos;
                        }
                    }
                } else if (b == 10) {
                    i = seekAheadOptimize.pos - 1;
                    i2 = 0;
                    z2 = true;
                } else {
                    i = seekAheadOptimize.pos;
                }
            }
            int readPosition = seekAheadOptimize.getReadPosition(i);
            ChannelBuffer slice = this.undecodedChunk.slice(readerIndex, readPosition - readerIndex);
            if (z) {
                try {
                    this.currentFileUpload.addContent(slice, true);
                    this.undecodedChunk.readerIndex(readPosition);
                } catch (IOException e) {
                    throw new ErrorDataDecoderException((Throwable) e);
                }
            } else {
                try {
                    this.currentFileUpload.addContent(slice, false);
                    this.undecodedChunk.readerIndex(readPosition);
                    throw new NotEnoughDataDecoderException();
                } catch (IOException e2) {
                    throw new ErrorDataDecoderException((Throwable) e2);
                }
            }
        } catch (SeekAheadNoBackArrayException e3) {
            readFileUploadByteMultipartStandard(str);
        }
    }

    private void loadFieldMultipartStandard(String str) throws NotEnoughDataDecoderException, ErrorDataDecoderException {
        boolean z = true;
        int readerIndex = this.undecodedChunk.readerIndex();
        try {
            int readerIndex2 = this.undecodedChunk.readerIndex();
            int i = 0;
            boolean z2 = true;
            while (true) {
                if (!this.undecodedChunk.readable()) {
                    z = false;
                    break;
                }
                byte readByte = this.undecodedChunk.readByte();
                if (z2) {
                    if (readByte == str.codePointAt(i)) {
                        i++;
                        if (str.length() == i) {
                            break;
                        }
                    } else if (readByte == 13) {
                        if (!this.undecodedChunk.readable() || this.undecodedChunk.readByte() != 10) {
                            i = 0;
                            z2 = false;
                        } else {
                            readerIndex2 = this.undecodedChunk.readerIndex() - 2;
                            i = 0;
                            z2 = true;
                        }
                    } else if (readByte == 10) {
                        readerIndex2 = this.undecodedChunk.readerIndex() - 1;
                        i = 0;
                        z2 = true;
                    } else {
                        readerIndex2 = this.undecodedChunk.readerIndex();
                        i = 0;
                        z2 = false;
                    }
                } else if (readByte == 13) {
                    if (this.undecodedChunk.readable() && this.undecodedChunk.readByte() == 10) {
                        readerIndex2 = this.undecodedChunk.readerIndex() - 2;
                        i = 0;
                        z2 = true;
                    }
                } else if (readByte == 10) {
                    readerIndex2 = this.undecodedChunk.readerIndex() - 1;
                    i = 0;
                    z2 = true;
                } else {
                    readerIndex2 = this.undecodedChunk.readerIndex();
                }
            }
            if (z) {
                this.currentAttribute.addContent(this.undecodedChunk.slice(readerIndex, readerIndex2 - readerIndex), true);
                this.undecodedChunk.readerIndex(readerIndex2);
                return;
            }
            this.currentAttribute.addContent(this.undecodedChunk.slice(readerIndex, readerIndex2 - readerIndex), false);
            this.undecodedChunk.readerIndex(readerIndex2);
            throw new NotEnoughDataDecoderException();
        } catch (IOException e) {
            throw new ErrorDataDecoderException((Throwable) e);
        } catch (IOException e2) {
            throw new ErrorDataDecoderException((Throwable) e2);
        } catch (IndexOutOfBoundsException e3) {
            this.undecodedChunk.readerIndex(readerIndex);
            throw new NotEnoughDataDecoderException((Throwable) e3);
        }
    }

    private void loadFieldMultipart(String str) throws NotEnoughDataDecoderException, ErrorDataDecoderException {
        boolean z = true;
        try {
            SeekAheadOptimize seekAheadOptimize = new SeekAheadOptimize(this.undecodedChunk);
            int readerIndex = this.undecodedChunk.readerIndex();
            try {
                int i = seekAheadOptimize.pos;
                int i2 = 0;
                boolean z2 = true;
                while (true) {
                    if (seekAheadOptimize.pos >= seekAheadOptimize.limit) {
                        z = false;
                        break;
                    }
                    byte[] bArr = seekAheadOptimize.bytes;
                    int i3 = seekAheadOptimize.pos;
                    seekAheadOptimize.pos = i3 + 1;
                    byte b = bArr[i3];
                    if (z2) {
                        if (b == str.codePointAt(i2)) {
                            i2++;
                            if (str.length() == i2) {
                                break;
                            }
                        } else if (b == 13) {
                            if (seekAheadOptimize.pos < seekAheadOptimize.limit) {
                                byte[] bArr2 = seekAheadOptimize.bytes;
                                int i4 = seekAheadOptimize.pos;
                                seekAheadOptimize.pos = i4 + 1;
                                if (bArr2[i4] == 10) {
                                    i = seekAheadOptimize.pos - 2;
                                    i2 = 0;
                                    z2 = true;
                                }
                            }
                            i2 = 0;
                            z2 = false;
                        } else if (b == 10) {
                            i = seekAheadOptimize.pos - 1;
                            i2 = 0;
                            z2 = true;
                        } else {
                            i = seekAheadOptimize.pos;
                            i2 = 0;
                            z2 = false;
                        }
                    } else if (b == 13) {
                        if (seekAheadOptimize.pos < seekAheadOptimize.limit) {
                            byte[] bArr3 = seekAheadOptimize.bytes;
                            int i5 = seekAheadOptimize.pos;
                            seekAheadOptimize.pos = i5 + 1;
                            if (bArr3[i5] == 10) {
                                i = seekAheadOptimize.pos - 2;
                                i2 = 0;
                                z2 = true;
                            }
                        }
                    } else if (b == 10) {
                        i = seekAheadOptimize.pos - 1;
                        i2 = 0;
                        z2 = true;
                    } else {
                        i = seekAheadOptimize.pos;
                    }
                }
                int readPosition = seekAheadOptimize.getReadPosition(i);
                if (z) {
                    this.currentAttribute.addContent(this.undecodedChunk.slice(readerIndex, readPosition - readerIndex), true);
                    this.undecodedChunk.readerIndex(readPosition);
                    return;
                }
                this.currentAttribute.addContent(this.undecodedChunk.slice(readerIndex, readPosition - readerIndex), false);
                this.undecodedChunk.readerIndex(readPosition);
                throw new NotEnoughDataDecoderException();
            } catch (IOException e) {
                throw new ErrorDataDecoderException((Throwable) e);
            } catch (IOException e2) {
                throw new ErrorDataDecoderException((Throwable) e2);
            } catch (IndexOutOfBoundsException e3) {
                this.undecodedChunk.readerIndex(readerIndex);
                throw new NotEnoughDataDecoderException((Throwable) e3);
            }
        } catch (SeekAheadNoBackArrayException e4) {
            loadFieldMultipartStandard(str);
        }
    }

    private static String cleanString(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt == ':') {
                sb.append(32);
            } else if (charAt == ',') {
                sb.append(32);
            } else if (charAt == '=') {
                sb.append(32);
            } else if (charAt == ';') {
                sb.append(32);
            } else if (charAt == 9) {
                sb.append(32);
            } else if (charAt != '\"') {
                sb.append(charAt);
            }
        }
        return sb.toString().trim();
    }

    private boolean skipOneLine() {
        if (!this.undecodedChunk.readable()) {
            return false;
        }
        byte readByte = this.undecodedChunk.readByte();
        if (readByte == 13) {
            if (!this.undecodedChunk.readable()) {
                this.undecodedChunk.readerIndex(this.undecodedChunk.readerIndex() - 1);
                return false;
            } else if (this.undecodedChunk.readByte() == 10) {
                return true;
            } else {
                this.undecodedChunk.readerIndex(this.undecodedChunk.readerIndex() - 2);
                return false;
            }
        } else if (readByte == 10) {
            return true;
        } else {
            this.undecodedChunk.readerIndex(this.undecodedChunk.readerIndex() - 1);
            return false;
        }
    }

    private static String[] splitHeaderContentType(String str) {
        int length = str.length();
        int findNonWhitespace = HttpPostBodyUtil.findNonWhitespace(str, 0);
        int findWhitespace = HttpPostBodyUtil.findWhitespace(str, findNonWhitespace);
        if (findWhitespace >= length) {
            return new String[]{str, ""};
        }
        if (str.charAt(findWhitespace) == ';') {
            findWhitespace--;
        }
        return new String[]{str.substring(findNonWhitespace, findWhitespace), str.substring(HttpPostBodyUtil.findNonWhitespace(str, findWhitespace), HttpPostBodyUtil.findEndOfString(str))};
    }

    private static String[] splitMultipartHeader(String str) {
        String[] split;
        ArrayList arrayList = new ArrayList(1);
        int findNonWhitespace = HttpPostBodyUtil.findNonWhitespace(str, 0);
        int i = findNonWhitespace;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt == ':' || Character.isWhitespace(charAt)) {
                break;
            }
            i++;
        }
        int i2 = i;
        while (true) {
            if (i2 >= str.length()) {
                break;
            } else if (str.charAt(i2) == ':') {
                i2++;
                break;
            } else {
                i2++;
            }
        }
        int findNonWhitespace2 = HttpPostBodyUtil.findNonWhitespace(str, i2);
        int findEndOfString = HttpPostBodyUtil.findEndOfString(str);
        arrayList.add(str.substring(findNonWhitespace, i));
        String substring = str.substring(findNonWhitespace2, findEndOfString);
        if (substring.indexOf(59) >= 0) {
            split = StringUtil.split(substring, ';');
        } else {
            split = StringUtil.split(substring, ',');
        }
        for (String trim : split) {
            arrayList.add(trim.trim());
        }
        String[] strArr = new String[arrayList.size()];
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            strArr[i3] = (String) arrayList.get(i3);
        }
        return strArr;
    }
}
