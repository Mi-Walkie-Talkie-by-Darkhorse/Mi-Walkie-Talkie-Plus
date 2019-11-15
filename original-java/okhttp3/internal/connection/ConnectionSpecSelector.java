package okhttp3.internal.connection;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;
import okhttp3.ConnectionSpec;
import okhttp3.internal.Internal;

public final class ConnectionSpecSelector {
    private final List<ConnectionSpec> connectionSpecs;
    private boolean isFallback;
    private boolean isFallbackPossible;
    private int nextModeIndex = 0;

    public ConnectionSpecSelector(List<ConnectionSpec> list) {
        this.connectionSpecs = list;
    }

    public ConnectionSpec configureSecureSocket(SSLSocket sSLSocket) throws IOException {
        ConnectionSpec connectionSpec;
        int i = this.nextModeIndex;
        int size = this.connectionSpecs.size();
        int i2 = i;
        while (true) {
            if (i2 >= size) {
                connectionSpec = null;
                break;
            }
            connectionSpec = (ConnectionSpec) this.connectionSpecs.get(i2);
            if (connectionSpec.isCompatible(sSLSocket)) {
                this.nextModeIndex = i2 + 1;
                break;
            }
            i2++;
        }
        if (connectionSpec == null) {
            throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.isFallback + ", modes=" + this.connectionSpecs + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
        }
        this.isFallbackPossible = isFallbackPossible(sSLSocket);
        Internal.instance.apply(connectionSpec, sSLSocket, this.isFallback);
        return connectionSpec;
    }

    public boolean connectionFailed(IOException iOException) {
        this.isFallback = true;
        if (!this.isFallbackPossible || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        if (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        if ((iOException instanceof SSLHandshakeException) || (iOException instanceof SSLProtocolException)) {
            return true;
        }
        return false;
    }

    private boolean isFallbackPossible(SSLSocket sSLSocket) {
        int i = this.nextModeIndex;
        while (true) {
            int i2 = i;
            if (i2 >= this.connectionSpecs.size()) {
                return false;
            }
            if (((ConnectionSpec) this.connectionSpecs.get(i2)).isCompatible(sSLSocket)) {
                return true;
            }
            i = i2 + 1;
        }
    }
}
