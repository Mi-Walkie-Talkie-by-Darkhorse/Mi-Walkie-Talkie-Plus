.class public Lorg/bouncycastle/crypto/io/DigestInputStream;
.super Ljava/io/FilterInputStream;


# instance fields
.field protected digest:Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/io/DigestInputStream;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/DigestInputStream;->digest:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/DigestInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/DigestInputStream;->digest:Lorg/bouncycastle/crypto/Digest;

    int-to-byte v2, v0

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/DigestInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/DigestInputStream;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, p1, p2, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :cond_0
    return v0
.end method
