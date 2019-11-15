.class public Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
.super Ljava/lang/Object;
.source "SymbolInfo.java"


# static fields
.field static final PROD_SYMBOLS:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

.field private static symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;


# instance fields
.field private final dataCapacity:I

.field private final dataRegions:I

.field private final errorCodewords:I

.field public final matrixHeight:I

.field public final matrixWidth:I

.field private final rectangular:Z

.field private final rsBlockData:I

.field private final rsBlockError:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v0, 0x1e

    new-array v9, v0, [Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v7, 0x0

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x5

    const/16 v4, 0x8

    const/16 v5, 0x8

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x1

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x7

    const/16 v4, 0xa

    const/16 v5, 0xa

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x2

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x7

    const/16 v4, 0x10

    const/4 v5, 0x6

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x3

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/16 v3, 0xa

    const/16 v4, 0xc

    const/16 v5, 0xc

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x4

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/16 v3, 0xb

    const/16 v4, 0xe

    const/4 v5, 0x6

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x5

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xe

    const/16 v5, 0xe

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x6

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x1

    const/16 v2, 0x10

    const/16 v3, 0xe

    const/16 v4, 0x18

    const/16 v5, 0xa

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/4 v7, 0x7

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x12

    const/16 v3, 0xe

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0x8

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x16

    const/16 v3, 0x12

    const/16 v4, 0x12

    const/16 v5, 0x12

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0x9

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x1

    const/16 v2, 0x16

    const/16 v3, 0x12

    const/16 v4, 0x10

    const/16 v5, 0xa

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0xa

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x1e

    const/16 v3, 0x14

    const/16 v4, 0x14

    const/16 v5, 0x14

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0xb

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x1

    const/16 v2, 0x20

    const/16 v3, 0x18

    const/16 v4, 0x10

    const/16 v5, 0xe

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0xc

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x24

    const/16 v3, 0x18

    const/16 v4, 0x16

    const/16 v5, 0x16

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0xd

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x2c

    const/16 v3, 0x1c

    const/16 v4, 0x18

    const/16 v5, 0x18

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0xe

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x1

    const/16 v2, 0x31

    const/16 v3, 0x1c

    const/16 v4, 0x16

    const/16 v5, 0xe

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0xf

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x3e

    const/16 v3, 0x24

    const/16 v4, 0xe

    const/16 v5, 0xe

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0x10

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x56

    const/16 v3, 0x2a

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0x11

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x72

    const/16 v3, 0x30

    const/16 v4, 0x12

    const/16 v5, 0x12

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0x12

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x90

    const/16 v3, 0x38

    const/16 v4, 0x14

    const/16 v5, 0x14

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v7, 0x13

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0xae

    const/16 v3, 0x44

    const/16 v4, 0x16

    const/16 v5, 0x16

    const/4 v6, 0x4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIII)V

    aput-object v0, v9, v7

    const/16 v10, 0x14

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0xcc

    const/16 v3, 0x54

    const/16 v4, 0x18

    const/16 v5, 0x18

    const/4 v6, 0x4

    const/16 v7, 0x66

    const/16 v8, 0x2a

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x15

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x118

    const/16 v3, 0x70

    const/16 v4, 0xe

    const/16 v5, 0xe

    const/16 v6, 0x10

    const/16 v7, 0x8c

    const/16 v8, 0x38

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x16

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x170

    const/16 v3, 0x90

    const/16 v4, 0x10

    const/16 v5, 0x10

    const/16 v6, 0x10

    const/16 v7, 0x5c

    const/16 v8, 0x24

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x17

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x1c8

    const/16 v3, 0xc0

    const/16 v4, 0x12

    const/16 v5, 0x12

    const/16 v6, 0x10

    const/16 v7, 0x72

    const/16 v8, 0x30

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x18

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x240

    const/16 v3, 0xe0

    const/16 v4, 0x14

    const/16 v5, 0x14

    const/16 v6, 0x10

    const/16 v7, 0x90

    const/16 v8, 0x38

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x19

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x2b8

    const/16 v3, 0x110

    const/16 v4, 0x16

    const/16 v5, 0x16

    const/16 v6, 0x10

    const/16 v7, 0xae

    const/16 v8, 0x44

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1a

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x330

    const/16 v3, 0x150

    const/16 v4, 0x18

    const/16 v5, 0x18

    const/16 v6, 0x10

    const/16 v7, 0x88

    const/16 v8, 0x38

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1b

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x41a

    const/16 v3, 0x198

    const/16 v4, 0x12

    const/16 v5, 0x12

    const/16 v6, 0x24

    const/16 v7, 0xaf

    const/16 v8, 0x44

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v10, 0x1c

    new-instance v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    const/4 v1, 0x0

    const/16 v2, 0x518

    const/16 v3, 0x1f0

    const/16 v4, 0x14

    const/16 v5, 0x14

    const/16 v6, 0x24

    const/16 v7, 0xa3

    const/16 v8, 0x3e

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    aput-object v0, v9, v10

    const/16 v0, 0x1d

    new-instance v1, Lcom/google/zxing/datamatrix/encoder/DataMatrixSymbolInfo144;

    invoke-direct {v1}, Lcom/google/zxing/datamatrix/encoder/DataMatrixSymbolInfo144;-><init>()V

    aput-object v1, v9, v0

    sput-object v9, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->PROD_SYMBOLS:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    sput-object v9, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    return-void
