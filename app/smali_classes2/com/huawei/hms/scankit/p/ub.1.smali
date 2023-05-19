.class public final Lcom/huawei/hms/scankit/p/ub;
.super Lcom/huawei/hms/scankit/p/Ab;
.source "Code93Reader.java"


# static fields
.field private static final a:[C

.field public static final b:[I

.field private static final c:I


# instance fields
.field private final d:Ljava/lang/StringBuilder;

.field private final e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    .line 1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/huawei/hms/scankit/p/ub;->a:[C

    const/16 v0, 0x30

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/hms/scankit/p/ub;->b:[I

    const/16 v1, 0x2f

    .line 3
    aget v0, v0, v1

    sput v0, Lcom/huawei/hms/scankit/p/ub;->c:I

    return-void

    :array_0
    .array-data 4
        0x114
        0x148
        0x144
        0x142
        0x128
        0x124
        0x122
        0x150
        0x112
        0x10a
        0x1a8
        0x1a4
        0x1a2
        0x194
        0x192
        0x18a
        0x168
        0x164
        0x162
        0x134
        0x11a
        0x158
        0x14c
        0x146
        0x12c
        0x116
        0x1b4
        0x1b2
        0x1ac
        0x1a6
        0x196
        0x19a
        0x16c
        0x166
        0x136
        0x13a
        0x12e
        0x1d4
        0x1d2
        0x1ca
        0x16e
        0x176
        0x1ae
        0x126
        0x1da
        0x1d6
        0x132
        0x15e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Ab;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/p/ub;->d:Ljava/lang/StringBuilder;

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 3
    iput-object v0, p0, Lcom/huawei/hms/scankit/p/ub;->e:[I

    return-void
.end method

.method private static a(CC)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/16 v0, 0x4f

    const/16 v1, 0x5a

    const/16 v2, 0x41

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto/16 :goto_1

    :pswitch_0
    if-lt p1, v2, :cond_0

    if-gt p1, v1, :cond_0

    add-int/lit8 p1, p1, 0x20

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :pswitch_1
    if-lt p1, v2, :cond_1

    if-gt p1, v0, :cond_1

    add-int/lit8 p1, p1, -0x20

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    const/16 p0, 0x3a

    goto :goto_1

    .line 48
    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :pswitch_2
    if-lt p1, v2, :cond_3

    const/16 p0, 0x45

    if-gt p1, p0, :cond_3

    add-int/lit8 p1, p1, -0x26

    goto :goto_0

    :cond_3
    const/16 p0, 0x46

    if-lt p1, p0, :cond_4

    const/16 p0, 0x4a

    if-gt p1, p0, :cond_4

    add-int/lit8 p1, p1, -0xb

    goto :goto_0

    :cond_4
    const/16 p0, 0x4b

    if-lt p1, p0, :cond_5

    if-gt p1, v0, :cond_5

    add-int/lit8 p1, p1, 0x10

    goto :goto_0

    :cond_5
    const/16 p0, 0x50

    if-lt p1, p0, :cond_6

    const/16 p0, 0x53

    if-gt p1, p0, :cond_6

    add-int/lit8 p1, p1, 0x2b

    goto :goto_0

    :cond_6
    const/16 p0, 0x54

    if-lt p1, p0, :cond_7

    if-gt p1, v1, :cond_7

    const/16 p0, 0x7f

    goto :goto_1

    .line 49
    :cond_7
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :pswitch_3
    if-lt p1, v2, :cond_8

    if-gt p1, v1, :cond_8

    add-int/lit8 p1, p1, -0x40

    :goto_0
    int-to-char p0, p1

    goto :goto_1

    .line 50
    :cond_8
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(I)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    :goto_0
    sget-object v1, Lcom/huawei/hms/scankit/p/ub;->b:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 44
    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 45
    sget-object p0, Lcom/huawei/hms/scankit/p/ub;->a:[C

    aget-char p0, p0, v0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method private static a(Ljava/lang/CharSequence;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 51
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/lit8 v1, v0, -0x2

    const/16 v2, 0x14

    .line 52
    invoke-static {p0, v1, v2}, Lcom/huawei/hms/scankit/p/ub;->a(Ljava/lang/CharSequence;II)V

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0xf

    .line 53
    invoke-static {p0, v0, v1}, Lcom/huawei/hms/scankit/p/ub;->a(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 54
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const-string v5, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    mul-int v4, v4, v3

    add-int/2addr v2, v4

    add-int/2addr v3, v1

    if-le v3, p2, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 55
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    sget-object p1, Lcom/huawei/hms/scankit/p/ub;->a:[C

    rem-int/lit8 v2, v2, 0x2f

    aget-char p1, p1, v2

    if-ne p0, p1, :cond_2

    return-void

    .line 56
    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method private a(Lcom/huawei/hms/scankit/p/ab;)[I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 27
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v0

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v1}, Lcom/huawei/hms/scankit/p/ab;->b(I)I

    move-result v2

    .line 29
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/ub;->e:[I

    invoke-static {v3, v1}, Ljava/util/Arrays;->fill([II)V

    .line 30
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/ub;->e:[I

    .line 31
    array-length v4, v3

    move v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 32
    invoke-virtual {p1, v2}, Lcom/huawei/hms/scankit/p/ab;->a(I)Z

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v6, :cond_1

    if-ltz v7, :cond_0

    .line 33
    array-length v8, v3

    if-ge v7, v8, :cond_0

    .line 34
    aget v8, v3, v7

    add-int/2addr v8, v9

    aput v8, v3, v7

    goto :goto_2

    .line 35
    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1

    :cond_1
    add-int/lit8 v8, v4, -0x1

    if-ne v7, v8, :cond_3

    .line 36
    invoke-static {v3}, Lcom/huawei/hms/scankit/p/ub;->b([I)I

    move-result v8

    sget v10, Lcom/huawei/hms/scankit/p/ub;->c:I

    const/4 v11, 0x2

    if-ne v8, v10, :cond_2

    new-array p1, v11, [I

    aput v5, p1, v1

    aput v2, p1, v9

    return-object p1

    .line 37
    :cond_2
    aget v8, v3, v1

    aget v10, v3, v9

    add-int/2addr v8, v10

    add-int/2addr v5, v8

    add-int/lit8 v8, v7, -0x1

    .line 38
    invoke-static {v3, v11, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    aput v1, v3, v8

    .line 40
    aput v1, v3, v7

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 41
    :goto_1
    aput v9, v3, v7

    xor-int/lit8 v6, v6, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_4
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
.end method

.method private static b([I)I
    .locals 8

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v4, p0, v2

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2
    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    .line 3
    aget v5, p0, v2

    int-to-float v5, v5

    const/high16 v6, 0x41100000    # 9.0f

    mul-float v5, v5, v6

    int-to-float v6, v3

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_4

    const/4 v7, 0x4

    if-le v5, v7, :cond_1

    goto :goto_3

    :cond_1
    and-int/lit8 v7, v2, 0x1

    if-nez v7, :cond_2

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v5, :cond_3

    shl-int/lit8 v4, v4, 0x1

    or-int/2addr v4, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    shl-int/2addr v4, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_3
    const/4 p0, -0x1

    return p0

    :cond_5
    return v4
.end method

.method private static b(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 6
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-lt v3, v4, :cond_1

    const/16 v4, 0x64

    if-gt v3, v4, :cond_1

    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 7
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 8
    invoke-static {v3, v4}, Lcom/huawei/hms/scankit/p/ub;->a(CC)C

    move-result v3

    .line 9
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 10
    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    .line 11
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(ILcom/huawei/hms/scankit/p/ab;Ljava/util/Map;)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/huawei/hms/scankit/p/ab;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;)",
            "Lcom/huawei/hms/scankit/aiscan/common/x;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/huawei/hms/scankit/p/ub;->a(Lcom/huawei/hms/scankit/p/ab;)[I

    move-result-object p3

    const/4 v0, 0x1

    .line 2
    aget v1, p3, v0

    invoke-virtual {p2, v1}, Lcom/huawei/hms/scankit/p/ab;->b(I)I

    move-result v1

    .line 3
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/ub;->e:[I

    const/4 v4, 0x0

    .line 5
    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([II)V

    .line 6
    iget-object v5, p0, Lcom/huawei/hms/scankit/p/ub;->d:Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8
    :goto_0
    invoke-static {p2, v1, v3}, Lcom/huawei/hms/scankit/p/Ab;->a(Lcom/huawei/hms/scankit/p/ab;I[I)V

    .line 9
    invoke-static {v3}, Lcom/huawei/hms/scankit/p/ub;->b([I)I

    move-result v6

    if-ltz v6, :cond_5

    .line 10
    invoke-static {v6}, Lcom/huawei/hms/scankit/p/ub;->a(I)C

    move-result v6

    .line 11
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    array-length v7, v3

    move v9, v1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget v10, v3, v8

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {p2, v9}, Lcom/huawei/hms/scankit/p/ab;->b(I)I

    move-result v7

    const/16 v8, 0x2a

    if-ne v6, v8, :cond_4

    .line 14
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 15
    array-length v6, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    if-ge v8, v6, :cond_1

    aget v10, v3, v8

    add-int/2addr v9, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    if-eq v7, v2, :cond_3

    .line 16
    invoke-virtual {p2, v7}, Lcom/huawei/hms/scankit/p/ab;->a(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 17
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v2, 0x2

    if-lt p2, v2, :cond_2

    .line 18
    invoke-static {v5}, Lcom/huawei/hms/scankit/p/ub;->a(Ljava/lang/CharSequence;)V

    .line 19
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 20
    invoke-static {v5}, Lcom/huawei/hms/scankit/p/ub;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 21
    aget p3, p3, v4

    int-to-float p3, p3

    mul-int/lit8 v9, v9, 0xa

    .line 22
    div-int/lit8 v9, v9, 0x9

    add-int/2addr v1, v9

    int-to-float v1, v1

    .line 23
    new-instance v3, Lcom/huawei/hms/scankit/aiscan/common/x;

    new-array v2, v2, [Lcom/huawei/hms/scankit/aiscan/common/z;

    new-instance v5, Lcom/huawei/hms/scankit/aiscan/common/z;

    int-to-float p1, p1

    invoke-direct {v5, p3, p1}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object v5, v2, v4

    new-instance p3, Lcom/huawei/hms/scankit/aiscan/common/z;

    invoke-direct {p3, v1, p1}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object p3, v2, v0

    sget-object p1, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->d:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/4 p3, 0x0

    invoke-direct {v3, p2, p3, v2, p1}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(Ljava/lang/String;[B[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)V

    return-object v3

    .line 24
    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1

    .line 25
    :cond_3
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1

    :cond_4
    move v1, v7

    goto/16 :goto_0

    .line 26
    :cond_5
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
.end method
