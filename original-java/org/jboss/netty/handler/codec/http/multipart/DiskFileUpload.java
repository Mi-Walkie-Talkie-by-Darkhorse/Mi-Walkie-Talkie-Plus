package org.jboss.netty.handler.codec.http.multipart;

import java.io.File;
import java.nio.charset.Charset;
import org.apache.http.protocol.HTTP;
import org.jboss.netty.handler.codec.http.multipart.InterfaceHttpData.HttpDataType;

public class DiskFileUpload extends AbstractDiskHttpData implements FileUpload {
    public static String baseDirectory = null;
    public static boolean deleteOnExitTemporaryFile = true;
    public static final String postfix = ".tmp";
    public static final String prefix = "FUp_";
    private String contentTransferEncoding;
    private String contentType;
    private String filename;

    public DiskFileUpload(String str, String str2, String str3, String str4, Charset charset, long j) {
        super(str, charset, j);
        setFilename(str2);
        setContentType(str3);
        setContentTransferEncoding(str4);
    }

    public HttpDataType getHttpDataType() {
        return HttpDataType.FileUpload;
    }

    public String getFilename() {
        return this.filename;
    }

    public void setFilename(String str) {
        if (str == null) {
            throw new NullPointerException(HttpPostBodyUtil.FILENAME);
        }
        this.filename = str;
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
        if (interfaceHttpData instanceof FileUpload) {
            return compareTo((FileUpload) interfaceHttpData);
        }
        throw new ClassCastException("Cannot compare " + getHttpDataType() + " with " + interfaceHttpData.getHttpDataType());
    }

    public int compareTo(FileUpload fileUpload) {
        int compareToIgnoreCase = getName().compareToIgnoreCase(fileUpload.getName());
        if (compareToIgnoreCase != 0) {
        }
        return compareToIgnoreCase;
    }

    public void setContentType(String str) {
        if (str == null) {
            throw new NullPointerException("contentType");
        }
        this.contentType = str;
    }

    public String getContentType() {
        return this.contentType;
    }

    public String getContentTransferEncoding() {
        return this.contentTransferEncoding;
    }

    public void setContentTransferEncoding(String str) {
        this.contentTransferEncoding = str;
    }

    public String toString() {
        return "Content-Disposition: form-data; name=\"" + getName() + "\"; " + HttpPostBodyUtil.FILENAME + "=\"" + this.filename + "\"\r\n" + "Content-Type" + ": " + this.contentType + (this.charset != null ? HTTP.CHARSET_PARAM + this.charset + "\r\n" : "\r\n") + "Content-Length" + ": " + length() + "\r\n" + "Completed: " + isCompleted() + "\r\nIsInMemory: " + isInMemory() + "\r\nRealFile: " + this.file.getAbsolutePath() + " DefaultDeleteAfter: " + deleteOnExitTemporaryFile;
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
        return new File(this.filename).getName();
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
