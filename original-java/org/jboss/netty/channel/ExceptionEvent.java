package org.jboss.netty.channel;

public interface ExceptionEvent extends ChannelEvent {
    Throwable getCause();
}
