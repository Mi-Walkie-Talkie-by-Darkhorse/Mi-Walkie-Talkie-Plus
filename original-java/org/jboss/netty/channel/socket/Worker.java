package org.jboss.netty.channel.socket;

public interface Worker extends Runnable {
    void executeInIoThread(Runnable runnable);
}
