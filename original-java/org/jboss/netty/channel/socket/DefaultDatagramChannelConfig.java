package org.jboss.netty.channel.socket;

import java.io.IOException;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.MulticastSocket;
import java.net.NetworkInterface;
import java.net.SocketException;
import org.jboss.netty.channel.ChannelException;
import org.jboss.netty.channel.DefaultChannelConfig;
import org.jboss.netty.channel.FixedReceiveBufferSizePredictorFactory;
import org.jboss.netty.channel.ReceiveBufferSizePredictor;
import org.jboss.netty.channel.ReceiveBufferSizePredictorFactory;
import org.jboss.netty.util.internal.ConversionUtil;

public class DefaultDatagramChannelConfig extends DefaultChannelConfig implements DatagramChannelConfig {
    private static final ReceiveBufferSizePredictorFactory DEFAULT_PREDICTOR_FACTORY = new FixedReceiveBufferSizePredictorFactory(768);
    private volatile ReceiveBufferSizePredictor predictor;
    private volatile ReceiveBufferSizePredictorFactory predictorFactory = DEFAULT_PREDICTOR_FACTORY;
    private final DatagramSocket socket;

    public DefaultDatagramChannelConfig(DatagramSocket datagramSocket) {
        if (datagramSocket == null) {
            throw new NullPointerException("socket");
        }
        this.socket = datagramSocket;
    }

    public boolean setOption(String str, Object obj) {
        if (super.setOption(str, obj)) {
            return true;
        }
        if ("broadcast".equals(str)) {
            setBroadcast(ConversionUtil.toBoolean(obj));
            return true;
        } else if ("receiveBufferSize".equals(str)) {
            setReceiveBufferSize(ConversionUtil.toInt(obj));
            return true;
        } else if ("sendBufferSize".equals(str)) {
            setSendBufferSize(ConversionUtil.toInt(obj));
            return true;
        } else if ("receiveBufferSizePredictorFactory".equals(str)) {
            setReceiveBufferSizePredictorFactory((ReceiveBufferSizePredictorFactory) obj);
            return true;
        } else if ("receiveBufferSizePredictor".equals(str)) {
            setReceiveBufferSizePredictor((ReceiveBufferSizePredictor) obj);
            return true;
        } else if ("reuseAddress".equals(str)) {
            setReuseAddress(ConversionUtil.toBoolean(obj));
            return true;
        } else if ("loopbackModeDisabled".equals(str)) {
            setLoopbackModeDisabled(ConversionUtil.toBoolean(obj));
            return true;
        } else if ("interface".equals(str)) {
            setInterface((InetAddress) obj);
            return true;
        } else if ("networkInterface".equals(str)) {
            setNetworkInterface((NetworkInterface) obj);
            return true;
        } else if ("timeToLive".equals(str)) {
            setTimeToLive(ConversionUtil.toInt(obj));
            return true;
        } else if (!"trafficClass".equals(str)) {
            return false;
        } else {
            setTrafficClass(ConversionUtil.toInt(obj));
            return true;
        }
    }

    public boolean isBroadcast() {
        try {
            return this.socket.getBroadcast();
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public void setBroadcast(boolean z) {
        try {
            this.socket.setBroadcast(z);
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public InetAddress getInterface() {
        if (this.socket instanceof MulticastSocket) {
            try {
                return ((MulticastSocket) this.socket).getInterface();
            } catch (SocketException e) {
                throw new ChannelException((Throwable) e);
            }
        } else {
            throw new UnsupportedOperationException();
        }
    }

    public void setInterface(InetAddress inetAddress) {
        if (this.socket instanceof MulticastSocket) {
            try {
                ((MulticastSocket) this.socket).setInterface(inetAddress);
            } catch (SocketException e) {
                throw new ChannelException((Throwable) e);
            }
        } else {
            throw new UnsupportedOperationException();
        }
    }

    public boolean isLoopbackModeDisabled() {
        if (this.socket instanceof MulticastSocket) {
            try {
                return ((MulticastSocket) this.socket).getLoopbackMode();
            } catch (SocketException e) {
                throw new ChannelException((Throwable) e);
            }
        } else {
            throw new UnsupportedOperationException();
        }
    }

    public void setLoopbackModeDisabled(boolean z) {
        if (this.socket instanceof MulticastSocket) {
            try {
                ((MulticastSocket) this.socket).setLoopbackMode(z);
            } catch (SocketException e) {
                throw new ChannelException((Throwable) e);
            }
        } else {
            throw new UnsupportedOperationException();
        }
    }

    public NetworkInterface getNetworkInterface() {
        if (this.socket instanceof MulticastSocket) {
            try {
                return ((MulticastSocket) this.socket).getNetworkInterface();
            } catch (SocketException e) {
                throw new ChannelException((Throwable) e);
            }
        } else {
            throw new UnsupportedOperationException();
        }
    }

    public void setNetworkInterface(NetworkInterface networkInterface) {
        if (this.socket instanceof MulticastSocket) {
            try {
                ((MulticastSocket) this.socket).setNetworkInterface(networkInterface);
            } catch (SocketException e) {
                throw new ChannelException((Throwable) e);
            }
        } else {
            throw new UnsupportedOperationException();
        }
    }

    public boolean isReuseAddress() {
        try {
            return this.socket.getReuseAddress();
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public void setReuseAddress(boolean z) {
        try {
            this.socket.setReuseAddress(z);
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public int getReceiveBufferSize() {
        try {
            return this.socket.getReceiveBufferSize();
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public void setReceiveBufferSize(int i) {
        try {
            this.socket.setReceiveBufferSize(i);
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public int getSendBufferSize() {
        try {
            return this.socket.getSendBufferSize();
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public void setSendBufferSize(int i) {
        try {
            this.socket.setSendBufferSize(i);
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public int getTimeToLive() {
        if (this.socket instanceof MulticastSocket) {
            try {
                return ((MulticastSocket) this.socket).getTimeToLive();
            } catch (IOException e) {
                throw new ChannelException((Throwable) e);
            }
        } else {
            throw new UnsupportedOperationException();
        }
    }

    public void setTimeToLive(int i) {
        if (this.socket instanceof MulticastSocket) {
            try {
                ((MulticastSocket) this.socket).setTimeToLive(i);
            } catch (IOException e) {
                throw new ChannelException((Throwable) e);
            }
        } else {
            throw new UnsupportedOperationException();
        }
    }

    public int getTrafficClass() {
        try {
            return this.socket.getTrafficClass();
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
    }

    public void setTrafficClass(int i) {
        try {
            this.socket.setTrafficClass(i);
        } catch (SocketException e) {
            throw new ChannelException((Throwable) e);
        }
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
