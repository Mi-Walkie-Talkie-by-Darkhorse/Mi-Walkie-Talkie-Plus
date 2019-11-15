.class Lorg/bouncycastle/crypto/digests/SkeinEngine$Configuration;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/SkeinEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Configuration"
.end annotation


# instance fields
.field private bytes:[B


# direct methods
.method public constructor <init>(J)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$Configuration;->bytes:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$Configuration;->bytes:[B

    const/16 v1, 0x53

    aput-byte v1, v0, v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$Configuration;->bytes:[B

    const/16 v1, 0x48

    aput-byte v1, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$Configuration;->bytes:[B

    const/4 v1, 0x2

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$Configuration;->bytes:[B

    const/4 v1, 0x3

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$Configuration;->bytes:[B

    const/4 v1, 0x4

    aput-byte v4, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$Configuration;->bytes:[B

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$Configuration;->bytes:[B

    const/16 v1, 0x8

    invoke-static {p1, p2, v0, v1}, Lorg/bouncycastle/crypto/engines/ThreefishEngine;->wordToBytes(J[BI)V

    return-void
.end method


# virtual methods
.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SkeinEngine$Configuration;->bytes:[B

    return-object v0
.end method
