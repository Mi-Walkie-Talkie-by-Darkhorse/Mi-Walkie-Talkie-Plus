package org.jboss.netty.handler.codec.http.multipart;

import java.nio.charset.Charset;
import org.jboss.netty.handler.codec.http.HttpRequest;

public interface HttpDataFactory {
    void cleanAllHttpDatas();

    void cleanRequestHttpDatas(HttpRequest httpRequest);

    Attribute createAttribute(HttpRequest httpRequest, String str);

    Attribute createAttribute(HttpRequest httpRequest, String str, String str2);

    FileUpload createFileUpload(HttpRequest httpRequest, String str, String str2, String str3, String str4, Charset charset, long j);

    void removeHttpDataFromClean(HttpRequest httpRequest, InterfaceHttpData interfaceHttpData);
}
