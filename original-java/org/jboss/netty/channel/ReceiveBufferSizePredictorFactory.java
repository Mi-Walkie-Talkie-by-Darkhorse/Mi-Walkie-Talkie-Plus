package org.jboss.netty.channel;

public interface ReceiveBufferSizePredictorFactory {
    ReceiveBufferSizePredictor getPredictor() throws Exception;
}
