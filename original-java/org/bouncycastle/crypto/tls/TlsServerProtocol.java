package org.bouncycastle.crypto.tls;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.SecureRandom;
import java.util.Vector;
import org.bouncycastle.crypto.params.AsymmetricKeyParameter;
import org.bouncycastle.crypto.util.PublicKeyFactory;
import org.bouncycastle.util.Arrays;

public class TlsServerProtocol extends TlsProtocol {
    protected CertificateRequest certificateRequest = null;
    protected short clientCertificateType = -1;
    protected TlsKeyExchange keyExchange = null;
    protected TlsHandshakeHash prepareFinishHash = null;
    protected TlsCredentials serverCredentials = null;
    protected TlsServer tlsServer = null;
    TlsServerContextImpl tlsServerContext = null;

    public TlsServerProtocol(InputStream inputStream, OutputStream outputStream, SecureRandom secureRandom) {
        super(inputStream, outputStream, secureRandom);
    }

    public TlsServerProtocol(SecureRandom secureRandom) {
        super(secureRandom);
    }

    public void accept(TlsServer tlsServer2) throws IOException {
        if (tlsServer2 == null) {
            throw new IllegalArgumentException("'tlsServer' cannot be null");
        } else if (this.tlsServer != null) {
            throw new IllegalStateException("'accept' can only be called once");
        } else {
            this.tlsServer = tlsServer2;
            this.securityParameters = new SecurityParameters();
            this.securityParameters.entity = 0;
            this.tlsServerContext = new TlsServerContextImpl(this.secureRandom, this.securityParameters);
            this.securityParameters.serverRandom = createRandomBlock(tlsServer2.shouldUseGMTUnixTime(), this.tlsServerContext.getNonceRandomGenerator());
            this.tlsServer.init(this.tlsServerContext);
            this.recordStream.init(this.tlsServerContext);
            this.recordStream.setRestrictReadVersion(false);
            blockForHandshake();
        }
    }

    /* access modifiers changed from: protected */
    public void cleanupHandshake() {
        super.cleanupHandshake();
        this.keyExchange = null;
        this.serverCredentials = null;
        this.certificateRequest = null;
        this.prepareFinishHash = null;
    }

    /* access modifiers changed from: protected */
    public boolean expectCertificateVerifyMessage() {
        return this.clientCertificateType >= 0 && TlsUtils.hasSigningCapability(this.clientCertificateType);
    }

    /* access modifiers changed from: protected */
    public TlsContext getContext() {
        return this.tlsServerContext;
    }

    /* access modifiers changed from: 0000 */
    public AbstractTlsContext getContextAdmin() {
        return this.tlsServerContext;
    }

    /* access modifiers changed from: protected */
    public TlsPeer getPeer() {
        return this.tlsServer;
    }

