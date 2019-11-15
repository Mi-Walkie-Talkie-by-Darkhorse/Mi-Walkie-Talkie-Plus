package org.jboss.netty.handler.codec.http.multipart;

public interface FileUpload extends HttpData {
    String getContentTransferEncoding();

    String getContentType();

    String getFilename();

    void setContentTransferEncoding(String str);

    void setContentType(String str);

    void setFilename(String str);
}
