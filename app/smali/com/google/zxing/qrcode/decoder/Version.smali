.class public final Lcom/google/zxing/qrcode/decoder/Version;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/decoder/Version$ECB;,
        Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    }
.end annotation


# static fields
.field private static final VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

.field private static final VERSION_DECODE_INFO:[I


# instance fields
.field private final alignmentPatternCenters:[I

.field private final ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

.field private final totalCodewords:I

.field private final versionNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSION_DECODE_INFO:[I

    invoke-static {}, Lcom/google/zxing/qrcode/decoder/Version;->buildVersions()[Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    return-void

    :array_0
    .array-data 4
        0x7c94
        0x85bc
        0x9a99
        0xa4d3
        0xbbf6
        0xc762
        0xd847
        0xe60d
        0xf928
        0x10b78
        0x1145d
        0x12a17
        0x13532
        0x149a6
        0x15683
        0x168c9
        0x177ec
        0x18ec4
        0x191e1
        0x1afab
        0x1b08e
        0x1cc1a
        0x1d33f
        0x1ed75
        0x1f250
        0x209d5
        0x216f0
        0x228ba
        0x2379f
        0x24b0b
        0x2542e
        0x26a64
        0x27541
        0x28c69
    .end array-data
.end method

.method private varargs constructor <init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V
    .locals 7

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    iput-object p2, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    iput-object p3, p0, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v2

    aget-object v1, p3, v0

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v6

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v5

    add-int/2addr v5, v2

    mul-int/2addr v5, v6

    add-int/2addr v1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    return-void
.end method

.method private static buildVersions()[Lcom/google/zxing/qrcode/decoder/Version;
    .locals 14

    const/16 v0, 0x28

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-array v4, v4, [I

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v8, 0x7

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0xa

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0xd

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x11

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x9

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x2

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0xa

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x22

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x10

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x1c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x3

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0xf

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x37

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x4

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_2

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x14

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x50

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x20

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x10

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x9

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x5

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_3

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x6c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x2b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x6

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_4

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x44

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x10

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x1b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/4 v3, 0x7

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_5

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x14

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x4e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x1f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x8

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_6

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x61

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x26

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x27

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x12

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x9

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_7

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x24

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x25

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x14

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xa

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_8

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x12

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x44

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x45

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x2b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x14

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xb

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_9

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x14

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x51

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x32

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x33

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xc

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_a

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x5c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x5d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x24

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x25

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x14

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xd

    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_b

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x6b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x25

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x26

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x14

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    const/16 v13, 0xb

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xe

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_c

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x28

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x29

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x14

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0xf

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_d

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x16

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x57

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x58

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x29

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x2a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0xc

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x10

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_e

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x62

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x63

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    const/16 v13, 0x13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x14

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x11

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_f

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x6b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x6c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x12

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_10

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x78

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x79

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x9

    const/16 v13, 0x2b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x13

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_11

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x71

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x72

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x2c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x15

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x9

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    const/16 v13, 0xe

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x14

    const/4 v4, 0x4

    new-array v4, v4, [I

    fill-array-data v4, :array_12

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x6b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x6c

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x29

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x2a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x15

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_13

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x2a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x16

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_14

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x6f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x70

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x18

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x22

    const/16 v13, 0xd

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x17

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_15

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x79

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x18

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_16

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x76

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x10

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1e

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x19

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_17

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1a

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x6a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x6b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1a

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_18

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x72

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1c

    const/16 v13, 0x16

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x21

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1b

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_19

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x7b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x8

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1a

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1c

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1c

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_1a

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x76

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1f

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1f

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1d

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_1b

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x15

    const/16 v13, 0x2d

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x17

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x25

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1a

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1e

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_1c

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x5

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xf

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x19

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x19

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x1f

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_1d

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x3

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1d

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2a

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1c

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x20

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_1e

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x23

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x23

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x21

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_1f

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x15

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1d

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xb

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2e

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x22

    const/4 v4, 0x6

    new-array v4, v4, [I

    fill-array-data v4, :array_20

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x73

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x74

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x17

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2c

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x3b

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x1

    const/16 v13, 0x11

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x23

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_21

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    const/16 v13, 0x79

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xc

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1a

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x27

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x29

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x24

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_22

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x79

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x22

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2e

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x2

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x40

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x25

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_23

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x11

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x7b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1d

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x31

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x18

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2e

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x26

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_24

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x7a

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x12

    const/16 v13, 0x7b

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xd

    const/16 v13, 0x2e

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x20

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x30

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xe

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2a

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x20

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x27

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_25

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x14

    const/16 v13, 0x75

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x4

    const/16 v13, 0x76

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x28

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x7

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x2b

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x16

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0xa

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x43

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Version;

    const/16 v3, 0x28

    const/4 v4, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_26

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/4 v6, 0x0

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x13

    const/16 v13, 0x76

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v12, 0x6

    const/16 v13, 0x77

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1c

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x12

    const/16 v13, 0x2f

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x1f

    const/16 v13, 0x30

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x22

    const/16 v13, 0x18

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x22

    const/16 v13, 0x19

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    const/4 v6, 0x3

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    const/16 v8, 0x1e

    const/4 v9, 0x2

    new-array v9, v9, [Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v10, 0x0

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x14

    const/16 v13, 0xf

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/16 v12, 0x3d

    const/16 v13, 0x10

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/qrcode/decoder/Version$ECB;-><init>(II)V

    aput-object v11, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;-><init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V

    aput-object v7, v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/qrcode/decoder/Version;-><init>(I[I[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;)V

    aput-object v2, v0, v1

    return-object v0

    nop

    :array_0
    .array-data 4
        0x6
        0x12
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x16
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x1a
    .end array-data

    :array_3
    .array-data 4
        0x6
        0x1e
    .end array-data

    :array_4
    .array-data 4
        0x6
        0x22
    .end array-data

    :array_5
    .array-data 4
        0x6
        0x16
        0x26
    .end array-data

    :array_6
    .array-data 4
        0x6
        0x18
        0x2a
    .end array-data

    :array_7
    .array-data 4
        0x6
        0x1a
        0x2e
    .end array-data

    :array_8
    .array-data 4
        0x6
        0x1c
        0x32
    .end array-data

    :array_9
    .array-data 4
        0x6
        0x1e
        0x36
    .end array-data

    :array_a
    .array-data 4
        0x6
        0x20
        0x3a
    .end array-data

    :array_b
    .array-data 4
        0x6
        0x22
        0x3e
    .end array-data

    :array_c
    .array-data 4
        0x6
        0x1a
        0x2e
        0x42
    .end array-data

    :array_d
    .array-data 4
        0x6
        0x1a
        0x30
        0x46
    .end array-data

    :array_e
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
    .end array-data

    :array_f
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
    .end array-data

    :array_10
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
    .end array-data

    :array_11
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
    .end array-data

    :array_12
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
    .end array-data

    :array_13
    .array-data 4
        0x6
        0x1c
        0x32
        0x48
        0x5e
    .end array-data

    :array_14
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
    .end array-data

    :array_15
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
    .end array-data

    :array_16
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
    .end array-data

    :array_17
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
    .end array-data

    :array_18
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
    .end array-data

    :array_1a
    .array-data 4
        0x6
        0x1a
        0x32
        0x4a
        0x62
        0x7a
    .end array-data

    :array_1b
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
    .end array-data

    :array_1c
    .array-data 4
        0x6
        0x1a
        0x34
        0x4e
        0x68
        0x82
    .end array-data

    :array_1d
    .array-data 4
        0x6
        0x1e
        0x38
        0x52
        0x6c
        0x86
    .end array-data

    :array_1e
    .array-data 4
        0x6
        0x22
        0x3c
        0x56
        0x70
        0x8a
    .end array-data

    :array_1f
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
    .end array-data

    :array_20
    .array-data 4
        0x6
        0x22
        0x3e
        0x5a
        0x76
        0x92
    .end array-data

    :array_21
    .array-data 4
        0x6
        0x1e
        0x36
        0x4e
        0x66
        0x7e
        0x96
    .end array-data

    :array_22
    .array-data 4
        0x6
        0x18
        0x32
        0x4c
        0x66
        0x80
        0x9a
    .end array-data

    :array_23
    .array-data 4
        0x6
        0x1c
        0x36
        0x50
        0x6a
        0x84
        0x9e
    .end array-data

    :array_24
    .array-data 4
        0x6
        0x20
        0x3a
        0x54
        0x6e
        0x88
        0xa2
    .end array-data

    :array_25
    .array-data 4
        0x6
        0x1a
        0x36
        0x52
        0x6e
        0x8a
        0xa6
    .end array-data

    :array_26
    .array-data 4
        0x6
        0x1e
        0x3a
        0x56
        0x72
        0x8e
        0xaa
    .end array-data
.end method

.method static decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7fffffff

    move v2, v1

    move v1, v0

    :goto_0
    sget-object v3, Lcom/google/zxing/qrcode/decoder/Version;->VERSION_DECODE_INFO:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Version;->VERSION_DECODE_INFO:[I

    aget v3, v3, v0

    if-ne v3, p0, :cond_0

    add-int/lit8 v0, v0, 0x7

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-static {p0, v3}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v3

    if-ge v3, v2, :cond_1

    add-int/lit8 v1, v0, 0x7

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-gt v2, v0, :cond_3

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getProvisionalVersionForDimension(I)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    rem-int/lit8 v0, p0, 0x4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_0
    add-int/lit8 v0, p0, -0x11

    :try_start_0
    div-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method public static getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 2

    if-lez p0, :cond_0

    const/16 v0, 0x28

    if-le p0, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lcom/google/zxing/qrcode/decoder/Version;->VERSIONS:[Lcom/google/zxing/qrcode/decoder/Version;

    add-int/lit8 v1, p0, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method


# virtual methods
.method buildFunctionPattern()Lcom/google/zxing/common/BitMatrix;
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x6

    const/16 v10, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v3

    new-instance v4, Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v4, v3}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    invoke-virtual {v4, v1, v1, v10, v10}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    add-int/lit8 v0, v3, -0x8

    const/16 v2, 0x8

    invoke-virtual {v4, v0, v1, v2, v10}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    add-int/lit8 v0, v3, -0x8

    const/16 v2, 0x8

    invoke-virtual {v4, v1, v0, v10, v2}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    array-length v5, v0

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_4

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    aget v0, v0, v2

    add-int/lit8 v6, v0, -0x2

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_3

    if-nez v2, :cond_0

    if-eqz v0, :cond_2

    add-int/lit8 v7, v5, -0x1

    if-eq v0, v7, :cond_2

    :cond_0
    add-int/lit8 v7, v5, -0x1

    if-ne v2, v7, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v7, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    aget v7, v7, v0

    add-int/lit8 v7, v7, -0x2

    const/4 v8, 0x5

    const/4 v9, 0x5

    invoke-virtual {v4, v7, v6, v8, v9}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v3, -0x11

    invoke-virtual {v4, v11, v10, v12, v0}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    add-int/lit8 v0, v3, -0x11

    invoke-virtual {v4, v10, v11, v0, v12}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    if-le v0, v11, :cond_5

    add-int/lit8 v0, v3, -0xb

    invoke-virtual {v4, v0, v1, v13, v11}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    add-int/lit8 v0, v3, -0xb

    invoke-virtual {v4, v1, v0, v11, v13}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    :cond_5
    return-object v4
.end method

.method public getAlignmentPatternCenters()[I
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->alignmentPatternCenters:[I

    return-object v0
.end method

.method public getDimensionForVersion()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x11

    return v0
.end method

.method public getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .locals 2

    iget-object v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    invoke-virtual {p1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTotalCodewords()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->totalCodewords:I

    return v0
.end method

.method public getVersionNumber()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version;->versionNumber:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