    /* access modifiers changed from: protected */
    public void handleHandshakeMessage(short s, byte[] bArr) throws IOException {
        Certificate certificate = null;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        switch (s) {
            case 1:
                switch (this.connection_state) {
                    case 0:
                        receiveClientHelloMessage(byteArrayInputStream);
                        this.connection_state = 1;
                        sendServerHelloMessage();
                        this.connection_state = 2;
                        this.recordStream.notifyHelloComplete();
                        Vector serverSupplementalData = this.tlsServer.getServerSupplementalData();
                        if (serverSupplementalData != null) {
                            sendSupplementalDataMessage(serverSupplementalData);
                        }
                        this.connection_state = 3;
                        this.keyExchange = this.tlsServer.getKeyExchange();
                        this.keyExchange.init(getContext());
                        this.serverCredentials = this.tlsServer.getCredentials();
                        if (this.serverCredentials == null) {
                            this.keyExchange.skipServerCredentials();
                        } else {
                            this.keyExchange.processServerCredentials(this.serverCredentials);
                            certificate = this.serverCredentials.getCertificate();
                            sendCertificateMessage(certificate);
                        }
                        this.connection_state = 4;
                        if (certificate == null || certificate.isEmpty()) {
                            this.allowCertificateStatus = false;
                        }
                        if (this.allowCertificateStatus) {
                            CertificateStatus certificateStatus = this.tlsServer.getCertificateStatus();
                            if (certificateStatus != null) {
                                sendCertificateStatusMessage(certificateStatus);
                            }
                        }
                        this.connection_state = 5;
                        byte[] generateServerKeyExchange = this.keyExchange.generateServerKeyExchange();
                        if (generateServerKeyExchange != null) {
                            sendServerKeyExchangeMessage(generateServerKeyExchange);
                        }
                        this.connection_state = 6;
                        if (this.serverCredentials != null) {
                            this.certificateRequest = this.tlsServer.getCertificateRequest();
                            if (this.certificateRequest != null) {
                                if (TlsUtils.isTLSv12(getContext()) != (this.certificateRequest.getSupportedSignatureAlgorithms() != null)) {
                                    throw new TlsFatalAlert(80);
                                }
                                this.keyExchange.validateCertificateRequest(this.certificateRequest);
                                sendCertificateRequestMessage(this.certificateRequest);
                                TlsUtils.trackHashAlgorithms(this.recordStream.getHandshakeHash(), this.certificateRequest.getSupportedSignatureAlgorithms());
                            }
                        }
                        this.connection_state = 7;
                        sendServerHelloDoneMessage();
                        this.connection_state = 8;
                        this.recordStream.getHandshakeHash().sealHashAlgorithms();
                        return;
                    case 16:
                        refuseRenegotiation();
                        return;
                    default:
                        throw new TlsFatalAlert(10);
                }
            case 11:
                switch (this.connection_state) {
                    case 8:
                        this.tlsServer.processClientSupplementalData(null);
                        break;
                    case 9:
                        break;
                    default:
                        throw new TlsFatalAlert(10);
                }
                if (this.certificateRequest == null) {
                    throw new TlsFatalAlert(10);
                }
                receiveCertificateMessage(byteArrayInputStream);
                this.connection_state = 10;
                return;
            case 15:
                switch (this.connection_state) {
                    case 11:
                        if (!expectCertificateVerifyMessage()) {
                            throw new TlsFatalAlert(10);
                        }
                        receiveCertificateVerifyMessage(byteArrayInputStream);
                        this.connection_state = 12;
                        return;
                    default:
                        throw new TlsFatalAlert(10);
                }
            case 16:
                switch (this.connection_state) {
                    case 8:
                        this.tlsServer.processClientSupplementalData(null);
                        break;
                    case 9:
                        break;
                    case 10:
                        break;
                    default:
                        throw new TlsFatalAlert(10);
                }
                if (this.certificateRequest == null) {
                    this.keyExchange.skipClientCredentials();
                } else if (TlsUtils.isTLSv12(getContext())) {
                    throw new TlsFatalAlert(10);
                } else if (!TlsUtils.isSSL(getContext())) {
                    notifyClientCertificate(Certificate.EMPTY_CHAIN);
                } else if (this.peerCertificate == null) {
                    throw new TlsFatalAlert(10);
                }
                receiveClientKeyExchangeMessage(byteArrayInputStream);
                this.connection_state = 11;
                return;
            case 20:
                switch (this.connection_state) {
                    case 11:
                        if (expectCertificateVerifyMessage()) {
                            throw new TlsFatalAlert(10);
                        }
                        break;
                    case 12:
                        break;
                    default:
                        throw new TlsFatalAlert(10);
                }
                processFinishedMessage(byteArrayInputStream);
                this.connection_state = 13;
                if (this.expectSessionTicket) {
                    sendNewSessionTicketMessage(this.tlsServer.getNewSessionTicket());
                    sendChangeCipherSpecMessage();
                }
                this.connection_state = 14;
                sendFinishedMessage();
                this.connection_state = 15;
                this.connection_state = 16;
                completeHandshake();
                return;
            case 23:
                switch (this.connection_state) {
                    case 8:
                        this.tlsServer.processClientSupplementalData(readSupplementalDataMessage(byteArrayInputStream));
                        this.connection_state = 9;
                        return;
                    default:
                        throw new TlsFatalAlert(10);
                }
            default:
                throw new TlsFatalAlert(10);
        }
    }

