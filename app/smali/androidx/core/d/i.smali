.class public final Landroidx/core/d/i;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->c:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/d/i;->a:Ljava/lang/Object;

    const/16 v0, 0x18

    new-array v0, v0, [C

    .line 2
    sput-object v0, Landroidx/core/d/i;->b:[C

    return-void
.end method

.method private static a(IIZI)I
    .locals 2

    const/4 v0, 0x3

    const/16 v1, 0x63

    if-gt p0, v1, :cond_5

    if-eqz p2, :cond_0

    if-lt p3, v0, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0x9

    const/4 v1, 0x2

    if-gt p0, v0, :cond_4

    if-eqz p2, :cond_1

    if-lt p3, v1, :cond_1

    goto :goto_1

    :cond_1
    if-nez p2, :cond_3

    if-lez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_4
    :goto_1
    add-int/2addr p1, v1

    return p1

    :cond_5
    :goto_2
    add-int/2addr p1, v0

    return p1
.end method

.method private static a(JI)I
    .locals 17

    move-wide/from16 v0, p0

    move/from16 v2, p2

    .line 7
    sget-object v3, Landroidx/core/d/i;->b:[C

    array-length v3, v3

    if-ge v3, v2, :cond_0

    .line 8
    new-array v3, v2, [C

    sput-object v3, Landroidx/core/d/i;->b:[C

    .line 9
    :cond_0
    sget-object v3, Landroidx/core/d/i;->b:[C

    const-wide/16 v4, 0x0

    const/16 v6, 0x20

    const/4 v10, 0x1

    const/4 v11, 0x0

    cmp-long v7, v0, v4

    if-nez v7, :cond_2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-lez v0, :cond_1

    .line 10
    aput-char v6, v3, v11

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    .line 11
    aput-char v0, v3, v11

    return v10

    :cond_2
    if-lez v7, :cond_3

    const/16 v4, 0x2b

    goto :goto_1

    :cond_3
    const/16 v4, 0x2d

    neg-long v0, v0

    :goto_1
    const-wide/16 v7, 0x3e8

    .line 12
    rem-long v12, v0, v7

    long-to-int v13, v12

    .line 13
    div-long/2addr v0, v7

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const v1, 0x15180

    if-le v0, v1, :cond_4

    .line 14
    div-int v5, v0, v1

    mul-int v1, v1, v5

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    const/16 v1, 0xe10

    if-le v0, v1, :cond_5

    .line 15
    div-int/lit16 v1, v0, 0xe10

    mul-int/lit16 v7, v1, 0xe10

    sub-int/2addr v0, v7

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    const/16 v7, 0x3c

    if-le v0, v7, :cond_6

    .line 16
    div-int/lit8 v7, v0, 0x3c

    mul-int/lit8 v8, v7, 0x3c

    sub-int/2addr v0, v8

    move v12, v0

    move v0, v7

    goto :goto_4

    :cond_6
    move v12, v0

    const/4 v0, 0x0

    :goto_4
    const/4 v14, 0x3

    const/4 v15, 0x2

    if-eqz v2, :cond_b

    .line 17
    invoke-static {v5, v10, v11, v11}, Landroidx/core/d/i;->a(IIZI)I

    move-result v7

    if-lez v7, :cond_7

    const/4 v8, 0x1

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    .line 18
    :goto_5
    invoke-static {v1, v10, v8, v15}, Landroidx/core/d/i;->a(IIZI)I

    move-result v8

    add-int/2addr v7, v8

    if-lez v7, :cond_8

    const/4 v8, 0x1

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    .line 19
    :goto_6
    invoke-static {v0, v10, v8, v15}, Landroidx/core/d/i;->a(IIZI)I

    move-result v8

    add-int/2addr v7, v8

    if-lez v7, :cond_9

    const/4 v8, 0x1

    goto :goto_7

    :cond_9
    const/4 v8, 0x0

    .line 20
    :goto_7
    invoke-static {v12, v10, v8, v15}, Landroidx/core/d/i;->a(IIZI)I

    move-result v8

    add-int/2addr v7, v8

    if-lez v7, :cond_a

    const/4 v8, 0x3

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    .line 21
    :goto_8
    invoke-static {v13, v15, v10, v8}, Landroidx/core/d/i;->a(IIZI)I

    move-result v8

    add-int/2addr v8, v10

    add-int/2addr v7, v8

    const/4 v8, 0x0

    :goto_9
    if-ge v7, v2, :cond_c

    .line 22
    aput-char v6, v3, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    :cond_b
    const/4 v8, 0x0

    .line 23
    :cond_c
    aput-char v4, v3, v8

    add-int/lit8 v9, v8, 0x1

    if-eqz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_a

    :cond_d
    const/4 v2, 0x0

    :goto_a
    const/16 v6, 0x64

    const/4 v8, 0x0

    const/16 v16, 0x0

    move-object v4, v3

    move v7, v9

    move v11, v9

    move/from16 v9, v16

    .line 24
    invoke-static/range {v4 .. v9}, Landroidx/core/d/i;->a([CICIZI)I

    move-result v7

    const/16 v6, 0x68

    if-eq v7, v11, :cond_e

    const/4 v8, 0x1

    goto :goto_b

    :cond_e
    const/4 v8, 0x0

    :goto_b
    if-eqz v2, :cond_f

    const/4 v9, 0x2

    goto :goto_c

    :cond_f
    const/4 v9, 0x0

    :goto_c
    move-object v4, v3

    move v5, v1

    .line 25
    invoke-static/range {v4 .. v9}, Landroidx/core/d/i;->a([CICIZI)I

    move-result v7

    const/16 v6, 0x6d

    if-eq v7, v11, :cond_10

    const/4 v8, 0x1

    goto :goto_d

    :cond_10
    const/4 v8, 0x0

    :goto_d
    if-eqz v2, :cond_11

    const/4 v9, 0x2

    goto :goto_e

    :cond_11
    const/4 v9, 0x0

    :goto_e
    move-object v4, v3

    move v5, v0

    .line 26
    invoke-static/range {v4 .. v9}, Landroidx/core/d/i;->a([CICIZI)I

    move-result v7

    const/16 v6, 0x73

    if-eq v7, v11, :cond_12

    const/4 v8, 0x1

    goto :goto_f

    :cond_12
    const/4 v8, 0x0

    :goto_f
    if-eqz v2, :cond_13

    const/4 v9, 0x2

    goto :goto_10

    :cond_13
    const/4 v9, 0x0

    :goto_10
    move-object v4, v3

    move v5, v12

    .line 27
    invoke-static/range {v4 .. v9}, Landroidx/core/d/i;->a([CICIZI)I

    move-result v7

    const/16 v6, 0x6d

    const/4 v8, 0x1

    if-eqz v2, :cond_14

    if-eq v7, v11, :cond_14

    const/4 v9, 0x3

    goto :goto_11

    :cond_14
    const/4 v9, 0x0

    :goto_11
    move-object v4, v3

    move v5, v13

    .line 28
    invoke-static/range {v4 .. v9}, Landroidx/core/d/i;->a([CICIZI)I

    move-result v0

    const/16 v1, 0x73

    .line 29
    aput-char v1, v3, v0

    add-int/2addr v0, v10

    return v0
.end method

.method private static a([CICIZI)I
    .locals 2

    if-nez p4, :cond_0

    if-lez p1, :cond_7

    :cond_0
    if-eqz p4, :cond_1

    const/4 v0, 0x3

    if-ge p5, v0, :cond_2

    :cond_1
    const/16 v0, 0x63

    if-le p1, v0, :cond_3

    .line 1
    :cond_2
    div-int/lit8 v0, p1, 0x64

    add-int/lit8 v1, v0, 0x30

    int-to-char v1, v1

    .line 2
    aput-char v1, p0, p3

    add-int/lit8 v1, p3, 0x1

    mul-int/lit8 v0, v0, 0x64

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_3
    move v1, p3

    :goto_0
    if-eqz p4, :cond_4

    const/4 p4, 0x2

    if-ge p5, p4, :cond_5

    :cond_4
    const/16 p4, 0x9

    if-gt p1, p4, :cond_5

    if-eq p3, v1, :cond_6

    .line 3
    :cond_5
    div-int/lit8 p3, p1, 0xa

    add-int/lit8 p4, p3, 0x30

    int-to-char p4, p4

    .line 4
    aput-char p4, p0, v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 p3, p3, 0xa

    sub-int/2addr p1, p3

    :cond_6
    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    .line 5
    aput-char p1, p0, v1

    add-int/lit8 v1, v1, 0x1

    .line 6
    aput-char p2, p0, v1

    add-int/lit8 p3, v1, 0x1

    :cond_7
    return p3
.end method

.method public static a(JJLjava/io/PrintWriter;)V
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->c:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string p0, "--"

    .line 35
    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    sub-long/2addr p0, p2

    const/4 p2, 0x0

    .line 36
    invoke-static {p0, p1, p4, p2}, Landroidx/core/d/i;->a(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static a(JLjava/io/PrintWriter;)V
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->c:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    const/4 v0, 0x0

    .line 34
    invoke-static {p0, p1, p2, v0}, Landroidx/core/d/i;->a(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static a(JLjava/io/PrintWriter;I)V
    .locals 2
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->c:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 30
    sget-object v0, Landroidx/core/d/i;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 31
    :try_start_0
    invoke-static {p0, p1, p3}, Landroidx/core/d/i;->a(JI)I

    move-result p0

    .line 32
    new-instance p1, Ljava/lang/String;

    sget-object p3, Landroidx/core/d/i;->b:[C

    const/4 v1, 0x0

    invoke-direct {p1, p3, v1, p0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
