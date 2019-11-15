package org.bouncycastle.crypto.tls;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.SecureRandom;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.util.Arrays;

public class TlsClientProtocol extends TlsProtocol {
    protected TlsAuthentication authentication = null;
    protected CertificateRequest certificateRequest = null;
    protected CertificateStatus certificateStatus = null;
    protected TlsKeyExchange keyExchange = null;
    protected byte[] selectedSessionID = null;
    protected TlsClient tlsClient = null;
    TlsClientContextImpl tlsClientContext = null;

    public TlsClientProtocol(InputStream inputStream, OutputStream outputStream, SecureRandom secureRandom) {
        super(inputStream, outputStream, secureRandom);
    }

    public TlsClientProtocol(SecureRandom secureRandom) {
        super(secureRandom);
    }

    /* access modifiers changed from: protected */
    public void cleanupHandshake() {
        super.cleanupHandshake();
        this.selectedSessionID = null;
        this.keyExchange = null;
        this.authentication = null;
        this.certificateStatus = null;
        this.certificateRequest = null;
    }

    public void connect(TlsClient tlsClient2) throws IOException {
        if (tlsClient2 == null) {
            throw new IllegalArgumentException("'tlsClient' cannot be null");
        } else if (this.tlsClient != null) {
            throw new IllegalStateException("'connect' can only be called once");
        } else {
            this.tlsClient = tlsClient2;
            this.securityParameters = new SecurityParameters();
            this.securityParameters.entity = 1;
            this.tlsClientContext = new TlsClientContextImpl(this.secureRandom, this.securityParameters);
            this.securityParameters.clientRandom = createRandomBlock(tlsClient2.shouldUseGMTUnixTime(), this.tlsClientContext.getNonceRandomGenerator());
            this.tlsClient.init(this.tlsClientContext);
            this.recordStream.init(this.tlsClientContext);
            TlsSession sessionToResume = tlsClient2.getSessionToResume();
            if (sessionToResume != null && sessionToResume.isResumable()) {
                SessionParameters exportSessionParameters = sessionToResume.exportSessionParameters();
                if (exportSessionParameters != null) {
                    this.tlsSession = sessionToResume;
                    this.sessionParameters = exportSessionParameters;
                }
            }
            sendClientHelloMessage();
            this.connection_state = 1;
            blockForHandshake();
        }
    }

    /* access modifiers changed from: protected */
    public TlsContext getContext() {
        return this.tlsClientContext;
    }

    /* access modifiers changed from: 0000 */
    public AbstractTlsContext getContextAdmin() {
        return this.tlsClientContext;
    }