    /* access modifiers changed from: protected */
    public void handleWarningMessage(short s) throws IOException {
        switch (s) {
            case 41:
                if (TlsUtils.isSSL(getContext()) && this.certificateRequest != null) {
                    notifyClientCertificate(Certificate.EMPTY_CHAIN);
                    return;
                }
                return;
            default:
                super.handleWarningMessage(s);
                return;
        }
    }

    /* access modifiers changed from: protected */
    public void notifyClientCertificate(Certificate certificate) throws IOException {
        if (this.certificateRequest == null) {
            throw new IllegalStateException();
        } else if (this.peerCertificate != null) {
            throw new TlsFatalAlert(10);
        } else {
            this.peerCertificate = certificate;
            if (certificate.isEmpty()) {
                this.keyExchange.skipClientCredentials();
            } else {
                this.clientCertificateType = TlsUtils.getClientCertificateType(certificate, this.serverCredentials.getCertificate());
                this.keyExchange.processClientCertificate(certificate);
            }
            this.tlsServer.notifyClientCertificate(certificate);
        }
    }

    /* access modifiers changed from: protected */
    public void receiveCertificateMessage(ByteArrayInputStream byteArrayInputStream) throws IOException {
        Certificate parse = Certificate.parse(byteArrayInputStream);
        assertEmpty(byteArrayInputStream);
        notifyClientCertificate(parse);
    }

    /* access modifiers changed from: protected */
    public void receiveCertificateVerifyMessage(ByteArrayInputStream byteArrayInputStream) throws IOException {
        byte[] sessionHash;
        if (this.certificateRequest == null) {
            throw new IllegalStateException();
        }
        DigitallySigned parse = DigitallySigned.parse(getContext(), byteArrayInputStream);
        assertEmpty(byteArrayInputStream);
        try {
            SignatureAndHashAlgorithm algorithm = parse.getAlgorithm();
            if (TlsUtils.isTLSv12(getContext())) {
                TlsUtils.verifySupportedSignatureAlgorithm(this.certificateRequest.getSupportedSignatureAlgorithms(), algorithm);
                sessionHash = this.prepareFinishHash.getFinalHash(algorithm.getHash());
            } else {
                sessionHash = this.securityParameters.getSessionHash();
            }
            AsymmetricKeyParameter createKey = PublicKeyFactory.createKey(this.peerCertificate.getCertificateAt(0).getSubjectPublicKeyInfo());
            TlsSigner createTlsSigner = TlsUtils.createTlsSigner(this.clientCertificateType);
            createTlsSigner.init(getContext());
            if (!createTlsSigner.verifyRawSignature(algorithm, parse.getSignature(), createKey, sessionHash)) {
                throw new TlsFatalAlert(51);
            }
        } catch (TlsFatalAlert e) {
            throw e;
        } catch (Exception e2) {
            throw new TlsFatalAlert(51, e2);
        }
    }

