.class public Lorg/bouncycastle/crypto/io/MacInputStream;
.super Ljava/io/FilterInputStream;


# instance fields
.field protected mac:Lorg/bouncycastle/crypto/Mac;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/Mac;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/bouncycastle/crypto/io/MacInputStream;->mac:Lorg/bouncycastle/crypto/Mac;

    return-void
.end method


# virtual methods
.method public getMac()Lorg/bouncycastle/crypto/Mac;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/MacInputStream;->mac:Lorg/bouncycastle/crypto/Mac;

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/MacInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/MacInputStream;->mac:Lorg/bouncycastle/crypto/Mac;

    int-to-byte v2, v0

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/Mac;->update(B)V

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

    iget-object v0, p0, Lorg/bouncycastle/crypto/io/MacInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/io/MacInputStream;->mac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v1, p1, p2, v0}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    :cond_0
    return v0
.end method