    /* access modifiers changed from: protected */
    public TlsPeer getPeer() {
        return this.tlsClient;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Code restructure failed: missing block: B:120:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:61:0x013a, code lost:
        r7.keyExchange.skipServerCredentials();
        r7.authentication = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:62:0x0141, code lost:
        r7.keyExchange.skipServerKeyExchange();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:63:0x0146, code lost:
        assertEmpty(r0);
        r7.connection_state = 8;
        r7.recordStream.getHandshakeHash().sealHashAlgorithms();
        r0 = r7.tlsClient.getClientSupplementalData();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:64:0x015c, code lost:
        if (r0 == null) goto L_0x0161;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:65:0x015e, code lost:
        sendSupplementalDataMessage(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:66:0x0161, code lost:
        r7.connection_state = 9;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:67:0x0167, code lost:
        if (r7.certificateRequest != null) goto L_0x01da;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:68:0x0169, code lost:
        r7.keyExchange.skipClientCredentials();
        r0 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:69:0x016f, code lost:
        r7.connection_state = 10;
        sendClientKeyExchangeMessage();
        r7.connection_state = 11;
        r2 = r7.recordStream.prepareToFinish();
        r7.securityParameters.sessionHash = getCurrentPRFHash(getContext(), r2, null);
        establishMasterSecret(getContext(), r7.keyExchange);
        r7.recordStream.setPendingConnectionState(getPeer().getCompression(), getPeer().getCipher());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:70:0x01a8, code lost:
        if (r0 == null) goto L_0x01d0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:72:0x01ac, code lost:
        if ((r0 instanceof org.bouncycastle.crypto.tls.TlsSignerCredentials) == false) goto L_0x01d0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:73:0x01ae, code lost:
        r0 = (org.bouncycastle.crypto.tls.TlsSignerCredentials) r0;
        r3 = org.bouncycastle.crypto.tls.TlsUtils.getSignatureAndHashAlgorithm(getContext(), r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:74:0x01b8, code lost:
        if (r3 != null) goto L_0x01fd;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:75:0x01ba, code lost:
        r1 = r7.securityParameters.getSessionHash();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:76:0x01c0, code lost:
        sendCertificateVerifyMessage(new org.bouncycastle.crypto.tls.DigitallySigned(r3, r0.generateCertificateSignature(r1)));
        r7.connection_state = 12;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:77:0x01d0, code lost:
        sendChangeCipherSpecMessage();
        sendFinishedMessage();
        r7.connection_state = 13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:78:0x01da, code lost:
        r0 = r7.authentication.getClientCredentials(r7.certificateRequest);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:79:0x01e2, code lost:
        if (r0 != null) goto L_0x01ef;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:80:0x01e4, code lost:
        r7.keyExchange.skipClientCredentials();
        sendCertificateMessage(org.bouncycastle.crypto.tls.Certificate.EMPTY_CHAIN);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:81:0x01ef, code lost:
        r7.keyExchange.processClientCredentials(r0);
        sendCertificateMessage(r0.getCertificate());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:82:0x01fd, code lost:
        r1 = r2.getFinalHash(r3.getHash());
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void handleHandshakeMessage(short r8, byte[] r9) throws java.io.IOException {
        /*
            r7 = this;
            r6 = 13
            r5 = 2
            r4 = 16
            r1 = 0
            r3 = 10
            java.io.ByteArrayInputStream r0 = new java.io.ByteArrayInputStream
            r0.<init>(r9)
            boolean r2 = r7.resumedSession
            if (r2 == 0) goto L_0x0031
            r1 = 20
            if (r8 != r1) goto L_0x0019
            short r1 = r7.connection_state
            if (r1 == r5) goto L_0x001f
        L_0x0019:
            org.bouncycastle.crypto.tls.TlsFatalAlert r0 = new org.bouncycastle.crypto.tls.TlsFatalAlert
            r0.<init>(r3)
            throw r0
        L_0x001f:
            r7.processFinishedMessage(r0)
            r0 = 15
            r7.connection_state = r0
            r7.sendFinishedMessage()
            r7.connection_state = r6
            r7.connection_state = r4
            r7.completeHandshake()
        L_0x0030:
            return
        L_0x0031:
            switch(r8) {
                case 0: goto L_0x028d;
                case 1: goto L_0x0034;
                case 2: goto L_0x00bf;
                case 3: goto L_0x0034;
                case 4: goto L_0x026c;
                case 5: goto L_0x0034;
                case 6: goto L_0x0034;
                case 7: goto L_0x0034;
                case 8: goto L_0x0034;
                case 9: goto L_0x0034;
                case 10: goto L_0x0034;
                case 11: goto L_0x003a;
                case 12: goto L_0x0206;
                case 13: goto L_0x0228;
                case 14: goto L_0x012a;
                case 15: goto L_0x0034;
                case 16: goto L_0x0034;
                case 17: goto L_0x0034;
                case 18: goto L_0x0034;
                case 19: goto L_0x0034;
                case 20: goto L_0x009c;
                case 21: goto L_0x0034;
                case 22: goto L_0x007a;
                case 23: goto L_0x0116;
                default: goto L_0x0034;
            }
        L_0x0034:
            org.bouncycastle.crypto.tls.TlsFatalAlert r0 = new org.bouncycastle.crypto.tls.TlsFatalAlert
            r0.<init>(r3)
            throw r0
        L_0x003a:
            short r2 = r7.connection_state
            switch(r2) {
                case 2: goto L_0x0045;
                case 3: goto L_0x0048;
                default: goto L_0x003f;
            }
        L_0x003f:
            org.bouncycastle.crypto.tls.TlsFatalAlert r0 = new org.bouncycastle.crypto.tls.TlsFatalAlert
            r0.<init>(r3)
            throw r0
        L_0x0045:
            r7.handleSupplementalData(r1)
        L_0x0048:
            org.bouncycastle.crypto.tls.Certificate r1 = org.bouncycastle.crypto.tls.Certificate.parse(r0)
            r7.peerCertificate = r1
            assertEmpty(r0)
            org.bouncycastle.crypto.tls.Certificate r0 = r7.peerCertificate
            if (r0 == 0) goto L_0x005d
            org.bouncycastle.crypto.tls.Certificate r0 = r7.peerCertificate
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0060
        L_0x005d:
            r0 = 0
            r7.allowCertificateStatus = r0
        L_0x0060:
            org.bouncycastle.crypto.tls.TlsKeyExchange r0 = r7.keyExchange
            org.bouncycastle.crypto.tls.Certificate r1 = r7.peerCertificate
            r0.processServerCertificate(r1)
            org.bouncycastle.crypto.tls.TlsClient r0 = r7.tlsClient
            org.bouncycastle.crypto.tls.TlsAuthentication r0 = r0.getAuthentication()
            r7.authentication = r0
            org.bouncycastle.crypto.tls.TlsAuthentication r0 = r7.authentication
            org.bouncycastle.crypto.tls.Certificate r1 = r7.peerCertificate
            r0.notifyServerCertificate(r1)
            r0 = 4
            r7.connection_state = r0
            goto L_0x0030
        L_0x007a:
            short r1 = r7.connection_state
            switch(r1) {
                case 4: goto L_0x0085;
                default: goto L_0x007f;
            }
        L_0x007f:
            org.bouncycastle.crypto.tls.TlsFatalAlert r0 = new org.bouncycastle.crypto.tls.TlsFatalAlert
            r0.<init>(r3)
            throw r0
        L_0x0085:
            boolean r1 = r7.allowCertificateStatus
            if (r1 != 0) goto L_0x008f
            org.bouncycastle.crypto.tls.TlsFatalAlert r0 = new org.bouncycastle.crypto.tls.TlsFatalAlert
            r0.<init>(r3)
            throw r0
        L_0x008f:
            org.bouncycastle.crypto.tls.CertificateStatus r1 = org.bouncycastle.crypto.tls.CertificateStatus.parse(r0)
            r7.certificateStatus = r1
            assertEmpty(r0)
            r0 = 5
            r7.connection_state = r0
            goto L_0x0030
        L_0x009c:
            short r1 = r7.connection_state
            switch(r1) {
                case 13: goto L_0x00a7;
                case 14: goto L_0x00b1;
                default: goto L_0x00a1;
            }
        L_0x00a1:
            org.bouncycastle.crypto.tls.TlsFatalAlert r0 = new org.bouncycastle.crypto.tls.TlsFatalAlert
            r0.<init>(r3)
            throw r0
        L_0x00a7:
            boolean r1 = r7.expectSessionTicket
            if (r1 == 0) goto L_0x00b1
            org.bouncycastle.crypto.tls.TlsFatalAlert r0 = new org.bouncycastle.crypto.tls.TlsFatalAlert
            r0.<init>(r3)
            throw r0
        L_0x00b1:
            r7.processFinishedMessage(r0)
            r0 = 15
            r7.connection_state = r0
            r7.connection_state = r4
            r7.completeHandshake()
            goto L_0x0030
        L_0x00bf:
            short r2 = r7.connection_state
            switch(r2) {
                case 1: goto L_0x00ca;
                default: goto L_0x00c4;
            }
        L_0x00c4:
            org.bouncycastle.crypto.tls.TlsFatalAlert r0 = new org.bouncycastle.crypto.tls.TlsFatalAlert
            r0.<init>(r3)
            throw r0
        L_0x00ca:
            r7.receiveServerHelloMessage(r0)
            r7.connection_state = r5
            org.bouncycastle.crypto.tls.RecordStream r0 = r7.recordStream
            r0.notifyHelloComplete()
            r7.applyMaxFragmentLengthExtension()
            boolean r0 = r7.resumedSession
            if (r0 == 0) goto L_0x0103
            org.bouncycastle.crypto.tls.SecurityParameters r0 = r7.securityParameters
            org.bouncycastle.crypto.tls.SessionParameters r1 = r7.sessionParameters
            byte[] r1 = r1.getMasterSecret()
            byte[] r1 = org.bouncycastle.util.Arrays.clone(r1)
            r0.masterSecret = r1
            org.bouncycastle.crypto.tls.RecordStream r0 = r7.recordStream
            org.bouncycastle.crypto.tls.TlsPeer r1 = r7.getPeer()
            org.bouncycastle.crypto.tls.TlsCompression r1 = r1.getCompression()
            org.bouncycastle.crypto.tls.TlsPeer r2 = r7.getPeer()
            org.bouncycastle.crypto.tls.TlsCipher r2 = r2.getCipher()
            r0.setPendingConnectionState(r1, r2)
            r7.sendChangeCipherSpecMessage()
            goto L_0x0030
        L_0x0103:
            r7.invalidateSession()
            byte[] r0 = r7.selectedSessionID
            int r0 = r0.length
            if (r0 <= 0) goto L_0x0030
            org.bouncycastle.crypto.tls.TlsSessionImpl r0 = new org.bouncycastle.crypto.tls.TlsSessionImpl
            byte[] r2 = r7.selectedSessionID
            r0.<init>(r2, r1)
            r7.tlsSession = r0
            goto L_0x0030
        L_0x0116:
            short r1 = r7.connection_state
            switch(r1) {
                case 2: goto L_0x0121;
                default: goto L_0x011b;
            }
        L_0x011b:
            org.bouncycastle.crypto.tls.TlsFatalAlert r0 = new org.bouncycastle.crypto.tls.TlsFatalAlert
            r0.<init>(r3)
            throw r0
        L_0x0121:
            java.util.Vector r0 = readSupplementalDataMessage(r0)
            r7.handleSupplementalData(r0)
            goto L_0x0030
        L_0x012a:
            short r2 = r7.connection_state
            switch(r2) {
                case 2: goto L_0x0137;
                case 3: goto L_0x013a;
                case 4: goto L_0x0141;
                case 5: goto L_0x0141;
                case 6: goto L_0x0146;
                case 7: goto L_0x0146;
                default: goto L_0x012f;
            }
        L_0x012f:
            org.bouncycastle.crypto.tls.TlsFatalAlert r0 = new org.bouncycastle.crypto.tls.TlsFatalAlert
            r1 = 40
            r0.<init>(r1)
            throw r0
        L_0x0137:
            r7.handleSupplementalData(r1)
        L_0x013a:
            org.bouncycastle.crypto.tls.TlsKeyExchange r2 = r7.keyExchange
            r2.skipServerCredentials()
            r7.authentication = r1
        L_0x0141:
            org.bouncycastle.crypto.tls.TlsKeyExchange r2 = r7.keyExchange
            r2.skipServerKeyExchange()
        L_0x0146:
            assertEmpty(r0)
            r0 = 8
            r7.connection_state = r0
            org.bouncycastle.crypto.tls.RecordStream r0 = r7.recordStream
            org.bouncycastle.crypto.tls.TlsHandshakeHash r0 = r0.getHandshakeHash()
            r0.sealHashAlgorithms()
            org.bouncycastle.crypto.tls.TlsClient r0 = r7.tlsClient
            java.util.Vector r0 = r0.getClientSupplementalData()
            if (r0 == 0) goto L_0x0161
            r7.sendSupplementalDataMessage(r0)
        L_0x0161:
            r0 = 9
            r7.connection_state = r0
            org.bouncycastle.crypto.tls.CertificateRequest r0 = r7.certificateRequest
            if (r0 != 0) goto L_0x01da
            org.bouncycastle.crypto.tls.TlsKeyExchange r0 = r7.keyExchange
            r0.skipClientCredentials()
            r0 = r1
        L_0x016f:
            r7.connection_state = r3
            r7.sendClientKeyExchangeMessage()
            r2 = 11
            r7.connection_state = r2
            org.bouncycastle.crypto.tls.RecordStream r2 = r7.recordStream
            org.bouncycastle.crypto.tls.TlsHandshakeHash r2 = r2.prepareToFinish()
            org.bouncycastle.crypto.tls.SecurityParameters r3 = r7.securityParameters
            org.bouncycastle.crypto.tls.TlsContext r4 = r7.getContext()
            byte[] r1 = getCurrentPRFHash(r4, r2, r1)
            r3.sessionHash = r1
            org.bouncycastle.crypto.tls.TlsContext r1 = r7.getContext()
            org.bouncycastle.crypto.tls.TlsKeyExchange r3 = r7.keyExchange
            establishMasterSecret(r1, r3)
            org.bouncycastle.crypto.tls.RecordStream r1 = r7.recordStream
            org.bouncycastle.crypto.tls.TlsPeer r3 = r7.getPeer()
            org.bouncycastle.crypto.tls.TlsCompression r3 = r3.getCompression()
            org.bouncycastle.crypto.tls.TlsPeer r4 = r7.getPeer()
            org.bouncycastle.crypto.tls.TlsCipher r4 = r4.getCipher()
            r1.setPendingConnectionState(r3, r4)
            if (r0 == 0) goto L_0x01d0
            boolean r1 = r0 instanceof org.bouncycastle.crypto.tls.TlsSignerCredentials
            if (r1 == 0) goto L_0x01d0
            org.bouncycastle.crypto.tls.TlsSignerCredentials r0 = (org.bouncycastle.crypto.tls.TlsSignerCredentials) r0
            org.bouncycastle.crypto.tls.TlsContext r1 = r7.getContext()
            org.bouncycastle.crypto.tls.SignatureAndHashAlgorithm r3 = org.bouncycastle.crypto.tls.TlsUtils.getSignatureAndHashAlgorithm(r1, r0)
            if (r3 != 0) goto L_0x01fd
            org.bouncycastle.crypto.tls.SecurityParameters r1 = r7.securityParameters
            byte[] r1 = r1.getSessionHash()
        L_0x01c0:
            byte[] r0 = r0.generateCertificateSignature(r1)
            org.bouncycastle.crypto.tls.DigitallySigned r1 = new org.bouncycastle.crypto.tls.DigitallySigned
            r1.<init>(r3, r0)
            r7.sendCertificateVerifyMessage(r1)
            r0 = 12
            r7.connection_state = r0
        L_0x01d0:
            r7.sendChangeCipherSpecMessage()
            r7.sendFinishedMessage()
            r7.connection_state = r6
            goto L_0x0030
        L_0x01da:
            org.bouncycastle.crypto.tls.TlsAuthentication r0 = r7.authentication
            org.bouncycastle.crypto.tls.CertificateRequest r2 = r7.certificateRequest
            org.bouncycastle.crypto.tls.TlsCredentials r0 = r0.getClientCredentials(r2)
            if (r0 != 0) goto L_0x01ef
            org.bouncycastle.crypto.tls.TlsKeyExchange r2 = r7.keyExchange
            r2.skipClientCredentials()
            org.bouncycastle.crypto.tls.Certificate r2 = org.bouncycastle.crypto.tls.Certificate.EMPTY_CHAIN
            r7.sendCertificateMessage(r2)
            goto L_0x016f
        L_0x01ef:
            org.bouncycastle.crypto.tls.TlsKeyExchange r2 = r7.keyExchange
            r2.processClientCredentials(r0)
            org.bouncycastle.crypto.tls.Certificate r2 = r0.getCertificate()
            r7.sendCertificateMessage(r2)
            goto L_0x016f
        L_0x01fd:
            short r1 = r3.getHash()
            byte[] r1 = r2.getFinalHash(r1)
            goto L_0x01c0
        L_0x0206:
            short r2 = r7.connection_state
            switch(r2) {
                case 2: goto L_0x0211;
                case 3: goto L_0x0214;
                case 4: goto L_0x021b;
                case 5: goto L_0x021b;
                default: goto L_0x020b;
            }
        L_0x020b:
            org.bouncycastle.crypto.tls.TlsFatalAlert r0 = new org.bouncycastle.crypto.tls.TlsFatalAlert
            r0.<init>(r3)
            throw r0
        L_0x0211:
            r7.handleSupplementalData(r1)
        L_0x0214:
            org.bouncycastle.crypto.tls.TlsKeyExchange r2 = r7.keyExchange
            r2.skipServerCredentials()
            r7.authentication = r1
        L_0x021b:
            org.bouncycastle.crypto.tls.TlsKeyExchange r1 = r7.keyExchange
            r1.processServerKeyExchange(r0)
            assertEmpty(r0)
            r0 = 6
            r7.connection_state = r0
            goto L_0x0030
        L_0x0228:
            short r1 = r7.connection_state
            switch(r1) {
                case 4: goto L_0x0233;
                case 5: goto L_0x0233;
                case 6: goto L_0x0238;
                default: goto L_0x022d;
            }
        L_0x022d:
            org.bouncycastle.crypto.tls.TlsFatalAlert r0 = new org.bouncycastle.crypto.tls.TlsFatalAlert
            r0.<init>(r3)
            throw r0
        L_0x0233:
            org.bouncycastle.crypto.tls.TlsKeyExchange r1 = r7.keyExchange
            r1.skipServerKeyExchange()
        L_0x0238:
            org.bouncycastle.crypto.tls.TlsAuthentication r1 = r7.authentication
            if (r1 != 0) goto L_0x0244
            org.bouncycastle.crypto.tls.TlsFatalAlert r0 = new org.bouncycastle.crypto.tls.TlsFatalAlert
            r1 = 40
            r0.<init>(r1)
            throw r0
        L_0x0244:
            org.bouncycastle.crypto.tls.TlsContext r1 = r7.getContext()
            org.bouncycastle.crypto.tls.CertificateRequest r1 = org.bouncycastle.crypto.tls.CertificateRequest.parse(r1, r0)
            r7.certificateRequest = r1
            assertEmpty(r0)
            org.bouncycastle.crypto.tls.TlsKeyExchange r0 = r7.keyExchange
            org.bouncycastle.crypto.tls.CertificateRequest r1 = r7.certificateRequest
            r0.validateCertificateRequest(r1)
            org.bouncycastle.crypto.tls.RecordStream r0 = r7.recordStream
            org.bouncycastle.crypto.tls.TlsHandshakeHash r0 = r0.getHandshakeHash()
            org.bouncycastle.crypto.tls.CertificateRequest r1 = r7.certificateRequest
            java.util.Vector r1 = r1.getSupportedSignatureAlgorithms()
            org.bouncycastle.crypto.tls.TlsUtils.trackHashAlgorithms(r0, r1)
            r0 = 7
            r7.connection_state = r0
            goto L_0x0030
        L_0x026c:
            short r1 = r7.connection_state
            switch(r1) {
                case 13: goto L_0x0277;
                default: goto L_0x0271;
            }
        L_0x0271:
            org.bouncycastle.crypto.tls.TlsFatalAlert r0 = new org.bouncycastle.crypto.tls.TlsFatalAlert
            r0.<init>(r3)
            throw r0
        L_0x0277:
            boolean r1 = r7.expectSessionTicket
            if (r1 != 0) goto L_0x0281
            org.bouncycastle.crypto.tls.TlsFatalAlert r0 = new org.bouncycastle.crypto.tls.TlsFatalAlert
            r0.<init>(r3)
            throw r0
        L_0x0281:
            r7.invalidateSession()
            r7.receiveNewSessionTicketMessage(r0)
            r0 = 14
            r7.connection_state = r0
            goto L_0x0030
        L_0x028d:
            assertEmpty(r0)
            short r0 = r7.connection_state
            if (r0 != r4) goto L_0x0030
            r7.refuseRenegotiation()
            goto L_0x0030
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bouncycastle.crypto.tls.TlsClientProtocol.handleHandshakeMessage(short, byte[]):void");
    }

    /* access modifiers changed from: protected */
    public void handleSupplementalData(Vector vector) throws IOException {
        this.tlsClient.processServerSupplementalData(vector);
        this.connection_state = 3;
        this.keyExchange = this.tlsClient.getKeyExchange();
        this.keyExchange.init(getContext());
    }

    /* access modifiers changed from: protected */
    public void receiveNewSessionTicketMessage(ByteArrayInputStream byteArrayInputStream) throws IOException {
        NewSessionTicket parse = NewSessionTicket.parse(byteArrayInputStream);
        assertEmpty(byteArrayInputStream);
        this.tlsClient.notifyNewSessionTicket(parse);
    }

    /* access modifiers changed from: protected */
    public void receiveServerHelloMessage(ByteArrayInputStream byteArrayInputStream) throws IOException {
        boolean z = true;
        ProtocolVersion readVersion = TlsUtils.readVersion(byteArrayInputStream);
        if (readVersion.isDTLS()) {
            throw new TlsFatalAlert(47);
        } else if (!readVersion.equals(this.recordStream.getReadVersion())) {
            throw new TlsFatalAlert(47);
        } else if (!readVersion.isEqualOrEarlierVersionOf(getContext().getClientVersion())) {
            throw new TlsFatalAlert(47);
        } else {
            this.recordStream.setWriteVersion(readVersion);
            getContextAdmin().setServerVersion(readVersion);
            this.tlsClient.notifyServerVersion(readVersion);
            this.securityParameters.serverRandom = TlsUtils.readFully(32, (InputStream) byteArrayInputStream);
            this.selectedSessionID = TlsUtils.readOpaque8(byteArrayInputStream);
            if (this.selectedSessionID.length > 32) {
                throw new TlsFatalAlert(47);
            }
            this.tlsClient.notifySessionID(this.selectedSessionID);
            this.resumedSession = this.selectedSessionID.length > 0 && this.tlsSession != null && Arrays.areEqual(this.selectedSessionID, this.tlsSession.getSessionID());
            int readUint16 = TlsUtils.readUint16(byteArrayInputStream);
            if (!Arrays.contains(this.offeredCipherSuites, readUint16) || readUint16 == 0 || CipherSuite.isSCSV(readUint16) || !TlsUtils.isValidCipherSuiteForVersion(readUint16, getContext().getServerVersion())) {
                throw new TlsFatalAlert(47);
            }
            this.tlsClient.notifySelectedCipherSuite(readUint16);
            short readUint8 = TlsUtils.readUint8(byteArrayInputStream);
            if (!Arrays.contains(this.offeredCompressionMethods, readUint8)) {
                throw new TlsFatalAlert(47);
            }
            this.tlsClient.notifySelectedCompressionMethod(readUint8);
            this.serverExtensions = readExtensions(byteArrayInputStream);
            if (this.serverExtensions != null) {
                Enumeration keys = this.serverExtensions.keys();
                while (keys.hasMoreElements()) {
                    Integer num = (Integer) keys.nextElement();
                    if (!num.equals(EXT_RenegotiationInfo)) {
                        if (TlsUtils.getExtensionData(this.clientExtensions, num) == null) {
                            throw new TlsFatalAlert(AlertDescription.unsupported_extension);
                        } else if (this.resumedSession) {
                        }
                    }
                }
            }
            byte[] extensionData = TlsUtils.getExtensionData(this.serverExtensions, EXT_RenegotiationInfo);
            if (extensionData != null) {
                this.secure_renegotiation = true;
                if (!Arrays.constantTimeAreEqual(extensionData, createRenegotiationInfo(TlsUtils.EMPTY_BYTES))) {
                    throw new TlsFatalAlert(40);
                }
            }
            this.tlsClient.notifySecureRenegotiation(this.secure_renegotiation);
            Hashtable hashtable = this.clientExtensions;
            Hashtable hashtable2 = this.serverExtensions;
            if (this.resumedSession) {
                if (readUint16 == this.sessionParameters.getCipherSuite() && readUint8 == this.sessionParameters.getCompressionAlgorithm()) {
                    hashtable = null;
                    hashtable2 = this.sessionParameters.readServerExtensions();
                } else {
                    throw new TlsFatalAlert(47);
                }
            }
            this.securityParameters.cipherSuite = readUint16;
            this.securityParameters.compressionAlgorithm = readUint8;
            if (hashtable2 != null) {
                boolean hasEncryptThenMACExtension = TlsExtensionsUtils.hasEncryptThenMACExtension(hashtable2);
                if (!hasEncryptThenMACExtension || TlsUtils.isBlockCipherSuite(readUint16)) {
                    this.securityParameters.encryptThenMAC = hasEncryptThenMACExtension;
                    this.securityParameters.extendedMasterSecret = TlsExtensionsUtils.hasExtendedMasterSecretExtension(hashtable2);
                    this.securityParameters.maxFragmentLength = processMaxFragmentLengthExtension(hashtable, hashtable2, 47);
                    this.securityParameters.truncatedHMac = TlsExtensionsUtils.hasTruncatedHMacExtension(hashtable2);
                    this.allowCertificateStatus = !this.resumedSession && TlsUtils.hasExpectedEmptyExtensionData(hashtable2, TlsExtensionsUtils.EXT_status_request, 47);
                    if (this.resumedSession || !TlsUtils.hasExpectedEmptyExtensionData(hashtable2, TlsProtocol.EXT_SessionTicket, 47)) {
                        z = false;
                    }
                    this.expectSessionTicket = z;
                } else {
                    throw new TlsFatalAlert(47);
                }
            }
            if (hashtable != null) {
                this.tlsClient.processServerExtensions(hashtable2);
            }
            this.securityParameters.prfAlgorithm = getPRFAlgorithm(getContext(), this.securityParameters.getCipherSuite());
            this.securityParameters.verifyDataLength = 12;
        }
    }

    /* access modifiers changed from: protected */
    public void sendCertificateVerifyMessage(DigitallySigned digitallySigned) throws IOException {
        HandshakeMessage handshakeMessage = new HandshakeMessage(this, 15);
        digitallySigned.encode(handshakeMessage);
        handshakeMessage.writeToRecordStream();
    }

    /* access modifiers changed from: protected */
    public void sendClientHelloMessage() throws IOException {
        boolean z = true;
        this.recordStream.setWriteVersion(this.tlsClient.getClientHelloRecordLayerVersion());
        ProtocolVersion clientVersion = this.tlsClient.getClientVersion();
        if (clientVersion.isDTLS()) {
            throw new TlsFatalAlert(80);
        }
        getContextAdmin().setClientVersion(clientVersion);
        byte[] bArr = TlsUtils.EMPTY_BYTES;
        if (this.tlsSession != null) {
            bArr = this.tlsSession.getSessionID();
            if (bArr == null || bArr.length > 32) {
                bArr = TlsUtils.EMPTY_BYTES;
            }
        }
        boolean isFallback = this.tlsClient.isFallback();
        this.offeredCipherSuites = this.tlsClient.getCipherSuites();
        this.offeredCompressionMethods = this.tlsClient.getCompressionMethods();
        if (bArr.length > 0 && this.sessionParameters != null && (!Arrays.contains(this.offeredCipherSuites, this.sessionParameters.getCipherSuite()) || !Arrays.contains(this.offeredCompressionMethods, this.sessionParameters.getCompressionAlgorithm()))) {
            bArr = TlsUtils.EMPTY_BYTES;
        }
        this.clientExtensions = this.tlsClient.getClientExtensions();
        HandshakeMessage handshakeMessage = new HandshakeMessage(this, 1);
        TlsUtils.writeVersion(clientVersion, handshakeMessage);
        handshakeMessage.write(this.securityParameters.getClientRandom());
        TlsUtils.writeOpaque8(bArr, handshakeMessage);
        boolean z2 = TlsUtils.getExtensionData(this.clientExtensions, EXT_RenegotiationInfo) == null;
        if (Arrays.contains(this.offeredCipherSuites, 255)) {
            z = false;
        }
        if (z2 && z) {
            this.offeredCipherSuites = Arrays.append(this.offeredCipherSuites, 255);
        }
        if (isFallback && !Arrays.contains(this.offeredCipherSuites, (int) CipherSuite.TLS_FALLBACK_SCSV)) {
            this.offeredCipherSuites = Arrays.append(this.offeredCipherSuites, (int) CipherSuite.TLS_FALLBACK_SCSV);
        }
        TlsUtils.writeUint16ArrayWithUint16Length(this.offeredCipherSuites, handshakeMessage);
        TlsUtils.writeUint8ArrayWithUint8Length(this.offeredCompressionMethods, handshakeMessage);
        if (this.clientExtensions != null) {
            writeExtensions(handshakeMessage, this.clientExtensions);
        }
        handshakeMessage.writeToRecordStream();
    }

    /* access modifiers changed from: protected */
    public void sendClientKeyExchangeMessage() throws IOException {
        HandshakeMessage handshakeMessage = new HandshakeMessage(this, 16);
        this.keyExchange.generateClientKeyExchange(handshakeMessage);
        handshakeMessage.writeToRecordStream();
    }
}
