.class public Lorg/bouncycastle/util/encoders/UrlBase64Encoder;
.super Lorg/bouncycastle/util/encoders/Base64Encoder;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/util/encoders/Base64Encoder;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/UrlBase64Encoder;->encodingTable:[B

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/UrlBase64Encoder;->encodingTable:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/UrlBase64Encoder;->encodingTable:[B

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/UrlBase64Encoder;->encodingTable:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/16 v2, 0x5f

    aput-byte v2, v0, v1

    const/16 v0, 0x2e

    iput-byte v0, p0, Lorg/bouncycastle/util/encoders/UrlBase64Encoder;->padding:B

    invoke-virtual {p0}, Lorg/bouncycastle/util/encoders/UrlBase64Encoder;->initialiseDecodingTable()V

    return-void
.end method
