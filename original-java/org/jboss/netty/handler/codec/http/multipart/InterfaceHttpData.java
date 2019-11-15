package org.jboss.netty.handler.codec.http.multipart;

public interface InterfaceHttpData extends Comparable<InterfaceHttpData> {

    public enum HttpDataType {
        Attribute,
        FileUpload,
        InternalAttribute
    }

    HttpDataType getHttpDataType();

    String getName();
}
