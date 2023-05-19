.class public final Lcom/huawei/hms/scankit/p/tb;
.super Lcom/huawei/hms/scankit/p/Ab;
.source "Code39Reader.java"


# static fields
.field public static final a:[I


# instance fields
.field private final b:Z

.field private final c:Z

.field private final d:Ljava/lang/StringBuilder;

.field private final e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2b

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/hms/scankit/p/tb;->a:[I

    return-void

    :array_0
    .array-data 4
        0x34
        0x121
        0x61
        0x160
        0x31
        0x130
        0x70
        0x25
        0x124
        0x64
        0x109
        0x49
        0x148
        0x19
        0x118
        0x58
        0xd
        0x10c
        0x4c
        0x1c
        0x103
        0x43
        0x142
        0x13
        0x112
        0x52
        0x7
        0x106
        0x46
        0x16
        0x181
        0xc1
        0x1c0
        0x91
        0x190
        0xd0
        0x85
        0x184
        0xc4
        0xa8
        0xa2
        0x8a
        0x2a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/p/tb;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/huawei/hms/scankit/p/tb;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/Ab;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/tb;->b:Z

    .line 5
    iput-boolean p2, p0, Lcom/huawei/hms/scankit/p/tb;->c:Z

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    const/16 p2, 0x14

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/tb;->d:Ljava/lang/StringBuilder;

    const/16 p1, 0x9

    new-array p1, p1, [I

    .line 7
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/tb;->e:[I

    return-void
.end method

.method private static a(CC)C
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/16 v0, 0x40

    const/4 v1, 0x0

    const/16 v2, 0x5a

    const/16 v3, 0x41

    const/16 v4, 0x24

    if-eq p0, v4, :cond_f

    const/16 v4, 0x25

    const/16 v5, 0x4f

    const/16 v6, 0x2b

    if-eq p0, v4, :cond_5

    if-eq p0, v6, :cond_3

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_0
    if-lt p1, v3, :cond_1

    if-gt p1, v5, :cond_1

    add-int/lit8 p1, p1, -0x20

    goto/16 :goto_2

    :cond_1
    if-ne p1, v2, :cond_2

    const/16 v0, 0x3a

    goto/16 :goto_3

    .line 59
    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_3
    if-lt p1, v3, :cond_4

    if-gt p1, v2, :cond_4

    add-int/lit8 p1, p1, 0x20

    goto :goto_2

    .line 60
    :cond_4
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_5
    if-lt p1, v3, :cond_6

    const/16 p0, 0x45

    if-gt p1, p0, :cond_6

    add-int/lit8 p1, p1, -0x26

    goto :goto_2

    :cond_6
    const/16 p0, 0x46

    if-lt p1, p0, :cond_7

    const/16 p0, 0x4a

    if-gt p1, p0, :cond_7

    add-int/lit8 p1, p1, -0xb

    goto :goto_2

    :cond_7
    const/16 p0, 0x4b

    if-lt p1, p0, :cond_8

    if-gt p1, v5, :cond_8

    add-int/lit8 p1, p1, 0x10

    goto :goto_2

    :cond_8
    const/16 p0, 0x50

    if-lt p1, p0, :cond_9

    const/16 p0, 0x54

    if-gt p1, p0, :cond_9

    add-int/2addr p1, v6

    goto :goto_2

    :cond_9
    const/16 p0, 0x55

    if-ne p1, p0, :cond_a

    goto :goto_0

    :cond_a
    const/16 p0, 0x56

    if-ne p1, p0, :cond_b

    goto :goto_3

    :cond_b
    const/16 p0, 0x57

    if-ne p1, p0, :cond_c

    const/16 v0, 0x60

    goto :goto_3

    :cond_c
    const/16 p0, 0x58

    if-eq p1, p0, :cond_e

    const/16 p0, 0x59

    if-eq p1, p0, :cond_e

    if-ne p1, v2, :cond_d

    goto :goto_1

    .line 61
    :cond_d
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_e
    :goto_1
    const/16 v0, 0x7f

    goto :goto_3

    :cond_f
    if-lt p1, v3, :cond_10

    if-gt p1, v2, :cond_10

    sub-int/2addr p1, v0

    :goto_2
    int-to-char v0, p1

    :goto_3
    return v0

    .line 62
    :cond_10
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method private static a(I)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    const/4 v0, 0x0

    .line 47
    :goto_0
    sget-object v1, Lcom/huawei/hms/scankit/p/tb;->a:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 48
    aget v1, v1, v0

    if-ne v1, p0, :cond_0

    const-string p0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    .line 49
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x94

    if-ne p0, v0, :cond_2

    const/16 p0, 0x2a

    return p0

    .line 50
    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method private a(Ljava/lang/StringBuilder;[IIII)Lcom/huawei/hms/scankit/aiscan/common/x;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 19
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/tb;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const-string v5, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%"

    if-ge v3, v0, :cond_0

    .line 21
    iget-object v6, p0, Lcom/huawei/hms/scankit/p/tb;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    rem-int/lit8 v4, v4, 0x2b

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_1

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 24
    :cond_1
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1

    .line 25
    :cond_2
    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 26
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/tb;->c:Z

    if-eqz v0, :cond_3

    .line 27
    invoke-static {p1}, Lcom/huawei/hms/scankit/p/tb;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 28
    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    :goto_2
    aget p2, p2, v2

    int-to-float p2, p2

    add-int/2addr p3, p4

    int-to-float p3, p3

    .line 30
    new-instance p4, Lcom/huawei/hms/scankit/aiscan/common/x;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huawei/hms/scankit/aiscan/common/z;

    new-instance v3, Lcom/huawei/hms/scankit/aiscan/common/z;

    int-to-float p5, p5

    invoke-direct {v3, p2, p5}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object v3, v0, v2

    new-instance p2, Lcom/huawei/hms/scankit/aiscan/common/z;

    invoke-direct {p2, p3, p5}, Lcom/huawei/hms/scankit/aiscan/common/z;-><init>(FF)V

    aput-object p2, v0, v1

    sget-object p2, Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;->c:Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;

    const/4 p3, 0x0

    invoke-direct {p4, p1, p3, v0, p2}, Lcom/huawei/hms/scankit/aiscan/common/x;-><init>(Ljava/lang/String;[B[Lcom/huawei/hms/scankit/aiscan/common/z;Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;)V

    return-object p4

    .line 31
    :cond_4
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
.end method

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 51
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 53
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_1

    const/16 v4, 0x24

    if-eq v3, v4, :cond_1

    const/16 v4, 0x25

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2f

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 54
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 55
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 56
    invoke-static {v3, v4}, Lcom/huawei/hms/scankit/p/tb;->a(CC)C

    move-result v3

    .line 57
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lcom/huawei/hms/scankit/p/ab;[I)[I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 32
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v0

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p0, v1}, Lcom/huawei/hms/scankit/p/ab;->b(I)I

    move-result v2

    .line 34
    array-length v3, p1

    move v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 35
    invoke-virtual {p0, v2}, Lcom/huawei/hms/scankit/p/ab;->a(I)Z

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v5, :cond_1

    if-ltz v6, :cond_0

    .line 36
    array-length v7, p1

    if-ge v6, v7, :cond_0

    .line 37
    aget v7, p1, v6

    add-int/2addr v7, v8

    aput v7, p1, v6

    goto :goto_2

    .line 38
    :cond_0
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0

    :cond_1
    add-int/lit8 v7, v3, -0x1

    if-ne v6, v7, :cond_3

    .line 39
    invoke-static {p1}, Lcom/huawei/hms/scankit/p/tb;->c([I)I

    move-result v7

    const/16 v9, 0x94

    const/4 v10, 0x2

    if-ne v7, v9, :cond_2

    sub-int v7, v2, v4

    div-int/lit8 v7, v7, 0x5

    sub-int v7, v4, v7

    .line 40
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {p0, v7, v4, v1, v8}, Lcom/huawei/hms/scankit/p/ab;->a(IIZZ)Z

    move-result v7

    if-eqz v7, :cond_2

    new-array p0, v10, [I

    aput v4, p0, v1

    aput v2, p0, v8

    return-object p0

    .line 41
    :cond_2
    aget v7, p1, v1

    aget v9, p1, v8

    add-int/2addr v7, v9

    add-int/2addr v4, v7

    add-int/lit8 v7, v6, -0x1

    .line 42
    invoke-static {p1, v10, p1, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    aput v1, p1, v7

    .line 44
    aput v1, p1, v6

    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 45
    :goto_1
    aput v8, p1, v6

    xor-int/lit8 v5, v5, 0x1

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_4
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p0

    throw p0
.end method

.method private static b([I)Z
    .locals 6

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    .line 2
    aget v5, p0, v3

    if-ge v5, v2, :cond_0

    move v2, v5

    :cond_0
    if-le v5, v4, :cond_1

    move v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_2
    div-int/2addr v4, v2

    const/4 p0, 0x6

    if-le v4, p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private static c([I)I
    .locals 11

    .line 1
    array-length v0, p0

    .line 2
    invoke-static {p0}, Lcom/huawei/hms/scankit/p/tb;->b([I)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    const v4, 0x7fffffff

    .line 3
    array-length v5, p0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget v7, p0, v6

    if-ge v7, v4, :cond_1

    if-le v7, v3, :cond_1

    move v4, v7

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    if-ge v3, v0, :cond_4

    .line 4
    aget v8, p0, v3

    if-le v8, v4, :cond_3

    add-int/lit8 v9, v0, -0x1

    sub-int/2addr v9, v3

    const/4 v10, 0x1

    shl-int v9, v10, v9

    or-int/2addr v7, v9

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v6, v8

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x3

    if-ne v5, v3, :cond_7

    :goto_3
    if-ge v1, v0, :cond_6

    if-lez v5, :cond_6

    .line 5
    aget v3, p0, v1

    if-le v3, v4, :cond_5

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v3, v3, 0x2

    if-lt v3, v6, :cond_5

    return v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return v7

    :cond_7
    if-gt v5, v3, :cond_8

    return v2

    :cond_8
    move v3, v4

    goto :goto_0
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
    iget-object p3, p0, Lcom/huawei/hms/scankit/p/tb;->e:[I

    const/4 v0, 0x0

    .line 2
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([II)V

    .line 3
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/tb;->d:Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5
    invoke-static {p2, p3}, Lcom/huawei/hms/scankit/p/tb;->a(Lcom/huawei/hms/scankit/p/ab;[I)[I

    move-result-object v3

    const/4 v1, 0x1

    .line 6
    aget v4, v3, v1

    invoke-virtual {p2, v4}, Lcom/huawei/hms/scankit/p/ab;->b(I)I

    move-result v4

    .line 7
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v5

    .line 8
    :goto_0
    invoke-static {p2, v4, p3}, Lcom/huawei/hms/scankit/p/Ab;->a(Lcom/huawei/hms/scankit/p/ab;I[I)V

    .line 9
    invoke-static {p3}, Lcom/huawei/hms/scankit/p/tb;->c([I)I

    move-result v6

    if-ltz v6, :cond_5

    .line 10
    invoke-static {v6}, Lcom/huawei/hms/scankit/p/tb;->a(I)C

    move-result v6

    .line 11
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 12
    array-length v7, p3

    move v9, v4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget v10, p3, v8

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
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 15
    array-length p2, p3

    const/4 v6, 0x0

    :goto_2
    if-ge v0, p2, :cond_1

    aget v1, p3, v0

    add-int/2addr v6, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    sub-int p2, v7, v4

    sub-int/2addr p2, v6

    if-eq v7, v5, :cond_3

    mul-int/lit8 p2, p2, 0x5

    if-lt p2, v6, :cond_2

    goto :goto_3

    .line 16
    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1

    :cond_3
    :goto_3
    move-object v1, p0

    move v5, v6

    move v6, p1

    .line 17
    invoke-direct/range {v1 .. v6}, Lcom/huawei/hms/scankit/p/tb;->a(Ljava/lang/StringBuilder;[IIII)Lcom/huawei/hms/scankit/aiscan/common/x;

    move-result-object p1

    return-object p1

    :cond_4
    move v4, v7

    goto :goto_0

    .line 18
    :cond_5
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object p1

    throw p1
.end method
