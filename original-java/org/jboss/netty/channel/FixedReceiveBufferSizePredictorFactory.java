package org.jboss.netty.channel;

public class FixedReceiveBufferSizePredictorFactory implements ReceiveBufferSizePredictorFactory {
    private final ReceiveBufferSizePredictor predictor;

    public FixedReceiveBufferSizePredictorFactory(int i) {
        this.predictor = new FixedReceiveBufferSizePredictor(i);
    }

    public ReceiveBufferSizePredictor getPredictor() throws Exception {
        return this.predictor;
    }
}
