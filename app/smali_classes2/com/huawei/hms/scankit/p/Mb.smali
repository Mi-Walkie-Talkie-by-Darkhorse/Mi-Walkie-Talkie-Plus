.class final Lcom/huawei/hms/scankit/p/Mb;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/scankit/p/Mb$a;
    }
.end annotation


# static fields
.field private static final a:[C

.field private static final b:[C

.field private static final c:[Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, ";<>@[\\]_`~!\r\t,:\n-.$/\"|*()?{}\'"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/scankit/p/Mb;->a:[C

    const-string v0, "0123456789&\r\t,:#-.$/+%*=^"

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/scankit/p/Mb;->b:[C

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/math/BigInteger;

    .line 3
    sput-object v0, Lcom/huawei/hms/scankit/p/Mb;->c:[Ljava/math/BigInteger;

    .line 4
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-wide/16 v1, 0x384

    .line 5
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v0, 0x2

    .line 6
    :goto_0
    sget-object v2, Lcom/huawei/hms/scankit/p/Mb;->c:[Ljava/math/BigInteger;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v0, -0x1

    .line 7
    aget-object v3, v2, v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    move v0, p0

    .line 104
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/16 v1, 0x385

    if-ne v0, v1, :cond_6

    const/4 v0, 0x6

    new-array v1, v0, [I

    add-int/lit8 v6, p3, 0x1

    .line 105
    aget v8, p1, p3

    const/4 v9, 0x0

    .line 106
    :goto_0
    aget v10, p1, v9

    if-ge v6, v10, :cond_3

    if-nez v2, :cond_3

    add-int/lit8 v10, v3, 0x1

    .line 107
    aput v8, v1, v3

    const-wide/16 v11, 0x384

    mul-long v4, v4, v11

    int-to-long v11, v8

    add-long/2addr v4, v11

    add-int/lit8 v3, v6, 0x1

    .line 108
    aget v8, p1, v6

    const/16 v6, 0x3a0

    if-eq v8, v6, :cond_2

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    .line 109
    rem-int/lit8 v6, v10, 0x5

    if-nez v6, :cond_1

    if-lez v10, :cond_1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v0, :cond_0

    rsub-int/lit8 v10, v6, 0x5

    mul-int/lit8 v10, v10, 0x8

    shr-long v10, v4, v10

    long-to-int v11, v10

    int-to-byte v10, v11

    .line 110
    invoke-virtual {v7, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    move v6, v3

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move v6, v3

    goto :goto_2

    :cond_2
    :pswitch_0
    add-int/lit8 v6, v3, -0x1

    const/4 v2, 0x1

    :goto_2
    move v3, v10

    goto :goto_0

    .line 111
    :cond_3
    aget v0, p1, v9

    if-ne v6, v0, :cond_4

    const/16 v0, 0x384

    if-ge v8, v0, :cond_4

    add-int/lit8 v0, v3, 0x1

    .line 112
    aput v8, v1, v3

    move v3, v0

    :cond_4
    :goto_3
    if-ge v9, v3, :cond_5

    .line 113
    aget v0, v1, v9

    int-to-byte v0, v0

    invoke-virtual {v7, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_5
    move v0, v6

    goto :goto_4

    :cond_6
    const/16 v1, 0x39c

    if-ne v0, v1, :cond_7

    move/from16 v0, p3

    move-object v1, p1

    move-object v6, v7

    .line 114
    invoke-static/range {v0 .. v6}, Lcom/huawei/hms/scankit/p/Mb;->a(I[IZIJLjava/io/ByteArrayOutputStream;)I

    move-result v0

    goto :goto_4

    :cond_7
    move/from16 v0, p3

    .line 115
    :goto_4
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object v3, p2

    invoke-direct {v1, v2, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v0

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(I[IZIJLjava/io/ByteArrayOutputStream;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 v0, 0x0

    .line 116
    :cond_0
    :goto_0
    aget v1, p1, v0

    if-ge p0, v1, :cond_4

    if-nez p2, :cond_4

    add-int/lit8 v1, p0, 0x1

    .line 117
    aget p0, p1, p0

    const/16 v2, 0x384

    if-ge p0, v2, :cond_1

    add-int/lit8 p3, p3, 0x1

    const-wide/16 v2, 0x384

    mul-long p4, p4, v2

    int-to-long v2, p0

    add-long/2addr p4, v2

    move p0, v1

    goto :goto_1

    :cond_1
    const/16 p2, 0x3a0

    if-eq p0, p2, :cond_2

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    .line 118
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_2
    :pswitch_0
    add-int/lit8 v1, v1, -0x1

    const/4 p0, 0x1

    move p0, v1

    const/4 p2, 0x1

    .line 119
    :goto_1
    rem-int/lit8 v1, p3, 0x5

    if-nez v1, :cond_0

    if-lez p3, :cond_0

    const/4 p3, 0x0

    :goto_2
    const/4 v1, 0x6

    if-ge p3, v1, :cond_3

    rsub-int/lit8 v1, p3, 0x5

    mul-int/lit8 v1, v1, 0x8

    shr-long v1, p4, v1

    long-to-int v2, v1

    int-to-byte v1, v2

    .line 120
    invoke-virtual {p6, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    const-wide/16 p4, 0x0

    const/4 p3, 0x0

    goto :goto_0

    :cond_4
    return p0

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Ljava/lang/StringBuilder;I[IILjava/nio/charset/Charset;Lcom/huawei/hms/scankit/p/Yb;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/16 v0, 0x391

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3a0

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    add-int/lit8 p3, p3, -0x1

    .line 26
    invoke-static {p2, p3, p0}, Lcom/huawei/hms/scankit/p/Mb;->b([IILjava/lang/StringBuilder;)I

    move-result p0

    goto :goto_0

    .line 27
    :pswitch_0
    invoke-static {p2, p3, p0}, Lcom/huawei/hms/scankit/p/Mb;->a([IILjava/lang/StringBuilder;)I

    move-result p0

    goto :goto_0

    .line 28
    :pswitch_1
    invoke-static {p2, p3, p0}, Lcom/huawei/hms/scankit/p/Mb;->b([IILjava/lang/StringBuilder;)I

    move-result p0

    goto :goto_0

    :pswitch_2
    add-int/lit8 p0, p3, 0x2

    goto :goto_0

    :pswitch_3
    add-int/lit8 p0, p3, 0x1

    goto :goto_0

    .line 29
    :pswitch_4
    invoke-static {p1, p2, p4, p3, p0}, Lcom/huawei/hms/scankit/p/Mb;->a(I[ILjava/nio/charset/Charset;ILjava/lang/StringBuilder;)I

    move-result p0

    goto :goto_0

    .line 30
    :pswitch_5
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    .line 31
    :cond_0
    invoke-static {p2, p3, p5}, Lcom/huawei/hms/scankit/p/Mb;->a([IILcom/huawei/hms/scankit/p/Yb;)I

    move-result p0

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p3, 0x1

    .line 32
    aget p2, p2, p3

    int-to-char p2, p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p0, p1

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x384
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39a
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method static a([IILcom/huawei/hms/scankit/p/Yb;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x0

    .line 33
    aget v2, p0, v1

    if-gt v0, v2, :cond_4

    const/4 v0, 0x2

    new-array v2, v0, [I

    :goto_0
    if-ge v1, v0, :cond_0

    .line 34
    aget v3, p0, p1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 35
    :cond_0
    :try_start_0
    invoke-static {v2, v0}, Lcom/huawei/hms/scankit/p/Mb;->a([II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/huawei/hms/scankit/p/Yb;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    invoke-static {p0, p1, v0}, Lcom/huawei/hms/scankit/p/Mb;->b([IILjava/lang/StringBuilder;)I

    move-result p1

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/huawei/hms/scankit/p/Yb;->b(Ljava/lang/String;)V

    .line 39
    aget v0, p0, p1

    const/16 v1, 0x39b

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, p1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 40
    :goto_1
    invoke-static {p1, p0, p2}, Lcom/huawei/hms/scankit/p/Mb;->a(I[ILcom/huawei/hms/scankit/p/Yb;)V

    if-eq v0, v2, :cond_3

    sub-int v1, p1, v0

    .line 41
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/Yb;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/2addr v1, v0

    .line 42
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/huawei/hms/scankit/p/Yb;->a([I)V

    :cond_3
    return p1

    .line 43
    :catch_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    .line 44
    :cond_4
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method private static a([IILjava/lang/StringBuilder;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 121
    :goto_0
    aget v4, p0, v1

    if-ge p1, v4, :cond_5

    if-nez v2, :cond_5

    add-int/lit8 v4, p1, 0x1

    .line 122
    aget p1, p0, p1

    .line 123
    aget v5, p0, v1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    const/16 v5, 0x384

    if-ge p1, v5, :cond_1

    .line 124
    aput p1, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-eq p1, v5, :cond_2

    const/16 v2, 0x385

    if-eq p1, v2, :cond_2

    const/16 v2, 0x3a0

    if-eq p1, v2, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 125
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_2
    :pswitch_0
    add-int/lit8 v4, v4, -0x1

    const/4 v2, 0x1

    .line 126
    :goto_1
    rem-int/lit8 v5, v3, 0xf

    if-eqz v5, :cond_3

    const/16 v5, 0x386

    if-eq p1, v5, :cond_3

    if-eqz v2, :cond_4

    :cond_3
    if-lez v3, :cond_4

    .line 127
    invoke-static {v0, v3}, Lcom/huawei/hms/scankit/p/Mb;->a([II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :cond_4
    move p1, v4

    goto :goto_0

    :cond_5
    return p1

    :pswitch_data_0
    .packed-switch 0x39a
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static a([ILjava/lang/String;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/e;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;)",
            "Lcom/huawei/hms/scankit/aiscan/common/e;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    new-instance v6, Ljava/lang/StringBuilder;

    array-length v0, p0

    const/4 v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/4 v2, 0x1

    .line 3
    aget v2, p0, v2

    .line 4
    new-instance v7, Lcom/huawei/hms/scankit/p/Yb;

    invoke-direct {v7}, Lcom/huawei/hms/scankit/p/Yb;-><init>()V

    move-object v8, v0

    move v1, v2

    const/4 v3, 0x2

    :goto_0
    const/4 v0, 0x0

    .line 5
    aget v2, p0, v0

    if-gt v3, v2, :cond_3

    .line 6
    aget v2, p0, v0

    if-ne v3, v2, :cond_0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0x39f

    if-ne v1, v0, :cond_1

    add-int/lit8 v0, v3, 0x1

    .line 7
    aget v1, p0, v3

    invoke-static {v1}, Lcom/huawei/hms/scankit/aiscan/common/c;->a(I)Lcom/huawei/hms/scankit/aiscan/common/c;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v0, v6

    move-object v2, p0

    move-object v4, v8

    move-object v5, v7

    .line 9
    invoke-static/range {v0 .. v5}, Lcom/huawei/hms/scankit/p/Mb;->a(Ljava/lang/StringBuilder;I[IILjava/nio/charset/Charset;Lcom/huawei/hms/scankit/p/Yb;)I

    move-result v0

    .line 10
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    add-int/lit8 v3, v0, 0x1

    .line 11
    aget v1, p0, v0

    goto :goto_0

    .line 12
    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    .line 13
    :cond_3
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-eqz p0, :cond_6

    .line 14
    sget-object p0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    if-ne v8, p0, :cond_5

    .line 15
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    .line 16
    new-array v2, p0, [B

    :goto_3
    if-ge v0, p0, :cond_4

    .line 17
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 18
    :cond_4
    invoke-static {v2, p2}, Lcom/huawei/hms/scankit/aiscan/common/B;->a([BLjava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 19
    :try_start_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v2, p0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    new-instance p0, Lcom/huawei/hms/scankit/aiscan/common/e;

    invoke-direct {p0, v1, p2, v1, p1}, Lcom/huawei/hms/scankit/aiscan/common/e;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p0, v7}, Lcom/huawei/hms/scankit/aiscan/common/e;->a(Ljava/lang/Object;)V

    return-object p0

    .line 22
    :catch_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    .line 23
    :cond_5
    new-instance p0, Lcom/huawei/hms/scankit/aiscan/common/e;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p2, v1, p1}, Lcom/huawei/hms/scankit/aiscan/common/e;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0, v7}, Lcom/huawei/hms/scankit/aiscan/common/e;->a(Ljava/lang/Object;)V

    return-object p0

    .line 25
    :cond_6
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method private static a([II)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 128
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, p1, :cond_0

    .line 129
    sget-object v4, Lcom/huawei/hms/scankit/p/Mb;->c:[Ljava/math/BigInteger;

    sub-int v5, p1, v2

    sub-int/2addr v5, v3

    aget-object v3, v4, v5

    aget v4, p0, v2

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    .line 131
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x31

    if-ne p1, v0, :cond_1

    .line 132
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 133
    :cond_1
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method private static a(I[ILcom/huawei/hms/scankit/p/Yb;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    .line 45
    aget v0, p1, v0

    if-ge p0, v0, :cond_9

    .line 46
    aget v0, p1, p0

    const/16 v1, 0x39b

    const/4 v2, 0x1

    if-ne v0, v1, :cond_7

    add-int/lit8 p0, p0, 0x1

    .line 47
    aget v0, p1, p0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p0, p0, 0x1

    .line 49
    invoke-static {p1, p0, v0}, Lcom/huawei/hms/scankit/p/Mb;->b([IILjava/lang/StringBuilder;)I

    move-result p0

    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/huawei/hms/scankit/p/Yb;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    aget v0, p1, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p0, p0, 0x1

    .line 53
    invoke-static {p1, p0, v0}, Lcom/huawei/hms/scankit/p/Mb;->b([IILjava/lang/StringBuilder;)I

    move-result p0

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/huawei/hms/scankit/p/Yb;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_1
    aget v0, p1, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p0, p0, 0x1

    .line 57
    invoke-static {p1, p0, v0}, Lcom/huawei/hms/scankit/p/Mb;->b([IILjava/lang/StringBuilder;)I

    move-result p0

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/huawei/hms/scankit/p/Yb;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    aget v0, p1, p0

    if-ne v0, v2, :cond_3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p0, p0, 0x1

    .line 61
    invoke-static {p1, p0, v0}, Lcom/huawei/hms/scankit/p/Mb;->a([IILjava/lang/StringBuilder;)I

    move-result p0

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/huawei/hms/scankit/p/Yb;->b(I)V

    goto :goto_0

    .line 63
    :cond_3
    aget v0, p1, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p0, p0, 0x1

    .line 65
    invoke-static {p1, p0, v0}, Lcom/huawei/hms/scankit/p/Mb;->a([IILjava/lang/StringBuilder;)I

    move-result p0

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/huawei/hms/scankit/p/Yb;->b(J)V

    goto/16 :goto_0

    .line 67
    :cond_4
    aget v0, p1, p0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p0, p0, 0x1

    .line 69
    invoke-static {p1, p0, v0}, Lcom/huawei/hms/scankit/p/Mb;->a([IILjava/lang/StringBuilder;)I

    move-result p0

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/huawei/hms/scankit/p/Yb;->a(I)V

    goto/16 :goto_0

    .line 71
    :cond_5
    aget v0, p1, p0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p0, p0, 0x1

    .line 73
    invoke-static {p1, p0, v0}, Lcom/huawei/hms/scankit/p/Mb;->a([IILjava/lang/StringBuilder;)I

    move-result p0

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/huawei/hms/scankit/p/Yb;->a(J)V

    goto/16 :goto_0

    .line 75
    :cond_6
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    .line 76
    :cond_7
    aget v0, p1, p0

    const/16 v1, 0x39a

    if-ne v0, v1, :cond_8

    add-int/lit8 p0, p0, 0x1

    .line 77
    invoke-virtual {p2, v2}, Lcom/huawei/hms/scankit/p/Yb;->a(Z)V

    goto/16 :goto_0

    .line 78
    :cond_8
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_9
    return-void
.end method

.method private static a([I[IILjava/lang/StringBuilder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/huawei/hms/scankit/p/Mb$a;->a:Lcom/huawei/hms/scankit/p/Mb$a;

    const/4 v1, 0x0

    move-object v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_1

    .line 80
    aget v4, p0, v3

    const/4 v5, 0x3

    new-array v5, v5, [I

    aput v3, v5, v1

    const/4 v3, 0x1

    aput v4, v5, v3

    const/4 v4, 0x2

    aput v1, v5, v4

    new-array v6, v4, [Lcom/huawei/hms/scankit/p/Mb$a;

    aput-object v0, v6, v1

    aput-object v2, v6, v3

    .line 81
    sget-object v7, Lcom/huawei/hms/scankit/p/Lb;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto :goto_1

    .line 82
    :pswitch_0
    invoke-static {p3, p1, v0, v2, v5}, Lcom/huawei/hms/scankit/p/Mb;->f(Ljava/lang/StringBuilder;[ILcom/huawei/hms/scankit/p/Mb$a;Lcom/huawei/hms/scankit/p/Mb$a;[I)[Lcom/huawei/hms/scankit/p/Mb$a;

    move-result-object v6

    goto :goto_1

    .line 83
    :pswitch_1
    invoke-static {p3, p1, v0, v2, v5}, Lcom/huawei/hms/scankit/p/Mb;->b(Ljava/lang/StringBuilder;[ILcom/huawei/hms/scankit/p/Mb$a;Lcom/huawei/hms/scankit/p/Mb$a;[I)[Lcom/huawei/hms/scankit/p/Mb$a;

    move-result-object v6

    goto :goto_1

    .line 84
    :pswitch_2
    invoke-static {p3, p1, v0, v2, v5}, Lcom/huawei/hms/scankit/p/Mb;->e(Ljava/lang/StringBuilder;[ILcom/huawei/hms/scankit/p/Mb$a;Lcom/huawei/hms/scankit/p/Mb$a;[I)[Lcom/huawei/hms/scankit/p/Mb$a;

    move-result-object v6

    goto :goto_1

    .line 85
    :pswitch_3
    invoke-static {p3, p1, v0, v2, v5}, Lcom/huawei/hms/scankit/p/Mb;->d(Ljava/lang/StringBuilder;[ILcom/huawei/hms/scankit/p/Mb$a;Lcom/huawei/hms/scankit/p/Mb$a;[I)[Lcom/huawei/hms/scankit/p/Mb$a;

    move-result-object v6

    goto :goto_1

    .line 86
    :pswitch_4
    invoke-static {p3, p1, v0, v2, v5}, Lcom/huawei/hms/scankit/p/Mb;->c(Ljava/lang/StringBuilder;[ILcom/huawei/hms/scankit/p/Mb$a;Lcom/huawei/hms/scankit/p/Mb$a;[I)[Lcom/huawei/hms/scankit/p/Mb$a;

    move-result-object v6

    goto :goto_1

    .line 87
    :pswitch_5
    invoke-static {p3, p1, v0, v2, v5}, Lcom/huawei/hms/scankit/p/Mb;->a(Ljava/lang/StringBuilder;[ILcom/huawei/hms/scankit/p/Mb$a;Lcom/huawei/hms/scankit/p/Mb$a;[I)[Lcom/huawei/hms/scankit/p/Mb$a;

    move-result-object v6

    .line 88
    :goto_1
    aget-object v0, v6, v1

    .line 89
    aget-object v2, v6, v3

    .line 90
    aget v6, v5, v1

    .line 91
    aget v7, v5, v3

    .line 92
    aget v4, v5, v4

    int-to-char v4, v4

    if-eqz v4, :cond_0

    .line 93
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/2addr v3, v6

    goto :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(I)Z
    .locals 1

    const/16 v0, 0x385

    if-eq p0, v0, :cond_1

    const/16 v0, 0x39c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x386

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3a0

    if-eq p0, v0, :cond_1

    const/16 v0, 0x39b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x39a

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static a(Ljava/lang/StringBuilder;[ILcom/huawei/hms/scankit/p/Mb$a;Lcom/huawei/hms/scankit/p/Mb$a;[I)[Lcom/huawei/hms/scankit/p/Mb$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 v0, 0x1

    .line 94
    aget v1, p4, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1a

    if-ge v1, v4, :cond_0

    .line 95
    aget p0, p4, v0

    add-int/lit8 p0, p0, 0x41

    int-to-char p0, p0

    aput p0, p4, v3

    goto :goto_0

    .line 96
    :cond_0
    aget v1, p4, v0

    const/16 v4, 0x384

    if-eq v1, v4, :cond_2

    const/16 v4, 0x391

    if-eq v1, v4, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 97
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    .line 98
    :pswitch_0
    sget-object p0, Lcom/huawei/hms/scankit/p/Mb$a;->f:Lcom/huawei/hms/scankit/p/Mb$a;

    move-object p3, p2

    move-object p2, p0

    goto :goto_0

    .line 99
    :pswitch_1
    sget-object p2, Lcom/huawei/hms/scankit/p/Mb$a;->c:Lcom/huawei/hms/scankit/p/Mb$a;

    goto :goto_0

    .line 100
    :pswitch_2
    sget-object p2, Lcom/huawei/hms/scankit/p/Mb$a;->b:Lcom/huawei/hms/scankit/p/Mb$a;

    goto :goto_0

    :pswitch_3
    const/16 p0, 0x20

    .line 101
    aput p0, p4, v3

    goto :goto_0

    .line 102
    :cond_1
    aget p4, p4, v2

    aget p1, p1, p4

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 103
    :cond_2
    sget-object p2, Lcom/huawei/hms/scankit/p/Mb$a;->a:Lcom/huawei/hms/scankit/p/Mb$a;

    :goto_0
    new-array p0, v3, [Lcom/huawei/hms/scankit/p/Mb$a;

    aput-object p2, p0, v2

    aput-object p3, p0, v0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b([IILjava/lang/StringBuilder;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    aget v1, p0, v0

    sub-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 2
    aget v2, p0, v0

    sub-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 3
    :goto_0
    aget v5, p0, v0

    if-ge p1, v5, :cond_4

    if-nez v3, :cond_4

    add-int/lit8 v5, p1, 0x1

    .line 4
    aget p1, p0, p1

    const/16 v6, 0x384

    if-ge p1, v6, :cond_0

    .line 5
    div-int/lit8 v6, p1, 0x1e

    aput v6, v1, v4

    add-int/lit8 v6, v4, 0x1

    .line 6
    rem-int/lit8 p1, p1, 0x1e

    aput p1, v1, v6

    add-int/lit8 v4, v4, 0x2

    :goto_1
    move p1, v5

    goto :goto_0

    :cond_0
    if-ne p1, v6, :cond_1

    add-int/lit8 p1, v4, 0x1

    .line 7
    aput v6, v1, v4

    move v4, p1

    goto :goto_1

    :cond_1
    const/16 v6, 0x391

    if-ne p1, v6, :cond_2

    .line 8
    aput v6, v1, v4

    add-int/lit8 p1, v5, 0x1

    .line 9
    aget v5, p0, v5

    .line 10
    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {p1}, Lcom/huawei/hms/scankit/p/Mb;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    add-int/lit8 p1, v5, -0x1

    const/4 v3, 0x1

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    .line 13
    :cond_4
    invoke-static {v1, v2, v4, p2}, Lcom/huawei/hms/scankit/p/Mb;->a([I[IILjava/lang/StringBuilder;)V

    return p1
.end method

.method private static b(Ljava/lang/StringBuilder;[ILcom/huawei/hms/scankit/p/Mb$a;Lcom/huawei/hms/scankit/p/Mb$a;[I)[Lcom/huawei/hms/scankit/p/Mb$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 p0, 0x1

    .line 14
    aget p1, p4, p0

    const/16 p2, 0x1a

    const/4 v0, 0x2

    if-ge p1, p2, :cond_0

    .line 15
    aget p1, p4, p0

    add-int/lit8 p1, p1, 0x41

    int-to-char p1, p1

    aput p1, p4, v0

    goto :goto_0

    .line 16
    :cond_0
    aget p1, p4, p0

    if-eq p1, p2, :cond_2

    const/16 p2, 0x384

    if-ne p1, p2, :cond_1

    .line 17
    sget-object p1, Lcom/huawei/hms/scankit/p/Mb$a;->a:Lcom/huawei/hms/scankit/p/Mb$a;

    goto :goto_1

    .line 18
    :cond_1
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_2
    const/16 p1, 0x20

    .line 19
    aput p1, p4, v0

    :goto_0
    move-object p1, p3

    :goto_1
    new-array p2, v0, [Lcom/huawei/hms/scankit/p/Mb$a;

    const/4 p4, 0x0

    aput-object p1, p2, p4

    aput-object p3, p2, p0

    return-object p2
.end method

.method private static c(Ljava/lang/StringBuilder;[ILcom/huawei/hms/scankit/p/Mb$a;Lcom/huawei/hms/scankit/p/Mb$a;[I)[Lcom/huawei/hms/scankit/p/Mb$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    aget v1, p4, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1a

    if-ge v1, v4, :cond_0

    .line 2
    aget p0, p4, v0

    add-int/lit8 p0, p0, 0x61

    int-to-char p0, p0

    aput p0, p4, v3

    goto :goto_1

    .line 3
    :cond_0
    aget v1, p4, v0

    const/16 v4, 0x384

    if-eq v1, v4, :cond_2

    const/16 v4, 0x391

    if-eq v1, v4, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 4
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    .line 5
    :pswitch_0
    sget-object p0, Lcom/huawei/hms/scankit/p/Mb$a;->f:Lcom/huawei/hms/scankit/p/Mb$a;

    goto :goto_0

    .line 6
    :pswitch_1
    sget-object p2, Lcom/huawei/hms/scankit/p/Mb$a;->c:Lcom/huawei/hms/scankit/p/Mb$a;

    goto :goto_1

    .line 7
    :pswitch_2
    sget-object p0, Lcom/huawei/hms/scankit/p/Mb$a;->e:Lcom/huawei/hms/scankit/p/Mb$a;

    :goto_0
    move-object p3, p2

    move-object p2, p0

    goto :goto_1

    :pswitch_3
    const/16 p0, 0x20

    .line 8
    aput p0, p4, v3

    goto :goto_1

    .line 9
    :cond_1
    aget p4, p4, v2

    aget p1, p1, p4

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 10
    :cond_2
    sget-object p2, Lcom/huawei/hms/scankit/p/Mb$a;->a:Lcom/huawei/hms/scankit/p/Mb$a;

    :goto_1
    new-array p0, v3, [Lcom/huawei/hms/scankit/p/Mb$a;

    aput-object p2, p0, v2

    aput-object p3, p0, v0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static d(Ljava/lang/StringBuilder;[ILcom/huawei/hms/scankit/p/Mb$a;Lcom/huawei/hms/scankit/p/Mb$a;[I)[Lcom/huawei/hms/scankit/p/Mb$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    aget v1, p4, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x19

    if-ge v1, v4, :cond_0

    .line 2
    sget-object p0, Lcom/huawei/hms/scankit/p/Mb;->b:[C

    aget p1, p4, v0

    aget-char p0, p0, p1

    aput p0, p4, v3

    goto :goto_0

    .line 3
    :cond_0
    aget v1, p4, v0

    const/16 v4, 0x384

    if-eq v1, v4, :cond_2

    const/16 v4, 0x391

    if-eq v1, v4, :cond_1

    packed-switch v1, :pswitch_data_0

    .line 4
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    .line 5
    :pswitch_0
    sget-object p0, Lcom/huawei/hms/scankit/p/Mb$a;->f:Lcom/huawei/hms/scankit/p/Mb$a;

    move-object p3, p2

    move-object p2, p0

    goto :goto_0

    .line 6
    :pswitch_1
    sget-object p2, Lcom/huawei/hms/scankit/p/Mb$a;->b:Lcom/huawei/hms/scankit/p/Mb$a;

    goto :goto_0

    :pswitch_2
    const/16 p0, 0x20

    .line 7
    aput p0, p4, v3

    goto :goto_0

    .line 8
    :pswitch_3
    sget-object p2, Lcom/huawei/hms/scankit/p/Mb$a;->d:Lcom/huawei/hms/scankit/p/Mb$a;

    goto :goto_0

    .line 9
    :cond_1
    aget p4, p4, v2

    aget p1, p1, p4

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_2
    :pswitch_4
    sget-object p2, Lcom/huawei/hms/scankit/p/Mb$a;->a:Lcom/huawei/hms/scankit/p/Mb$a;

    :goto_0
    new-array p0, v3, [Lcom/huawei/hms/scankit/p/Mb$a;

    aput-object p2, p0, v2

    aput-object p3, p0, v0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private static e(Ljava/lang/StringBuilder;[ILcom/huawei/hms/scankit/p/Mb$a;Lcom/huawei/hms/scankit/p/Mb$a;[I)[Lcom/huawei/hms/scankit/p/Mb$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    aget v1, p4, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v4, 0x1d

    if-ge v1, v4, :cond_0

    .line 2
    sget-object p0, Lcom/huawei/hms/scankit/p/Mb;->a:[C

    aget p1, p4, v0

    aget-char p0, p0, p1

    aput p0, p4, v3

    goto :goto_0

    .line 3
    :cond_0
    aget v1, p4, v0

    if-eq v1, v4, :cond_2

    const/16 v4, 0x384

    if-eq v1, v4, :cond_2

    const/16 v4, 0x391

    if-ne v1, v4, :cond_1

    .line 4
    aget p4, p4, v2

    aget p1, p1, p4

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    .line 6
    :cond_2
    sget-object p2, Lcom/huawei/hms/scankit/p/Mb$a;->a:Lcom/huawei/hms/scankit/p/Mb$a;

    :goto_0
    new-array p0, v3, [Lcom/huawei/hms/scankit/p/Mb$a;

    aput-object p2, p0, v2

    aput-object p3, p0, v0

    return-object p0
.end method

.method private static f(Ljava/lang/StringBuilder;[ILcom/huawei/hms/scankit/p/Mb$a;Lcom/huawei/hms/scankit/p/Mb$a;[I)[Lcom/huawei/hms/scankit/p/Mb$a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 p2, 0x1

    .line 1
    aget v0, p4, p2

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x1d

    if-ge v0, v3, :cond_0

    .line 2
    sget-object p0, Lcom/huawei/hms/scankit/p/Mb;->a:[C

    aget p1, p4, p2

    aget-char p0, p0, p1

    aput p0, p4, v2

    goto :goto_0

    .line 3
    :cond_0
    aget v0, p4, p2

    if-eq v0, v3, :cond_2

    const/16 v3, 0x384

    if-eq v0, v3, :cond_2

    const/16 v3, 0x391

    if-ne v0, v3, :cond_1

    .line 4
    aget p4, p4, v1

    aget p1, p1, p4

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    move-object p0, p3

    goto :goto_1

    .line 5
    :cond_1
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    .line 6
    :cond_2
    sget-object p0, Lcom/huawei/hms/scankit/p/Mb$a;->a:Lcom/huawei/hms/scankit/p/Mb$a;

    :goto_1
    new-array p1, v2, [Lcom/huawei/hms/scankit/p/Mb$a;

    aput-object p0, p1, v1

    aput-object p3, p1, p2

    return-object p1
.end method
