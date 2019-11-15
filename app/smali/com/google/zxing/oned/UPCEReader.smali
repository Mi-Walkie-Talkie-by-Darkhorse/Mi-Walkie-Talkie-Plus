.class public final Lcom/google/zxing/oned/UPCEReader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "UPCEReader.java"


# static fields
.field private static final MIDDLE_END_PATTERN:[I

.field static final NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0xa

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/UPCEReader;->MIDDLE_END_PATTERN:[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x38
        0x34
        0x32
        0x31
        0x2c
        0x26
        0x23
        0x2a
        0x29
        0x25
    .end array-data

    :array_2
    .array-data 4
        0x7
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/oned/UPCEReader;->decodeMiddleCounters:[I

    return-void
.end method

.method public static convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [C

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-virtual {p0, v1, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-char v2, v0, v7

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v1, v0, v3, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const-string v0, "0000"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "0000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0, v4, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1, v0, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const-string v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1, v0, v3, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    const-string v2, "00000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-char v0, v0, v6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static determineNumSysAndCheckDigit(Ljava/lang/StringBuilder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v0, 0x1

    if-gt v2, v0, :cond_2

    move v0, v1

    :goto_1
    const/16 v3, 0xa

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    aget-object v3, v3, v2

    aget v3, v3, v0

    if-ne p1, v3, :cond_0

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method protected checkChecksum(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    sget-object v1, Lcom/google/zxing/oned/UPCEReader;->MIDDLE_END_PATTERN:[I

    invoke-static {p1, p2, v0, v1}, Lcom/google/zxing/oned/UPCEReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v0

    return-object v0
.end method

.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/google/zxing/oned/UPCEReader;->decodeMiddleCounters:[I

    aput v2, v5, v2

    aput v2, v5, v10

    const/4 v0, 0x2

    aput v2, v5, v0

    const/4 v0, 0x3

    aput v2, v5, v0

    invoke-virtual {p1}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    aget v1, p2, v10

    move v4, v2

    move v0, v2

    :goto_0
    const/4 v3, 0x6

    if-ge v4, v3, :cond_2

    if-ge v1, v6, :cond_2

    sget-object v3, Lcom/google/zxing/oned/UPCEReader;->L_AND_G_PATTERNS:[[I

    invoke-static {p1, v5, v1, v3}, Lcom/google/zxing/oned/UPCEReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v7

    rem-int/lit8 v3, v7, 0xa

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v8, v5

    move v3, v1

    move v1, v2

    :goto_1
    if-ge v1, v8, :cond_0

    aget v9, v5, v1

    add-int/2addr v3, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/16 v1, 0xa

    if-lt v7, v1, :cond_1

    rsub-int/lit8 v1, v4, 0x5

    shl-int v1, v10, v1

    or-int/2addr v0, v1

    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v1, v3

    goto :goto_0

    :cond_2
    invoke-static {p3, v0}, Lcom/google/zxing/oned/UPCEReader;->determineNumSysAndCheckDigit(Ljava/lang/StringBuilder;I)V

    return v1
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 1

    sget-object v0, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    return-object v0
.end method
