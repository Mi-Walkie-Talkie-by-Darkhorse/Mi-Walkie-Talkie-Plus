.class public Lorg/bouncycastle/crypto/paddings/TBCPadding;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .locals 4

    const/16 v0, 0xff

    const/4 v1, 0x0

    array-length v2, p1

    sub-int/2addr v2, p2

    if-lez p2, :cond_1

    add-int/lit8 v3, p2, -0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    :goto_0
    int-to-byte v0, v0

    :goto_1
    array-length v1, p1

    if-ge p2, v1, :cond_3

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    :goto_2
    int-to-byte v0, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    return v2
.end method

.method public getPaddingName()Ljava/lang/String;
    .locals 1

    const-string v0, "TBC"

    return-object v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public padCount([B)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-byte v1, p1, v0

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget-byte v2, p1, v2

    if-ne v2, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    array-length v1, p1

    sub-int v0, v1, v0

    return v0
.end method
