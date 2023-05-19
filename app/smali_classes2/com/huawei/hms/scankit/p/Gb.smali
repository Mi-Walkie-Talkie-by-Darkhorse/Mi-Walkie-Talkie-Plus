.class public final Lcom/huawei/hms/scankit/p/Gb;
.super Lcom/huawei/hms/scankit/p/Fb;
.source "UPCEReader.java"


# static fields
.field private static final h:[I

.field public static final i:[[I


# instance fields
.field private final j:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/hms/scankit/p/Gb;->h:[I

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/16 v1, 0xa

    new-array v2, v1, [I

    .line 2
    fill-array-data v2, :array_1

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/huawei/hms/scankit/p/Gb;->i:[[I

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

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Fb;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/scankit/p/Gb;->j:[I

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 19
    sget-object v3, Lcom/huawei/hms/scankit/p/Gb;->i:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    if-ne p1, v3, :cond_0

    add-int/lit8 v1, v1, 0x30

    int-to-char p1, v1

    .line 20
    invoke-virtual {p0, v0, p1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x30

    int-to-char p1, v2

    .line 21
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method private b(Lcom/huawei/hms/scankit/p/ab;[II[[I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    invoke-static {p1, p3, p2}, Lcom/huawei/hms/scankit/p/Ab;->a(Lcom/huawei/hms/scankit/p/ab;I[I)V

    .line 2
    array-length p1, p4

    const p3, 0x3ee66666    # 0.45f

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 3
    aget-object v2, p4, v1

    const v3, 0x3f333333    # 0.7f

    .line 4
    invoke-static {p2, v2, v3}, Lcom/huawei/hms/scankit/p/Ab;->a([I[IF)F

    move-result v2

    cmpg-float v3, v2, p3

    if-gez v3, :cond_0

    move v0, v1

    move p3, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ltz v0, :cond_2

    return v0

    .line 5
    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v0, 0x6

    new-array v0, v0, [C

    const/4 v1, 0x1

    const/4 v2, 0x7

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p0, v1, v2, v0, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v4, 0xc

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x5

    .line 9
    aget-char v5, v0, v4

    const-string v6, "00000"

    const-string v7, "0000"

    const/4 v8, 0x3

    const/4 v9, 0x2

    packed-switch v5, :pswitch_data_0

    .line 10
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    const/4 v4, 0x4

    .line 13
    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    aget-char v0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 16
    :pswitch_1
    invoke-virtual {v1, v0, v3, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, v0, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 19
    :pswitch_2
    invoke-virtual {v1, v0, v3, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1, v0, v9, v8}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 23
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x8

    if-lt v0, v3, :cond_0

    .line 24
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected a(Lcom/huawei/hms/scankit/p/ab;[ILjava/lang/StringBuilder;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 2
    iget-object v2, v0, Lcom/huawei/hms/scankit/p/Gb;->j:[I

    const/4 v3, 0x0

    .line 3
    aput v3, v2, v3

    const/4 v4, 0x1

    .line 4
    aput v3, v2, v4

    const/4 v5, 0x2

    .line 5
    aput v3, v2, v5

    const/4 v6, 0x3

    .line 6
    aput v3, v2, v6

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v7

    .line 8
    aget v8, p2, v4

    const v10, 0x461c4000    # 10000.0f

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x6

    if-ge v11, v14, :cond_5

    if-ge v8, v7, :cond_5

    .line 9
    sget-object v14, Lcom/huawei/hms/scankit/p/Fb;->e:[[I

    move-object/from16 v15, p1

    invoke-direct {v0, v15, v2, v8, v14}, Lcom/huawei/hms/scankit/p/Gb;->b(Lcom/huawei/hms/scankit/p/ab;[II[[I)I

    move-result v14

    .line 10
    rem-int/lit8 v16, v14, 0xa

    add-int/lit8 v9, v16, 0x30

    int-to-char v9, v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v9, 0x0

    const/16 v16, 0x0

    .line 11
    :goto_1
    sget-object v17, Lcom/huawei/hms/scankit/p/Fb;->e:[[I

    aget-object v6, v17, v14

    array-length v6, v6

    if-ge v9, v6, :cond_0

    .line 12
    aget-object v6, v17, v14

    aget v6, v6, v9

    int-to-float v6, v6

    add-float v16, v16, v6

    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x3

    goto :goto_1

    .line 13
    :cond_0
    aget v6, v2, v3

    aget v9, v2, v4

    add-int/2addr v6, v9

    aget v9, v2, v5

    add-int/2addr v6, v9

    const/4 v9, 0x3

    aget v17, v2, v9

    add-int v6, v6, v17

    int-to-float v6, v6

    div-float v6, v6, v16

    cmpl-float v16, v6, v13

    if-lez v16, :cond_1

    move v13, v6

    :cond_1
    cmpg-float v16, v6, v10

    if-gez v16, :cond_2

    move v10, v6

    .line 14
    :cond_2
    array-length v6, v2

    :goto_2
    if-ge v3, v6, :cond_3

    aget v17, v2, v3

    add-int v8, v8, v17

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/16 v3, 0xa

    if-lt v14, v3, :cond_4

    rsub-int/lit8 v3, v11, 0x5

    shl-int v3, v4, v3

    or-int/2addr v12, v3

    :cond_4
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x3

    goto :goto_0

    :cond_5
    div-float/2addr v13, v10

    float-to-double v2, v13

    const-wide v4, 0x40071eb851eb851fL    # 2.89

    cmpl-double v6, v2, v4

    if-gtz v6, :cond_6

    .line 15
    invoke-static {v1, v12}, Lcom/huawei/hms/scankit/p/Gb;->a(Ljava/lang/StringBuilder;I)V

    return v8

    .line 16
    :cond_6
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v1

    throw v1
.end method

.method a()Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;
    .locals 1

    .line 23
    sget-object v0, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->m:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    return-object v0
.end method

.method public a(IILcom/huawei/hms/scankit/p/ab;)Z
    .locals 2

    sub-int p1, p2, p1

    add-int/2addr p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p3, p2, p1, v0, v1}, Lcom/huawei/hms/scankit/p/ab;->a(IIZZ)Z

    move-result p1

    return p1
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 18
    invoke-static {p1}, Lcom/huawei/hms/scankit/p/Gb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/huawei/hms/scankit/p/Fb;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method a([I[I)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 v0, 0x1

    .line 24
    aget v1, p1, v0

    const/4 v2, 0x0

    aget v3, p1, v2

    sub-int/2addr v1, v3

    int-to-double v3, v1

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    div-double/2addr v3, v5

    .line 25
    aget v1, p2, v0

    aget v5, p2, v2

    sub-int/2addr v1, v5

    int-to-double v5, v1

    const-wide/high16 v7, 0x4018000000000000L    # 6.0

    div-double/2addr v5, v7

    .line 26
    aget v1, p2, v0

    aget v7, p2, v2

    sub-int/2addr v1, v7

    aget v7, p1, v0

    aget v8, p1, v2

    sub-int/2addr v7, v8

    add-int/2addr v1, v7

    int-to-double v7, v1

    const-wide/high16 v9, 0x4022000000000000L    # 9.0

    div-double/2addr v7, v9

    .line 27
    aget p2, p2, v0

    aget p1, p1, v2

    sub-int/2addr p2, p1

    int-to-double p1, p2

    div-double/2addr p1, v7

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-int p2, p1

    add-int/lit8 p2, p2, -0x33

    .line 28
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-double p1, p1

    const-wide v7, 0x4024666666666667L    # 10.200000000000001

    cmpg-double v1, p1, v7

    if-gtz v1, :cond_0

    div-double/2addr v3, v5

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, v3

    .line 29
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    const-wide v3, 0x3fc999999999999aL    # 0.2

    cmpg-double v1, p1, v3

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected a(Lcom/huawei/hms/scankit/p/ab;I)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 17
    sget-object v0, Lcom/huawei/hms/scankit/p/Gb;->h:[I

    const/4 v1, 0x1

    invoke-static {p1, p2, v1, v0}, Lcom/huawei/hms/scankit/p/Fb;->a(Lcom/huawei/hms/scankit/p/ab;IZ[I)[I

    move-result-object p1

    return-object p1
.end method
