.class public interface abstract Lorg/bouncycastle/crypto/tls/TlsPeer;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getCipher()Lorg/bouncycastle/crypto/tls/TlsCipher;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getCompression()Lorg/bouncycastle/crypto/tls/TlsCompression;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract notifyAlertRaised(SSLjava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public abstract notifyAlertReceived(SS)V
.end method

.method public abstract notifyHandshakeComplete()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract notifySecureRenegotiation(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract shouldUseGMTUnixTime()Z
.end method
