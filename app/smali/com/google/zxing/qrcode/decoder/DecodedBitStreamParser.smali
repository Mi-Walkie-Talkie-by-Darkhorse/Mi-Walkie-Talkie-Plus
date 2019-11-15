.class final Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final ALPHANUMERIC_CHARS:[C

.field private static final GB2312_SUBSET:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ $%*+-./:"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/zxing/qrcode/decoder/Version;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    new-instance v0, Lcom/google/zxing/common/BitSource;

    invoke-direct {v0, p0}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v4, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v8, v6

    move v9, v5

    move v6, v2

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    const/4 v5, 0x4

    if-ge v2, v5, :cond_0

    sget-object v2, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v7, v2

    :goto_1
    sget-object v2, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v7, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    sget-object v5, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v10

    aget v5, v5, v10

    packed-switch v5, :pswitch_data_1

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_0
    const/4 v2, 0x4

    :try_start_1
    invoke-virtual {v0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/Mode;->forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v2

    move-object v7, v2

    goto :goto_1

    :pswitch_0
    move v2, v6

    move v5, v9

    move v6, v8

    :goto_2
    sget-object v8, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne v7, v8, :cond_5

    new-instance v0, Lcom/google/zxing/common/DecoderResult;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x0

    :goto_3
    if-nez p2, :cond_3

    const/4 v4, 0x0

    :goto_4
    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;II)V

    return-object v0

    :pswitch_1
    const/4 v6, 0x1

    move v2, v6

    move v5, v9

    move v6, v8

    goto :goto_2

    :pswitch_2
    :try_start_2
    invoke-virtual {v0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v2

    const/16 v5, 0x10

    if-ge v2, v5, :cond_1

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v9

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v8

    move v2, v6

    move v5, v9

    move v6, v8

    goto :goto_2

    :pswitch_3
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->parseECIValue(Lcom/google/zxing/common/BitSource;)I

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :pswitch_4
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    invoke-virtual {v7, p1}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v5

    const/4 v10, 0x1

    if-ne v2, v10, :cond_4

    invoke-static {v0, v1, v5}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    move v2, v6

    move v5, v9

    move v6, v8

    goto :goto_2

    :pswitch_5
    invoke-static {v0, v1, v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    move v2, v6

    move v5, v9

    move v6, v8

    goto :goto_2

    :pswitch_6
    invoke-static {v0, v1, v2, v6}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V

    move v2, v6

    move v5, v9

    move v6, v8

    goto :goto_2

    :pswitch_7
    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V

    move v2, v6

    move v5, v9

    move v6, v8

    goto :goto_2

    :pswitch_8
    invoke-static {v0, v1, v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move v2, v6

    move v5, v9

    move v6, v8

    goto :goto_2

    :cond_2
    move-object v3, v4

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_4
    move v2, v6

    move v5, v9

    move v6, v8

    goto/16 :goto_2

    :cond_5
    move v8, v6

    move v9, v5

    move v6, v2

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private static decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v6, 0x25

    const/16 v5, 0xb

    const/4 v4, 0x6

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    :goto_0
    if-le p2, v3, :cond_1

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-ge v1, v5, :cond_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    div-int/lit8 v2, v1, 0x2d

    invoke-static {v2}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v1, v1, 0x2d

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x2

    goto :goto_0

    :cond_1
    if-ne p2, v3, :cond_3

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-ge v1, v4, :cond_2

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz p3, :cond_6

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_5

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v6, :cond_5

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/16 v1, 0x1d

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    :cond_6
    return-void
.end method

.method private static decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lcom/google/zxing/common/CharacterSetECI;",
            "Ljava/util/Collection",
            "<[B>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    shl-int/lit8 v0, p2, 0x3

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_0
    new-array v1, p2, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    invoke-static {v1, p5}, Lcom/google/zxing/common/StringUtils;->guessEncoding([BLjava/util/Map;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p4, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    invoke-virtual {p3}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_0
    mul-int/lit8 v0, p2, 0x2

    new-array v2, v0, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lez p2, :cond_2

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    div-int/lit8 v3, v0, 0x60

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit8 v0, v0, 0x60

    or-int/2addr v0, v3

    const/16 v3, 0x3bf

    if-ge v0, v3, :cond_1

    const v3, 0xa1a1

    add-int/2addr v0, v3

    :goto_1
    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    add-int/lit8 v0, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const v3, 0xa6a1

    add-int/2addr v0, v3

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "GB2312"

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    mul-int/lit8 v0, p2, 0xd

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_0
    mul-int/lit8 v0, p2, 0x2

    new-array v2, v0, [B

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lez p2, :cond_2

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    div-int/lit16 v3, v0, 0xc0

    shl-int/lit8 v3, v3, 0x8

    rem-int/lit16 v0, v0, 0xc0

    or-int/2addr v0, v3

    const/16 v3, 0x1f00

    if-ge v0, v3, :cond_1

    const v3, 0x8140

    add-int/2addr v0, v3

    :goto_1
    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v3, v1, 0x1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    add-int/lit8 v0, v1, 0x2

    add-int/lit8 p2, p2, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const v3, 0xc140

    add-int/2addr v0, v3

    goto :goto_1

    :cond_2
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "SJIS"

    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/4 v4, 0x7

    const/4 v3, 0x4

    const/16 v2, 0xa

    :goto_0
    const/4 v0, 0x3

    if-lt p2, v0, :cond_2

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v0

    if-ge v0, v2, :cond_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_1

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_1
    div-int/lit8 v1, v0, 0x64

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    div-int/lit8 v1, v0, 0xa

    rem-int/lit8 v1, v1, 0xa

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, -0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_6

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v0

    if-ge v0, v4, :cond_3

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_3
    invoke-virtual {p0, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_4

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_4
    div-int/lit8 v1, v0, 0xa

    invoke-static {v1}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v0, v0, 0xa

    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    :goto_1
    return-void

    :cond_6
    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    invoke-virtual {p0}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v0

    if-ge v0, v3, :cond_7

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_7
    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    if-lt v0, v2, :cond_8

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_8
    invoke-static {v0}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static parseECIValue(Lcom/google/zxing/common/BitSource;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-nez v1, :cond_0

    and-int/lit8 v0, v0, 0x7f

    :goto_0
    return v0

    :cond_0
    and-int/lit16 v1, v0, 0xc0

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v3}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    and-int/lit8 v0, v0, 0x3f

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v1

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v0, 0xe0

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_2

    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v1

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
.end method

.method private static toAlphaNumericChar(I)C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    array-length v0, v0

    if-lt p0, v0, :cond_0

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_0
    sget-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    aget-char v0, v0, p0

    return v0
.end method
