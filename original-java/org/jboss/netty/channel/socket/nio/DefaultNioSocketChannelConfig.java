package org.jboss.netty.channel.socket.nio;

import java.net.Socket;
import java.util.Map;
import org.jboss.netty.channel.AdaptiveReceiveBufferSizePredictorFactory;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.ReceiveBufferSizePredictor;
import org.jboss.netty.channel.ReceiveBufferSizePredictorFactory;
import org.jboss.netty.channel.socket.DefaultSocketChannelConfig;
import org.jboss.netty.logging.InternalLogger;
import org.jboss.netty.logging.InternalLoggerFactory;
import org.jboss.netty.util.internal.ConversionUtil;

class DefaultNioSocketChannelConfig extends DefaultSocketChannelConfig implements NioSocketChannelConfig {
    private static final ReceiveBufferSizePredictorFactory DEFAULT_PREDICTOR_FACTORY = new AdaptiveReceiveBufferSizePredictorFactory();
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(DefaultNioSocketChannelConfig.class);
    private volatile ReceiveBufferSizePredictor predictor;
    private volatile ReceiveBufferSizePredictorFactory predictorFactory = DEFAULT_PREDICTOR_FACTORY;
    private volatile int writeBufferHighWaterMark = 65536;
    private volatile int writeBufferLowWaterMark = 32768;
    private volatile int writeSpinCount = 16;

    DefaultNioSocketChannelConfig(Socket socket) {
        super(socket);
    }

    public void setOptions(Map<String, Object> map) {
        super.setOptions(map);
        if (getWriteBufferHighWaterMark() < getWriteBufferLowWaterMark()) {
            setWriteBufferLowWaterMark0(getWriteBufferHighWaterMark() >>> 1);
            if (logger.isWarnEnabled()) {
                logger.warn("writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark; setting to the half of the writeBufferHighWaterMark.");
            }
        }
    }

    public boolean setOption(String str, Object obj) {
        if (super.setOption(str, obj)) {
            return true;
        }
        if ("writeBufferHighWaterMark".equals(str)) {
            setWriteBufferHighWaterMark0(ConversionUtil.toInt(obj));
            return true;
        } else if ("writeBufferLowWaterMark".equals(str)) {
            setWriteBufferLowWaterMark0(ConversionUtil.toInt(obj));
            return true;
        } else if ("writeSpinCount".equals(str)) {
            setWriteSpinCount(ConversionUtil.toInt(obj));
            return true;
        } else if ("receiveBufferSizePredictorFactory".equals(str)) {
            setReceiveBufferSizePredictorFactory((ReceiveBufferSizePredictorFactory) obj);
            return true;
        } else if (!"receiveBufferSizePredictor".equals(str)) {
            return false;
        } else {
            setReceiveBufferSizePredictor((ReceiveBufferSizePredictor) obj);
            return true;
        }
    }

    public int getWriteBufferHighWaterMark() {
        return this.writeBufferHighWaterMark;
    }

    public void setWriteBufferHighWaterMark(int i) {
        if (i < getWriteBufferLowWaterMark()) {
            throw new IllegalArgumentException("writeBufferHighWaterMark cannot be less than writeBufferLowWaterMark (" + getWriteBufferLowWaterMark() + "): " + i);
        }
        setWriteBufferHighWaterMark0(i);
    }

    private void setWriteBufferHighWaterMark0(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("writeBufferHighWaterMark: " + i);
        }
        this.writeBufferHighWaterMark = i;
    }

    public int getWriteBufferLowWaterMark() {
        return this.writeBufferLowWaterMark;
    }

    public void setWriteBufferLowWaterMark(int i) {
        if (i > getWriteBufferHighWaterMark()) {
            throw new IllegalArgumentException("writeBufferLowWaterMark cannot be greater than writeBufferHighWaterMark (" + getWriteBufferHighWaterMark() + "): " + i);
        }
        setWriteBufferLowWaterMark0(i);
    }

    private void setWriteBufferLowWaterMark0(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("writeBufferLowWaterMark: " + i);
        }
        this.writeBufferLowWaterMark = i;
    }

    public int getWriteSpinCount() {
        return this.writeSpinCount;
    }

    public void setWriteSpinCount(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("writeSpinCount must be a positive integer.");
        }
        this.writeSpinCount = i;
    }

    public ReceiveBufferSizePredictor getReceiveBufferSizePredictor() {
        ReceiveBufferSizePredictor receiveBufferSizePredictor = this.predictor;
        if (receiveBufferSizePredictor != null) {
            return receiveBufferSizePredictor;
        }
        try {
            ReceiveBufferSizePredictor predictor2 = getReceiveBufferSizePredictorFactory().getPredictor();
            this.predictor = predictor2;
            return predictor2;
        } catch (Exception e) {
            throw new ChannelException("Failed to create a new " + ReceiveBufferSizePredictor.class.getSimpleName() + '.', e);
        }
    }

    public void setReceiveBufferSizePredictor(ReceiveBufferSizePredictor receiveBufferSizePredictor) {
        if (receiveBufferSizePredictor == null) {
            throw new NullPointerException("predictor");
        }
        this.predictor = receiveBufferSizePredictor;
    }

    public ReceiveBufferSizePredictorFactory getReceiveBufferSizePredictorFactory() {
        return this.predictorFactory;
    }

    public void setReceiveBufferSizePredictorFactory(ReceiveBufferSizePredictorFactory receiveBufferSizePredictorFactory) {
        if (receiveBufferSizePredictorFactory == null) {
            throw new NullPointerException("predictorFactory");
        }
        this.predictorFactory = receiveBufferSizePredictorFactory;
    }
}
