.class public interface abstract Lorg/bouncycastle/crypto/tls/TlsClient;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/tls/TlsPeer;


# virtual methods
.method public abstract getAuthentication()Lorg/bouncycastle/crypto/tls/TlsAuthentication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCipherSuites()[I
.end method

.method public abstract getClientExtensions()Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getClientHelloRecordLayerVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
.end method

.method public abstract getClientSupplementalData()Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getClientVersion()Lorg/bouncycastle/crypto/tls/ProtocolVersion;
.end method

.method public abstract getCompressionMethods()[S
.end method

.method public abstract getKeyExchange()Lorg/bouncycastle/crypto/tls/TlsKeyExchange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSessionToResume()Lorg/bouncycastle/crypto/tls/TlsSession;
.end method

.method public abstract init(Lorg/bouncycastle/crypto/tls/TlsClientContext;)V
.end method

.method public abstract isFallback()Z
.end method

.method public abstract notifyNewSessionTicket(Lorg/bouncycastle/crypto/tls/NewSessionTicket;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract notifySelectedCipherSuite(I)V
.end method

.method public abstract notifySelectedCompressionMethod(S)V
.end method

.method public abstract notifyServerVersion(Lorg/bouncycastle/crypto/tls/ProtocolVersion;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract notifySessionID([B)V
.end method

.method public abstract processServerExtensions(Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract processServerSupplementalData(Ljava/util/Vector;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
