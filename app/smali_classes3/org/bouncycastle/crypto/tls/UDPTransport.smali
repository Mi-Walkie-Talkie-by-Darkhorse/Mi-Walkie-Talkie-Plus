.class public Lorg/bouncycastle/crypto/tls/UDPTransport;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/tls/DatagramTransport;


# static fields
.field protected static final MAX_IP_OVERHEAD:I = 0x54

.field protected static final MIN_IP_OVERHEAD:I = 0x14

.field protected static final UDP_OVERHEAD:I = 0x8


# instance fields
.field protected final receiveLimit:I

.field protected final sendLimit:I

.field protected final socket:Ljava/net/DatagramSocket;


# direct methods
.method public constructor <init>(Ljava/net/DatagramSocket;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'socket\' must be bound and connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/UDPTransport;->socket:Ljava/net/DatagramSocket;

    add-int/lit8 v0, p2, -0x14

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/bouncycastle/crypto/tls/UDPTransport;->receiveLimit:I

    add-int/lit8 v0, p2, -0x54

    add-int/lit8 v0, v0, -0x8

    iput v0, p0, Lorg/bouncycastle/crypto/tls/UDPTransport;->sendLimit:I

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

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/UDPTransport;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    return-void
.end method

.method public getReceiveLimit()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/UDPTransport;->receiveLimit:I

    return v0
.end method

.method public getSendLimit()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/UDPTransport;->sendLimit:I

    return v0
.end method

.method public receive([BIII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/UDPTransport;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, p4}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, p1, p2, p3}, Ljava/net/DatagramPacket;-><init>([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/UDPTransport;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v0

    return v0
.end method

.method public send([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/tls/UDPTransport;->getSendLimit()I

    move-result v0

    if-le p3, v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/tls/TlsFatalAlert;-><init>(S)V

    throw v0

    :cond_0
    new-instance v0, Ljava/net/DatagramPacket;

    invoke-direct {v0, p1, p2, p3}, Ljava/net/DatagramPacket;-><init>([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/UDPTransport;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    return-void
.end method