    /* access modifiers changed from: protected */
    public void receiveClientHelloMessage(ByteArrayInputStream byteArrayInputStream) throws IOException {
        ProtocolVersion readVersion = TlsUtils.readVersion(byteArrayInputStream);
        this.recordStream.setWriteVersion(readVersion);
        if (readVersion.isDTLS()) {
            throw new TlsFatalAlert(47);
        }
        byte[] readFully = TlsUtils.readFully(32, (InputStream) byteArrayInputStream);
        if (TlsUtils.readOpaque8(byteArrayInputStream).length > 32) {
            throw new TlsFatalAlert(47);
        }
        int readUint16 = TlsUtils.readUint16(byteArrayInputStream);
        if (readUint16 < 2 || (readUint16 & 1) != 0) {
            throw new TlsFatalAlert(50);
        }
        this.offeredCipherSuites = TlsUtils.readUint16Array(readUint16 / 2, byteArrayInputStream);
        short readUint8 = TlsUtils.readUint8(byteArrayInputStream);
        if (readUint8 < 1) {
            throw new TlsFatalAlert(47);
        }
        this.offeredCompressionMethods = TlsUtils.readUint8Array(readUint8, byteArrayInputStream);
        this.clientExtensions = readExtensions(byteArrayInputStream);
        this.securityParameters.extendedMasterSecret = TlsExtensionsUtils.hasExtendedMasterSecretExtension(this.clientExtensions);
        getContextAdmin().setClientVersion(readVersion);
        this.tlsServer.notifyClientVersion(readVersion);
        this.tlsServer.notifyFallback(Arrays.contains(this.offeredCipherSuites, (int) CipherSuite.TLS_FALLBACK_SCSV));
        this.securityParameters.clientRandom = readFully;
        this.tlsServer.notifyOfferedCipherSuites(this.offeredCipherSuites);
        this.tlsServer.notifyOfferedCompressionMethods(this.offeredCompressionMethods);
        if (Arrays.contains(this.offeredCipherSuites, 255)) {
            this.secure_renegotiation = true;
        }
        byte[] extensionData = TlsUtils.getExtensionData(this.clientExtensions, EXT_RenegotiationInfo);
        if (extensionData != null) {
            this.secure_renegotiation = true;
            if (!Arrays.constantTimeAreEqual(extensionData, createRenegotiationInfo(TlsUtils.EMPTY_BYTES))) {
                throw new TlsFatalAlert(40);
            }
        }
        this.tlsServer.notifySecureRenegotiation(this.secure_renegotiation);
        if (this.clientExtensions != null) {
            this.tlsServer.processClientExtensions(this.clientExtensions);
        }
    }

    /* access modifiers changed from: protected */
    public void receiveClientKeyExchangeMessage(ByteArrayInputStream byteArrayInputStream) throws IOException {
        this.keyExchange.processClientKeyExchange(byteArrayInputStream);
        assertEmpty(byteArrayInputStream);
        this.prepareFinishHash = this.recordStream.prepareToFinish();
        this.securityParameters.sessionHash = getCurrentPRFHash(getContext(), this.prepareFinishHash, null);
        establishMasterSecret(getContext(), this.keyExchange);
        this.recordStream.setPendingConnectionState(getPeer().getCompression(), getPeer().getCipher());
        if (!this.expectSessionTicket) {
            sendChangeCipherSpecMessage();
        }
    }

    /* access modifiers changed from: protected */
    public void sendCertificateRequestMessage(CertificateRequest certificateRequest2) throws IOException {
        HandshakeMessage handshakeMessage = new HandshakeMessage(this, 13);
        certificateRequest2.encode(handshakeMessage);
        handshakeMessage.writeToRecordStream();
    }

    /* access modifiers changed from: protected */
    public void sendCertificateStatusMessage(CertificateStatus certificateStatus) throws IOException {
        HandshakeMessage handshakeMessage = new HandshakeMessage(this, 22);
        certificateStatus.encode(handshakeMessage);
        handshakeMessage.writeToRecordStream();
    }

    /* access modifiers changed from: protected */
    public void sendNewSessionTicketMessage(NewSessionTicket newSessionTicket) throws IOException {
        if (newSessionTicket == null) {
            throw new TlsFatalAlert(80);
        }
        HandshakeMessage handshakeMessage = new HandshakeMessage(this, 4);
        newSessionTicket.encode(handshakeMessage);
        handshakeMessage.writeToRecordStream();
    }

    /* access modifiers changed from: protected */
    public void sendServerHelloDoneMessage() throws IOException {
        byte[] bArr = new byte[4];
        TlsUtils.writeUint8(14, bArr, 0);
        TlsUtils.writeUint24(0, bArr, 1);
        writeHandshakeMessage(bArr, 0, bArr.length);
    }

