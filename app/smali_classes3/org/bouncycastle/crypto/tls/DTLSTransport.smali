.class public Lorg/bouncycastle/crypto/tls/DTLSTransport;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/tls/DatagramTransport;


# instance fields
.field private final recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->close()V

    return-void
.end method

.method public getReceiveLimit()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->getReceiveLimit()I

    move-result v0

    return v0
.end method

.method public getSendLimit()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->getSendLimit()I

    move-result v0

    return v0
.end method

.method public receive([BIII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x50

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->receive([BIII)I
    :try_end_0
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    return v0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    throw v0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    throw v0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1
.end method

.method public send([BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x50

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->send([BII)V
    :try_end_0
    .catch Lorg/bouncycastle/crypto/tls/TlsFatalAlert; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;->getAlertDescription()S

    move-result v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    throw v0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    throw v0

    :catch_2
    move-exception v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/DTLSTransport;->recordLayer:Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/tls/DTLSRecordLayer;->fail(S)V

    new-instance v1, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(SLjava/lang/Throwable;)V

    throw v1
.end method
