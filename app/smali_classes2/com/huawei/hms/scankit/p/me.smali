.class public final Lcom/huawei/hms/scankit/p/me;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x60

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/hms/scankit/p/me;->a:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static a(I)I
    .locals 2

    .line 52
    sget-object v0, Lcom/huawei/hms/scankit/p/me;->a:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 53
    aget p0, v0, p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/qc;Lcom/huawei/hms/scankit/p/zc;Lcom/huawei/hms/scankit/p/je;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/hmsscankit/WriterException;
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 67
    invoke-static {p0, p1, p2, v2, p3}, Lcom/huawei/hms/scankit/p/oe;->a(Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/qc;Lcom/huawei/hms/scankit/p/zc;ILcom/huawei/hms/scankit/p/je;)V

    .line 68
    invoke-static {p3}, Lcom/huawei/hms/scankit/p/me;->a(Lcom/huawei/hms/scankit/p/je;)I

    move-result v3

    if-ge v3, v0, :cond_0

    move v1, v2

    move v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static a(Lcom/huawei/hms/scankit/p/je;)I
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/huawei/hms/scankit/p/ne;->a(Lcom/huawei/hms/scankit/p/je;)I

    move-result v0

    .line 2
    invoke-static {p0}, Lcom/huawei/hms/scankit/p/ne;->b(Lcom/huawei/hms/scankit/p/je;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-static {p0}, Lcom/huawei/hms/scankit/p/ne;->c(Lcom/huawei/hms/scankit/p/je;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    invoke-static {p0}, Lcom/huawei/hms/scankit/p/ne;->d(Lcom/huawei/hms/scankit/p/je;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static a(Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/zc;)I
    .locals 0

    .line 51
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result p1

    invoke-virtual {p0, p3}, Lcom/huawei/hms/scankit/p/wc;->a(Lcom/huawei/hms/scankit/p/zc;)I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method static a(Lcom/huawei/hms/scankit/p/ab;III)Lcom/huawei/hms/scankit/p/ab;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/hmsscankit/WriterException;
        }
    .end annotation

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/huawei/hms/scankit/p/ab;->e()I

    move-result v0

    if-ne v0, v7, :cond_9

    .line 98
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    if-ge v11, v8, :cond_0

    const/4 v0, 0x1

    new-array v15, v0, [I

    new-array v5, v0, [I

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v11

    move-object v4, v15

    move-object/from16 v16, v5

    .line 99
    invoke-static/range {v0 .. v5}, Lcom/huawei/hms/scankit/p/me;->a(IIII[I[I)V

    .line 100
    aget v0, v15, v10

    .line 101
    new-array v1, v0, [B

    mul-int/lit8 v2, v12, 0x8

    move-object/from16 v3, p0

    .line 102
    invoke-virtual {v3, v2, v1, v10, v0}, Lcom/huawei/hms/scankit/p/ab;->a(I[BII)V

    .line 103
    aget v2, v16, v10

    invoke-static {v1, v2}, Lcom/huawei/hms/scankit/p/me;->a([BI)[B

    move-result-object v2

    .line 104
    new-instance v4, Lcom/huawei/hms/scankit/p/ie;

    invoke-direct {v4, v1, v2}, Lcom/huawei/hms/scankit/p/ie;-><init>([B[B)V

    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 106
    array-length v0, v2

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 107
    aget v0, v15, v10

    add-int/2addr v12, v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    if-ne v7, v12, :cond_8

    .line 108
    new-instance v0, Lcom/huawei/hms/scankit/p/ab;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/ab;-><init>()V

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x8

    if-ge v1, v14, :cond_3

    .line 109
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hms/scankit/p/ie;

    .line 110
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/ie;->a()[B

    move-result-object v4

    .line 111
    array-length v5, v4

    if-ge v1, v5, :cond_1

    .line 112
    aget-byte v4, v4, v1

    invoke-virtual {v0, v4, v2}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    if-ge v10, v13, :cond_6

    .line 113
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hms/scankit/p/ie;

    .line 114
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/ie;->b()[B

    move-result-object v3

    .line 115
    array-length v4, v3

    if-ge v10, v4, :cond_4

    .line 116
    aget-byte v3, v3, v10

    invoke-virtual {v0, v3, v2}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    goto :goto_4

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 117
    :cond_6
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ab;->e()I

    move-result v1

    if-ne v6, v1, :cond_7

    return-object v0

    .line 118
    :cond_7
    new-instance v1, Lcom/huawei/hms/hmsscankit/WriterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interleaving error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ab;->e()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " differ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_8
    new-instance v0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_9
    new-instance v0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/lang/String;Lcom/huawei/hms/scankit/p/qc;Ljava/util/Map;)Lcom/huawei/hms/scankit/p/pe;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/scankit/p/qc;",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/p/ke;",
            "*>;)",
            "Lcom/huawei/hms/scankit/p/pe;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/hmsscankit/WriterException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 5
    sget-object v2, Lcom/huawei/hms/scankit/p/ke;->b:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 6
    sget-object v3, Lcom/huawei/hms/scankit/p/ke;->b:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, "ISO-8859-1"

    .line 7
    :goto_1
    invoke-static {p0, v3}, Lcom/huawei/hms/scankit/p/me;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/scankit/p/wc;

    move-result-object v4

    .line 8
    new-instance v5, Lcom/huawei/hms/scankit/p/ab;

    invoke-direct {v5}, Lcom/huawei/hms/scankit/p/ab;-><init>()V

    .line 9
    sget-object v6, Lcom/huawei/hms/scankit/p/wc;->e:Lcom/huawei/hms/scankit/p/wc;

    if-ne v4, v6, :cond_2

    if-eqz v2, :cond_2

    .line 10
    invoke-static {v3}, Lcom/huawei/hms/scankit/aiscan/common/c;->a(Ljava/lang/String;)Lcom/huawei/hms/scankit/aiscan/common/c;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 11
    invoke-static {v2, v5}, Lcom/huawei/hms/scankit/p/me;->a(Lcom/huawei/hms/scankit/aiscan/common/c;Lcom/huawei/hms/scankit/p/ab;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 12
    sget-object v2, Lcom/huawei/hms/scankit/p/ke;->l:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 13
    sget-object v0, Lcom/huawei/hms/scankit/p/ke;->l:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    sget-object v0, Lcom/huawei/hms/scankit/p/wc;->h:Lcom/huawei/hms/scankit/p/wc;

    invoke-static {v0, v5}, Lcom/huawei/hms/scankit/p/me;->a(Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;)V

    .line 15
    :cond_4
    invoke-static {v4, v5}, Lcom/huawei/hms/scankit/p/me;->a(Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;)V

    .line 16
    new-instance v0, Lcom/huawei/hms/scankit/p/ab;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/ab;-><init>()V

    .line 17
    invoke-static {p0, v4, v0, v3}, Lcom/huawei/hms/scankit/p/me;->a(Ljava/lang/String;Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    .line 18
    sget-object v1, Lcom/huawei/hms/scankit/p/ke;->k:Lcom/huawei/hms/scankit/p/ke;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19
    :try_start_0
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 20
    invoke-static {p2}, Lcom/huawei/hms/scankit/p/zc;->c(I)Lcom/huawei/hms/scankit/p/zc;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    invoke-static {v4, v5, v0, p2}, Lcom/huawei/hms/scankit/p/me;->a(Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/zc;)I

    move-result v1

    .line 22
    invoke-static {v1, p2, p1}, Lcom/huawei/hms/scankit/p/me;->a(ILcom/huawei/hms/scankit/p/zc;Lcom/huawei/hms/scankit/p/qc;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 23
    :cond_5
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string p1, "Data too big for requested version"

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    .line 24
    throw p0

    .line 25
    :cond_6
    invoke-static {p1, v4, v5, v0}, Lcom/huawei/hms/scankit/p/me;->a(Lcom/huawei/hms/scankit/p/qc;Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/ab;)Lcom/huawei/hms/scankit/p/zc;

    move-result-object p2

    .line 26
    :goto_3
    new-instance v1, Lcom/huawei/hms/scankit/p/ab;

    invoke-direct {v1}, Lcom/huawei/hms/scankit/p/ab;-><init>()V

    .line 27
    invoke-virtual {v1, v5}, Lcom/huawei/hms/scankit/p/ab;->a(Lcom/huawei/hms/scankit/p/ab;)V

    if-ne v4, v6, :cond_7

    .line 28
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/ab;->e()I

    move-result p0

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 29
    :goto_4
    invoke-static {p0, p2, v4, v1}, Lcom/huawei/hms/scankit/p/me;->a(ILcom/huawei/hms/scankit/p/zc;Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;)V

    .line 30
    invoke-virtual {v1, v0}, Lcom/huawei/hms/scankit/p/ab;->a(Lcom/huawei/hms/scankit/p/ab;)V

    .line 31
    invoke-virtual {p2, p1}, Lcom/huawei/hms/scankit/p/zc;->a(Lcom/huawei/hms/scankit/p/qc;)Lcom/huawei/hms/scankit/p/zc$b;

    move-result-object p0

    .line 32
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/zc;->d()I

    move-result v0

    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/zc$b;->d()I

    move-result v2

    sub-int/2addr v0, v2

    .line 33
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/p/me;->a(ILcom/huawei/hms/scankit/p/ab;)V

    .line 34
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/zc;->d()I

    move-result v2

    .line 35
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/zc$b;->c()I

    move-result p0

    .line 36
    invoke-static {v1, v2, v0, p0}, Lcom/huawei/hms/scankit/p/me;->a(Lcom/huawei/hms/scankit/p/ab;III)Lcom/huawei/hms/scankit/p/ab;

    move-result-object p0

    .line 37
    new-instance v0, Lcom/huawei/hms/scankit/p/pe;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/pe;-><init>()V

    .line 38
    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/pe;->a(Lcom/huawei/hms/scankit/p/qc;)V

    .line 39
    invoke-virtual {v0, v4}, Lcom/huawei/hms/scankit/p/pe;->a(Lcom/huawei/hms/scankit/p/wc;)V

    .line 40
    invoke-virtual {v0, p2}, Lcom/huawei/hms/scankit/p/pe;->a(Lcom/huawei/hms/scankit/p/zc;)V

    .line 41
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/zc;->c()I

    move-result v1

    .line 42
    new-instance v2, Lcom/huawei/hms/scankit/p/je;

    invoke-direct {v2, v1, v1}, Lcom/huawei/hms/scankit/p/je;-><init>(II)V

    .line 43
    invoke-static {p0, p1, p2, v2}, Lcom/huawei/hms/scankit/p/me;->a(Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/qc;Lcom/huawei/hms/scankit/p/zc;Lcom/huawei/hms/scankit/p/je;)I

    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/pe;->b(I)V

    .line 45
    invoke-static {p0, p1, p2, v1, v2}, Lcom/huawei/hms/scankit/p/oe;->a(Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/qc;Lcom/huawei/hms/scankit/p/zc;ILcom/huawei/hms/scankit/p/je;)V

    .line 46
    invoke-virtual {v0, v2}, Lcom/huawei/hms/scankit/p/pe;->a(Lcom/huawei/hms/scankit/p/je;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/scankit/p/wc;
    .locals 5

    const-string v0, "Shift_JIS"

    .line 54
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/huawei/hms/scankit/p/me;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 55
    sget-object p0, Lcom/huawei/hms/scankit/p/wc;->g:Lcom/huawei/hms/scankit/p/wc;

    return-object p0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 57
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    const/16 v3, 0x39

    if-gt v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    .line 58
    :cond_1
    invoke-static {v2}, Lcom/huawei/hms/scankit/p/me;->a(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 59
    :cond_2
    sget-object p0, Lcom/huawei/hms/scankit/p/wc;->e:Lcom/huawei/hms/scankit/p/wc;

    return-object p0

    :cond_3
    if-eqz v0, :cond_4

    .line 60
    sget-object p0, Lcom/huawei/hms/scankit/p/wc;->c:Lcom/huawei/hms/scankit/p/wc;

    return-object p0

    :cond_4
    if-eqz v1, :cond_5

    .line 61
    sget-object p0, Lcom/huawei/hms/scankit/p/wc;->b:Lcom/huawei/hms/scankit/p/wc;

    return-object p0

    .line 62
    :cond_5
    sget-object p0, Lcom/huawei/hms/scankit/p/wc;->e:Lcom/huawei/hms/scankit/p/wc;

    return-object p0
.end method

.method private static a(ILcom/huawei/hms/scankit/p/qc;)Lcom/huawei/hms/scankit/p/zc;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/hmsscankit/WriterException;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x28

    if-gt v0, v1, :cond_1

    .line 69
    invoke-static {v0}, Lcom/huawei/hms/scankit/p/zc;->c(I)Lcom/huawei/hms/scankit/p/zc;

    move-result-object v1

    .line 70
    invoke-static {p0, v1, p1}, Lcom/huawei/hms/scankit/p/me;->a(ILcom/huawei/hms/scankit/p/zc;Lcom/huawei/hms/scankit/p/qc;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_1
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string p1, "Data too big"

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/huawei/hms/scankit/p/qc;Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/ab;)Lcom/huawei/hms/scankit/p/zc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/hmsscankit/WriterException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 47
    invoke-static {v0}, Lcom/huawei/hms/scankit/p/zc;->c(I)Lcom/huawei/hms/scankit/p/zc;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/huawei/hms/scankit/p/me;->a(Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/zc;)I

    move-result v0

    .line 48
    invoke-static {v0, p0}, Lcom/huawei/hms/scankit/p/me;->a(ILcom/huawei/hms/scankit/p/qc;)Lcom/huawei/hms/scankit/p/zc;

    move-result-object v0

    .line 49
    invoke-static {p1, p2, p3, v0}, Lcom/huawei/hms/scankit/p/me;->a(Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/ab;Lcom/huawei/hms/scankit/p/zc;)I

    move-result p1

    .line 50
    invoke-static {p1, p0}, Lcom/huawei/hms/scankit/p/me;->a(ILcom/huawei/hms/scankit/p/qc;)Lcom/huawei/hms/scankit/p/zc;

    move-result-object p0

    return-object p0
.end method

.method static a(IIII[I[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/hmsscankit/WriterException;
        }
    .end annotation

    if-ge p3, p2, :cond_4

    .line 86
    rem-int v0, p0, p2

    sub-int v1, p2, v0

    .line 87
    div-int v2, p0, p2

    add-int/lit8 v3, v2, 0x1

    .line 88
    div-int/2addr p1, p2

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v2, p1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_3

    add-int v5, v1, v0

    if-ne p2, v5, :cond_2

    add-int p2, p1, v2

    mul-int p2, p2, v1

    add-int v5, v4, v3

    mul-int v5, v5, v0

    add-int/2addr p2, v5

    if-ne p0, p2, :cond_1

    const/4 p0, 0x0

    if-ge p3, v1, :cond_0

    .line 89
    aput p1, p4, p0

    .line 90
    aput v2, p5, p0

    goto :goto_0

    .line 91
    :cond_0
    aput v4, p4, p0

    .line 92
    aput v3, p5, p0

    :goto_0
    return-void

    .line 93
    :cond_1
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string p1, "Total bytes mismatch"

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_2
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string p1, "RS blocks mismatch"

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_3
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string p1, "EC bytes mismatch"

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 96
    :cond_4
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string p1, "Block ID too large"

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(ILcom/huawei/hms/scankit/p/ab;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/hmsscankit/WriterException;
        }
    .end annotation

    mul-int/lit8 v0, p0, 0x8

    .line 76
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v1

    if-gt v1, v0, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 78
    invoke-virtual {p1, v1}, Lcom/huawei/hms/scankit/p/ab;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/16 v3, 0x8

    if-lez v2, :cond_1

    :goto_1
    if-ge v2, v3, :cond_1

    .line 80
    invoke-virtual {p1, v1}, Lcom/huawei/hms/scankit/p/ab;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 81
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->e()I

    move-result v2

    sub-int/2addr p0, v2

    :goto_2
    if-ge v1, p0, :cond_3

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_2

    const/16 v2, 0xec

    goto :goto_3

    :cond_2
    const/16 v2, 0x11

    .line 82
    :goto_3
    invoke-virtual {p1, v2, v3}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 83
    :cond_3
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result p0

    if-ne p0, v0, :cond_4

    return-void

    .line 84
    :cond_4
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string p1, "Bits size does not equal capacity"

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_5
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/ab;->d()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static a(ILcom/huawei/hms/scankit/p/zc;Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/hmsscankit/WriterException;
        }
    .end annotation

    .line 129
    invoke-virtual {p2, p1}, Lcom/huawei/hms/scankit/p/wc;->a(Lcom/huawei/hms/scankit/p/zc;)I

    move-result p1

    const/4 p2, 0x1

    shl-int v0, p2, p1

    if-ge p0, v0, :cond_0

    .line 130
    invoke-virtual {p3, p0, p1}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    return-void

    .line 131
    :cond_0
    new-instance p1, Lcom/huawei/hms/hmsscankit/WriterException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is bigger than "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, p2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lcom/huawei/hms/scankit/aiscan/common/c;Lcom/huawei/hms/scankit/p/ab;)V
    .locals 2

    .line 156
    sget-object v0, Lcom/huawei/hms/scankit/p/wc;->f:Lcom/huawei/hms/scankit/p/wc;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/wc;->a()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    .line 157
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/c;->a()I

    move-result p0

    const/16 v0, 0x8

    invoke-virtual {p1, p0, v0}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    return-void
.end method

.method static a(Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;)V
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/p/wc;->a()I

    move-result p0

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    return-void
.end method

.method static a(Ljava/lang/CharSequence;Lcom/huawei/hms/scankit/p/ab;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/hmsscankit/WriterException;
        }
    .end annotation

    .line 138
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 139
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/huawei/hms/scankit/p/me;->a(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_1

    .line 140
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/huawei/hms/scankit/p/me;->a(I)I

    move-result v4

    if-eq v4, v3, :cond_0

    mul-int/lit8 v2, v2, 0x2d

    add-int/2addr v2, v4

    const/16 v3, 0xb

    .line 141
    invoke-virtual {p1, v2, v3}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 142
    :cond_0
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    invoke-direct {p0}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>()V

    throw p0

    :cond_1
    const/4 v1, 0x6

    .line 143
    invoke-virtual {p1, v2, v1}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    move v1, v4

    goto :goto_0

    .line 144
    :cond_2
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    invoke-direct {p0}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>()V

    throw p0

    :cond_3
    return-void
.end method

.method static a(Ljava/lang/String;Lcom/huawei/hms/scankit/p/ab;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/hmsscankit/WriterException;
        }
    .end annotation

    const-string v0, "Shift_JIS"

    .line 149
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 151
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    .line 152
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    const v3, 0x8140

    const/4 v4, -0x1

    if-lt v2, v3, :cond_0

    const v5, 0x9ffc

    if-gt v2, v5, :cond_0

    :goto_1
    sub-int/2addr v2, v3

    goto :goto_2

    :cond_0
    const v3, 0xe040

    if-lt v2, v3, :cond_1

    const v3, 0xebbf

    if-gt v2, v3, :cond_1

    const v3, 0xc140

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    :goto_2
    if-eq v2, v4, :cond_2

    shr-int/lit8 v3, v2, 0x8

    mul-int/lit16 v3, v3, 0xc0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    const/16 v2, 0xd

    .line 153
    invoke-virtual {p1, v3, v2}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 154
    :cond_2
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    const-string p1, "Invalid byte sequence"

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void

    :catch_0
    move-exception p0

    .line 155
    new-instance p1, Lcom/huawei/hms/hmsscankit/WriterException;

    invoke-direct {p1, p0}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static a(Ljava/lang/String;Lcom/huawei/hms/scankit/p/ab;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/hmsscankit/WriterException;
        }
    .end annotation

    .line 145
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p0, v0

    const/16 v2, 0x8

    .line 147
    invoke-virtual {p1, v1, v2}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    .line 148
    new-instance p1, Lcom/huawei/hms/hmsscankit/WriterException;

    invoke-direct {p1, p0}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static a(Ljava/lang/String;Lcom/huawei/hms/scankit/p/wc;Lcom/huawei/hms/scankit/p/ab;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/hmsscankit/WriterException;
        }
    .end annotation

    .line 132
    sget-object v0, Lcom/huawei/hms/scankit/p/le;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 p3, 0x4

    if-ne v0, p3, :cond_0

    .line 133
    invoke-static {p0, p2}, Lcom/huawei/hms/scankit/p/me;->a(Ljava/lang/String;Lcom/huawei/hms/scankit/p/ab;)V

    goto :goto_0

    .line 134
    :cond_0
    new-instance p0, Lcom/huawei/hms/hmsscankit/WriterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid mode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/huawei/hms/hmsscankit/WriterException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 135
    :cond_1
    invoke-static {p0, p2, p3}, Lcom/huawei/hms/scankit/p/me;->a(Ljava/lang/String;Lcom/huawei/hms/scankit/p/ab;Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_2
    invoke-static {p0, p2}, Lcom/huawei/hms/scankit/p/me;->a(Ljava/lang/CharSequence;Lcom/huawei/hms/scankit/p/ab;)V

    goto :goto_0

    .line 137
    :cond_3
    invoke-static {p0, p2}, Lcom/huawei/hms/scankit/p/me;->b(Ljava/lang/CharSequence;Lcom/huawei/hms/scankit/p/ab;)V

    :goto_0
    return-void
.end method

.method private static a(ILcom/huawei/hms/scankit/p/zc;Lcom/huawei/hms/scankit/p/qc;)Z
    .locals 1

    .line 72
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/zc;->d()I

    move-result v0

    .line 73
    invoke-virtual {p1, p2}, Lcom/huawei/hms/scankit/p/zc;->a(Lcom/huawei/hms/scankit/p/qc;)Lcom/huawei/hms/scankit/p/zc$b;

    move-result-object p1

    .line 74
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/zc$b;->d()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 p0, p0, 0x7

    .line 75
    div-int/lit8 p0, p0, 0x8

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "Shift_JIS"

    const/4 v1, 0x0

    .line 63
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    array-length v0, p0

    .line 65
    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 66
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x81

    if-lt v3, v4, :cond_1

    const/16 v4, 0x9f

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0xe0

    if-lt v3, v4, :cond_3

    const/16 v4, 0xeb

    if-le v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    :goto_1
    return v1

    :cond_4
    const/4 p0, 0x1

    return p0

    :catch_0
    return v1
.end method

.method static a([BI)[B
    .locals 5

    .line 122
    array-length v0, p0

    add-int v1, v0, p1

    .line 123
    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 124
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :cond_0
    new-instance p0, Lcom/huawei/hms/scankit/aiscan/common/v;

    sget-object v3, Lcom/huawei/hms/scankit/aiscan/common/h;->e:Lcom/huawei/hms/scankit/aiscan/common/h;

    invoke-direct {p0, v3}, Lcom/huawei/hms/scankit/aiscan/common/v;-><init>(Lcom/huawei/hms/scankit/aiscan/common/h;)V

    invoke-virtual {p0, v1, p1}, Lcom/huawei/hms/scankit/aiscan/common/v;->a([II)V

    .line 126
    new-array p0, p1, [B

    :goto_1
    if-ge v2, p1, :cond_1

    add-int v3, v0, v2

    .line 127
    aget v3, v1, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method static b(Ljava/lang/CharSequence;Lcom/huawei/hms/scankit/p/ab;)V
    .locals 6

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v1, 0x1

    .line 3
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 4
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v2, v2, 0x64

    const/16 v5, 0xa

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    .line 5
    invoke-virtual {p1, v2, v5}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_1

    .line 6
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v1

    const/4 v1, 0x7

    .line 7
    invoke-virtual {p1, v2, v1}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    move v1, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    .line 8
    invoke-virtual {p1, v2, v3}, Lcom/huawei/hms/scankit/p/ab;->a(II)V

    goto :goto_0

    :cond_2
    return-void
.end method
