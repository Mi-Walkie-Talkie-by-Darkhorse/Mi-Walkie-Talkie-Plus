.class public Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;
.super Ljava/lang/Object;


# instance fields
.field private K:[I

.field private heightOfTrees:[I

.field private numOfLayers:I

.field private winternitzParameter:[I


# direct methods
.method public constructor <init>(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v1, 0xa

    const/4 v2, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gt p1, v1, :cond_0

    new-array v0, v5, [I

    aput v1, v0, v4

    new-array v1, v5, [I

    const/4 v2, 0x3

    aput v2, v1, v4

    new-array v2, v5, [I

    aput v3, v2, v4

    array-length v3, v0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x14

    if-gt p1, v0, :cond_1

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    array-length v3, v0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    goto :goto_0

    :cond_1
    new-array v0, v2, [I

    fill-array-data v0, :array_3

    new-array v1, v2, [I

    fill-array-data v1, :array_4

    new-array v2, v2, [I

    fill-array-data v2, :array_5

    array-length v3, v0

    invoke-direct {p0, v3, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0xa
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x5
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x2
    .end array-data

    :array_3
    .array-data 4
        0xa
        0xa
        0xa
        0xa
    .end array-data

    :array_4
    .array-data 4
        0x9
        0x9
        0x9
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public constructor <init>(I[I[I[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->init(I[I[I[I)V

    return-void
.end method

.method private init(I[I[I[I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, ""

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    array-length v4, p3

    if-ne v3, v4, :cond_0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    array-length v4, p2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    array-length v4, p4

    if-eq v3, v4, :cond_1

    :cond_0
    const-string v0, "Unexpected parameterset format"

    move v1, v2

    :cond_1
    move v3, v1

    move-object v1, v0

    move v0, v2

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    if-ge v0, v4, :cond_6

    aget v4, p4, v0

    if-lt v4, v6, :cond_2

    aget v4, p2, v0

    aget v5, p4, v0

    sub-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    :cond_2
    const-string v1, "Wrong parameter K (K >= 2 and H-K even required)!"

    move v3, v2

    :cond_3
    aget v4, p2, v0

    const/4 v5, 0x4

    if-lt v4, v5, :cond_4

    aget v4, p3, v0

    if-ge v4, v6, :cond_5

    :cond_4
    const-string v1, "Wrong parameter H or w (H > 3 and w > 1 required)!"

    move v3, v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    invoke-static {p2}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->heightOfTrees:[I

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->winternitzParameter:[I

    invoke-static {p4}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->K:[I

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getHeightOfTrees()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->heightOfTrees:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getK()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->K:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getNumOfLayers()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->numOfLayers:I

    return v0
.end method

.method public getWinternitzParameter()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gmss/GMSSParameters;->winternitzParameter:[I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    return-object v0
.end method
