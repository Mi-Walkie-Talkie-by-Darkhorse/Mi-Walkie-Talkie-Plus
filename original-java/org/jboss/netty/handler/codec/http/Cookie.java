package org.jboss.netty.handler.codec.http;

import java.util.Set;

public interface Cookie extends Comparable<Cookie> {
    String getComment();

    String getCommentUrl();

    String getDomain();

    int getMaxAge();

    String getName();

    String getPath();

    Set<Integer> getPorts();

    String getValue();

    int getVersion();

    boolean isDiscard();

    boolean isHttpOnly();

    boolean isSecure();

    void setComment(String str);

    void setCommentUrl(String str);

    void setDiscard(boolean z);

    void setDomain(String str);

    void setHttpOnly(boolean z);

    void setMaxAge(int i);

    void setPath(String str);

    void setPorts(Iterable<Integer> iterable);

    void setPorts(int... iArr);

    void setSecure(boolean z);

    void setValue(String str);

    void setVersion(int i);
}