.end method

.method public constructor <init>(ZIIIII)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;-><init>(ZIIIIIII)V

    return-void
.end method

.method constructor <init>(ZIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    iput p2, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    iput p3, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    iput p4, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    iput p5, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    iput p6, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataRegions:I

    iput p7, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    iput p8, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockError:I

    return-void
.end method

.method private getHorizontalDataRegions()I
    .locals 2

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataRegions:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot handle this number of data regions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x6

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
        0x24 -> :sswitch_3
    .end sparse-switch
.end method

.method private getVerticalDataRegions()I
    .locals 2

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataRegions:I

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot handle this number of data regions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x6

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x10 -> :sswitch_2
        0x24 -> :sswitch_3
    .end sparse-switch
.end method

.method public static lookup(I)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 2

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v0

    return-object v0
.end method

.method public static lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v0

    return-object v0
.end method

.method public static lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 6

    sget-object v2, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_5

    aget-object v0, v2, v1

    sget-object v4, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_SQUARE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    if-ne p1, v4, :cond_0

    iget-boolean v4, v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    if-nez v4, :cond_4

    :cond_0
    sget-object v4, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_RECTANGLE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    if-ne p1, v4, :cond_1

    iget-boolean v4, v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    if-eqz v4, :cond_4

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v4

    invoke-virtual {p2}, Lcom/google/zxing/Dimension;->getWidth()I

    move-result v5

    if-lt v4, v5, :cond_4

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v4

    invoke-virtual {p2}, Lcom/google/zxing/Dimension;->getHeight()I

    move-result v5

    if-lt v4, v5, :cond_4

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v4

    invoke-virtual {p3}, Lcom/google/zxing/Dimension;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_4

    invoke-virtual {v0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v4

    invoke-virtual {p3}, Lcom/google/zxing/Dimension;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_4

    :cond_3
    iget v4, v0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    if-gt p0, v4, :cond_4

    :goto_1
    return-object v0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    if-eqz p4, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t find a symbol arrangement that matches the message. Data codewords: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0, p2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Lcom/google/zxing/Dimension;Lcom/google/zxing/Dimension;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v0

    return-object v0
.end method

.method public static lookup(IZZ)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_NONE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    :goto_0
    invoke-static {p0, v0, p2}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->lookup(ILcom/google/zxing/datamatrix/encoder/SymbolShapeHint;Z)Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;->FORCE_SQUARE:Lcom/google/zxing/datamatrix/encoder/SymbolShapeHint;

    goto :goto_0
.end method

.method public static overrideSymbolSet([Lcom/google/zxing/datamatrix/encoder/SymbolInfo;)V
    .locals 0

    sput-object p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->symbols:[Lcom/google/zxing/datamatrix/encoder/SymbolInfo;

    return-void
.end method


# virtual methods
.method public getCodewordCount()I
    .locals 2

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final getDataCapacity()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    return v0
.end method

.method public getDataLengthForInterleavedBlock(I)I
    .locals 1

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    return v0
.end method

.method public final getErrorCodewords()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    return v0
.end method

.method public final getErrorLengthForInterleavedBlock(I)I
    .locals 1

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockError:I

    return v0
.end method

.method public getInterleavedBlockCount()I
    .locals 2

    iget v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rsBlockData:I

    div-int/2addr v0, v1

    return v0
.end method

.method public final getSymbolDataHeight()I
    .locals 2

    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    move-result v0

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public final getSymbolDataWidth()I
    .locals 2

    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v0

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public final getSymbolHeight()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getVerticalDataRegions()I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getSymbolWidth()I
    .locals 2

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getHorizontalDataRegions()I

    move-result v1

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/16 v2, 0x78

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->rectangular:Z

    if-eqz v0, :cond_0

    const-string v0, "Rectangular Symbol:"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data region "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->matrixHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", symbol size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", symbol data size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->getSymbolDataHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", codewords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->dataCapacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/zxing/datamatrix/encoder/SymbolInfo;->errorCodewords:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Square Symbol:"

    goto :goto_0
.end method