    /* access modifiers changed from: protected */
    public void sendServerHelloMessage() throws IOException {
        boolean z = true;
        HandshakeMessage handshakeMessage = new HandshakeMessage(this, 2);
        ProtocolVersion serverVersion = this.tlsServer.getServerVersion();
        if (!serverVersion.isEqualOrEarlierVersionOf(getContext().getClientVersion())) {
            throw new TlsFatalAlert(80);
        }
        this.recordStream.setReadVersion(serverVersion);
        this.recordStream.setWriteVersion(serverVersion);
        this.recordStream.setRestrictReadVersion(true);
        getContextAdmin().setServerVersion(serverVersion);
        TlsUtils.writeVersion(serverVersion, handshakeMessage);
        handshakeMessage.write(this.securityParameters.serverRandom);
        TlsUtils.writeOpaque8(TlsUtils.EMPTY_BYTES, handshakeMessage);
        int selectedCipherSuite = this.tlsServer.getSelectedCipherSuite();
        if (!Arrays.contains(this.offeredCipherSuites, selectedCipherSuite) || selectedCipherSuite == 0 || CipherSuite.isSCSV(selectedCipherSuite) || !TlsUtils.isValidCipherSuiteForVersion(selectedCipherSuite, getContext().getServerVersion())) {
            throw new TlsFatalAlert(80);
        }
        this.securityParameters.cipherSuite = selectedCipherSuite;
        short selectedCompressionMethod = this.tlsServer.getSelectedCompressionMethod();
        if (!Arrays.contains(this.offeredCompressionMethods, selectedCompressionMethod)) {
            throw new TlsFatalAlert(80);
        }
        this.securityParameters.compressionAlgorithm = selectedCompressionMethod;
        TlsUtils.writeUint16(selectedCipherSuite, handshakeMessage);
        TlsUtils.writeUint8(selectedCompressionMethod, (OutputStream) handshakeMessage);
        this.serverExtensions = this.tlsServer.getServerExtensions();
        if (this.secure_renegotiation) {
            if (TlsUtils.getExtensionData(this.serverExtensions, EXT_RenegotiationInfo) == null) {
                this.serverExtensions = TlsExtensionsUtils.ensureExtensionsInitialised(this.serverExtensions);
                this.serverExtensions.put(EXT_RenegotiationInfo, createRenegotiationInfo(TlsUtils.EMPTY_BYTES));
            }
        }
        if (this.securityParameters.extendedMasterSecret) {
            this.serverExtensions = TlsExtensionsUtils.ensureExtensionsInitialised(this.serverExtensions);
            TlsExtensionsUtils.addExtendedMasterSecretExtension(this.serverExtensions);
        }
        if (this.serverExtensions != null) {
            this.securityParameters.encryptThenMAC = TlsExtensionsUtils.hasEncryptThenMACExtension(this.serverExtensions);
            this.securityParameters.maxFragmentLength = processMaxFragmentLengthExtension(this.clientExtensions, this.serverExtensions, 80);
            this.securityParameters.truncatedHMac = TlsExtensionsUtils.hasTruncatedHMacExtension(this.serverExtensions);
            this.allowCertificateStatus = !this.resumedSession && TlsUtils.hasExpectedEmptyExtensionData(this.serverExtensions, TlsExtensionsUtils.EXT_status_request, 80);
            if (this.resumedSession || !TlsUtils.hasExpectedEmptyExtensionData(this.serverExtensions, TlsProtocol.EXT_SessionTicket, 80)) {
                z = false;
            }
            this.expectSessionTicket = z;
            writeExtensions(handshakeMessage, this.serverExtensions);
        }
        this.securityParameters.prfAlgorithm = getPRFAlgorithm(getContext(), this.securityParameters.getCipherSuite());
        this.securityParameters.verifyDataLength = 12;
        applyMaxFragmentLengthExtension();
        handshakeMessage.writeToRecordStream();
    }

    /* access modifiers changed from: protected */
    public void sendServerKeyExchangeMessage(byte[] bArr) throws IOException {
        HandshakeMessage handshakeMessage = new HandshakeMessage(12, bArr.length);
        handshakeMessage.write(bArr);
        handshakeMessage.writeToRecordStream();
    }
}
