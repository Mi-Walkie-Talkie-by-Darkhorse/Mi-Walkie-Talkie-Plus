.class public final Lorg/bouncycastle/crypto/tls/SessionParameters;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/tls/SessionParameters$Builder;
    }
.end annotation


# instance fields
.field private cipherSuite:I

.field private compressionAlgorithm:S

.field private encodedServerExtensions:[B

.field private masterSecret:[B

.field private peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

.field private pskIdentity:[B

.field private srpIdentity:[B


# direct methods
.method private constructor <init>(IS[BLorg/bouncycastle/crypto/tls/Certificate;[B[B[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->pskIdentity:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->srpIdentity:[B

    iput p1, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->cipherSuite:I

    iput-short p2, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->compressionAlgorithm:S

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->masterSecret:[B

    iput-object p4, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    invoke-static {p5}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->pskIdentity:[B

    invoke-static {p6}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->srpIdentity:[B

    iput-object p7, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->encodedServerExtensions:[B

    return-void
.end method

.method synthetic constructor <init>(IS[BLorg/bouncycastle/crypto/tls/Certificate;[B[B[BLorg/bouncycastle/crypto/tls/SessionParameters$1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lorg/bouncycastle/crypto/tls/SessionParameters;-><init>(IS[BLorg/bouncycastle/crypto/tls/Certificate;[B[B[B)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->masterSecret:[B

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    :cond_0
    return-void
.end method

.method public copy()Lorg/bouncycastle/crypto/tls/SessionParameters;
    .locals 9

    new-instance v8, Lorg/bouncycastle/crypto/tls/SessionParameters;

    iget v1, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->cipherSuite:I

    iget-short v2, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->compressionAlgorithm:S

    iget-object v3, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->masterSecret:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    iget-object v5, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->pskIdentity:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->srpIdentity:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->encodedServerExtensions:[B

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/crypto/tls/SessionParameters;-><init>(IS[BLorg/bouncycastle/crypto/tls/Certificate;[B[B[B)V

    return-object v8
.end method

.method public getCipherSuite()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->cipherSuite:I

    return v0
.end method

.method public getCompressionAlgorithm()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->compressionAlgorithm:S

    return v0
.end method

.method public getMasterSecret()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->masterSecret:[B

    return-object v0
.end method

.method public getPSKIdentity()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->pskIdentity:[B

    return-object v0
.end method

.method public getPeerCertificate()Lorg/bouncycastle/crypto/tls/Certificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->peerCertificate:Lorg/bouncycastle/crypto/tls/Certificate;

    return-object v0
.end method

.method public getPskIdentity()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->pskIdentity:[B

    return-object v0
.end method

.method public getSRPIdentity()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->srpIdentity:[B

    return-object v0
.end method

.method public readServerExtensions()Ljava/util/Hashtable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->encodedServerExtensions:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/bouncycastle/crypto/tls/SessionParameters;->encodedServerExtensions:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/tls/TlsProtocol;->readExtensions(Ljava/io/ByteArrayInputStream;)Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method
