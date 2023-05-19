.class public Lcom/huawei/hms/scankit/p/tc;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/scankit/p/tc$a;,
        Lcom/huawei/hms/scankit/p/tc$b;,
        Lcom/huawei/hms/scankit/p/tc$c;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static c:Z

.field private static d:Z

.field private static final e:Lcom/huawei/hms/scankit/p/tc$b;


# instance fields
.field private final f:Lcom/huawei/hms/scankit/p/bb;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/rc;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/scankit/p/rc;",
            ">;"
        }
    .end annotation
.end field

.field private final i:[I

.field private final j:Lcom/huawei/hms/scankit/aiscan/common/A;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/huawei/hms/scankit/p/tc;->a:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/huawei/hms/scankit/p/tc;->b:[I

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lcom/huawei/hms/scankit/p/tc;->c:Z

    .line 4
    sput-boolean v0, Lcom/huawei/hms/scankit/p/tc;->d:Z

    .line 5
    new-instance v0, Lcom/huawei/hms/scankit/p/tc$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/huawei/hms/scankit/p/tc$b;-><init>(Lcom/huawei/hms/scankit/p/sc;)V

    sput-object v0, Lcom/huawei/hms/scankit/p/tc;->e:Lcom/huawei/hms/scankit/p/tc$b;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/huawei/hms/scankit/p/bb;Lcom/huawei/hms/scankit/aiscan/common/A;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    const/4 p1, 0x5

    new-array p1, p1, [I

    .line 4
    iput-object p1, p0, Lcom/huawei/hms/scankit/p/tc;->i:[I

    .line 5
    iput-object p2, p0, Lcom/huawei/hms/scankit/p/tc;->j:Lcom/huawei/hms/scankit/aiscan/common/A;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/huawei/hms/scankit/p/tc;->h:Ljava/util/List;

    return-void
.end method

.method private static a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;)D
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 136
    invoke-virtual {p0}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result p0

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result p1

    sub-float/2addr p0, p1

    float-to-double p0, p0

    mul-double v0, v0, v0

    mul-double p0, p0, p0

    add-double/2addr v0, p0

    return-wide v0
.end method

.method private a(IIII)F
    .locals 9

    .line 154
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    .line 155
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v1

    .line 156
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/tc;->d()[I

    move-result-object v2

    .line 157
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/huawei/hms/scankit/p/tc;->c(III[I)Z

    move-result v3

    const/high16 v4, 0x7fc00000    # Float.NaN

    if-eqz v3, :cond_0

    return v4

    :cond_0
    const/4 v3, 0x1

    add-int/2addr p1, v3

    :goto_0
    if-ge p1, v1, :cond_1

    .line 158
    invoke-virtual {v0, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v5

    if-nez v5, :cond_1

    aget v5, v2, v3

    if-gt v5, p3, :cond_1

    .line 159
    aget v5, v2, v3

    add-int/2addr v5, v3

    aput v5, v2, v3

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_c

    .line 160
    aget v5, v2, v3

    if-le v5, p3, :cond_2

    goto/16 :goto_4

    :cond_2
    :goto_1
    const/4 v5, 0x2

    if-ge p1, v1, :cond_3

    .line 161
    invoke-virtual {v0, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 162
    aget v6, v2, v5

    add-int/2addr v6, v3

    aput v6, v2, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    return v4

    :cond_4
    :goto_2
    const/4 v6, 0x3

    if-ge p1, v1, :cond_5

    .line 163
    invoke-virtual {v0, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v7

    if-nez v7, :cond_5

    aget v7, v2, v6

    if-ge v7, p3, :cond_5

    .line 164
    aget v7, v2, v6

    add-int/2addr v7, v3

    aput v7, v2, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    if-eq p1, v1, :cond_c

    .line 165
    aget v7, v2, v6

    if-lt v7, p3, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v7, 0x4

    if-ge p1, v1, :cond_7

    .line 166
    invoke-virtual {v0, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v8

    if-eqz v8, :cond_7

    aget v8, v2, v7

    if-ge v8, p3, :cond_7

    .line 167
    aget v8, v2, v7

    add-int/2addr v8, v3

    aput v8, v2, v7

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 168
    :cond_7
    aget p2, v2, v7

    if-lt p2, p3, :cond_8

    return v4

    :cond_8
    const/4 p2, 0x0

    .line 169
    aget p3, v2, p2

    aget v0, v2, v3

    add-int/2addr p3, v0

    aget v0, v2, v5

    add-int/2addr p3, v0

    aget v0, v2, v6

    add-int/2addr p3, v0

    aget v0, v2, v7

    add-int/2addr p3, v0

    sub-int/2addr p3, p4

    .line 170
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    mul-int/lit8 p3, p3, 0x5

    mul-int/lit8 p4, p4, 0x2

    if-lt p3, p4, :cond_9

    return v4

    .line 171
    :cond_9
    sget-boolean p3, Lcom/huawei/hms/scankit/p/Bc;->d:Z

    if-eqz p3, :cond_b

    .line 172
    invoke-static {v2, v3}, Lcom/huawei/hms/scankit/p/tc;->a([IZ)Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-static {v2, p1}, Lcom/huawei/hms/scankit/p/tc;->a([II)F

    move-result v4

    :cond_a
    return v4

    .line 173
    :cond_b
    invoke-static {v2, p2}, Lcom/huawei/hms/scankit/p/tc;->a([IZ)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-static {v2, p1}, Lcom/huawei/hms/scankit/p/tc;->a([II)F

    move-result v4

    :cond_c
    :goto_4
    return v4
.end method

.method private a(IIIII)F
    .locals 15

    move/from16 v0, p3

    move/from16 v1, p4

    move-object v2, p0

    .line 174
    iget-object v3, v2, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    .line 175
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v4

    move/from16 v5, p2

    :goto_0
    if-gt v5, v0, :cond_9

    .line 176
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/tc;->d()[I

    move-result-object v6

    move/from16 v7, p1

    :goto_1
    const/4 v8, 0x1

    if-ltz v7, :cond_0

    .line 177
    invoke-virtual {v3, v5, v7}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v9

    if-nez v9, :cond_0

    aget v9, v6, v8

    if-gt v9, v1, :cond_0

    .line 178
    aget v9, v6, v8

    add-int/2addr v9, v8

    aput v9, v6, v8

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_0
    if-ltz v7, :cond_8

    .line 179
    aget v9, v6, v8

    int-to-double v9, v9

    int-to-double v11, v1

    const-wide/high16 v13, 0x3ff8000000000000L    # 1.5

    mul-double v11, v11, v13

    cmpl-double v13, v9, v11

    if-lez v13, :cond_1

    goto/16 :goto_5

    :cond_1
    :goto_2
    const/4 v9, 0x0

    if-ltz v7, :cond_2

    .line 180
    invoke-virtual {v3, v5, v7}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v10

    if-eqz v10, :cond_2

    aget v10, v6, v9

    if-gt v10, v1, :cond_2

    .line 181
    aget v10, v6, v9

    add-int/2addr v10, v8

    aput v10, v6, v9

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 182
    :cond_2
    aget v7, v6, v9

    div-int/lit8 v10, v1, 0x2

    if-le v7, v10, :cond_3

    goto :goto_5

    :cond_3
    add-int/lit8 v7, p1, 0x1

    :goto_3
    if-ge v7, v4, :cond_4

    .line 183
    invoke-virtual {v3, v5, v7}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v10

    if-nez v10, :cond_4

    aget v10, v6, v8

    if-gt v10, v1, :cond_4

    .line 184
    aget v10, v6, v8

    add-int/2addr v10, v8

    aput v10, v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    if-ltz v7, :cond_8

    .line 185
    aget v10, v6, v8

    int-to-double v13, v10

    cmpl-double v10, v13, v11

    if-lez v10, :cond_5

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v10, 0x2

    if-ge v7, v4, :cond_6

    .line 186
    invoke-virtual {v3, v5, v7}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 187
    aget v11, v6, v10

    add-int/2addr v11, v8

    aput v11, v6, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 188
    :cond_6
    aget v9, v6, v9

    aget v11, v6, v8

    add-int/2addr v9, v11

    aget v11, v6, v10

    add-int/2addr v9, v11

    sub-int v9, v9, p5

    .line 189
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x5

    mul-int/lit8 v11, p5, 0x2

    if-lt v9, v11, :cond_7

    goto :goto_5

    .line 190
    :cond_7
    invoke-static {v6}, Lcom/huawei/hms/scankit/p/tc;->b([I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 191
    aget v0, v6, v8

    div-int/2addr v0, v10

    sub-int/2addr v7, v0

    aget v0, v6, v10

    sub-int/2addr v7, v0

    int-to-float v0, v7

    return v0

    :cond_8
    :goto_5
    sub-int v6, v0, p2

    add-int/2addr v5, v6

    goto/16 :goto_0

    :cond_9
    const/high16 v0, 0x7fc00000    # Float.NaN

    return v0
.end method

.method private a(IIIIZ)F
    .locals 9

    .line 92
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    .line 93
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v1

    .line 94
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/tc;->d()[I

    move-result-object v2

    .line 95
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/huawei/hms/scankit/p/tc;->a(III[I)Z

    move-result v3

    const/high16 v4, 0x7fc00000    # Float.NaN

    if-eqz v3, :cond_0

    return v4

    :cond_0
    const/4 v3, 0x1

    add-int/2addr p1, v3

    :goto_0
    const/4 v5, 0x2

    if-ge p1, v1, :cond_1

    .line 96
    invoke-virtual {v0, p1, p2}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 97
    aget v6, v2, v5

    add-int/2addr v6, v3

    aput v6, v2, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    return v4

    :cond_2
    :goto_1
    const/4 v6, 0x3

    if-ge p1, v1, :cond_3

    .line 98
    invoke-virtual {v0, p1, p2}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v7

    if-nez v7, :cond_3

    aget v7, v2, v6

    if-ge v7, p3, :cond_3

    .line 99
    aget v7, v2, v6

    add-int/2addr v7, v3

    aput v7, v2, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    if-eq p1, v1, :cond_8

    .line 100
    aget v7, v2, v6

    if-lt v7, p3, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x4

    if-ge p1, v1, :cond_5

    .line 101
    invoke-virtual {v0, p1, p2}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v8

    if-eqz v8, :cond_5

    aget v8, v2, v7

    if-ge v8, p3, :cond_5

    .line 102
    aget v8, v2, v7

    add-int/2addr v8, v3

    aput v8, v2, v7

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 103
    :cond_5
    aget p2, v2, v7

    if-lt p2, p3, :cond_6

    sget-boolean p2, Lcom/huawei/hms/scankit/p/tc;->d:Z

    if-nez p2, :cond_6

    sget-boolean p2, Lcom/huawei/hms/scankit/p/tc;->c:Z

    if-nez p2, :cond_6

    return v4

    :cond_6
    const/4 p2, 0x0

    .line 104
    aget p2, v2, p2

    aget p3, v2, v3

    add-int/2addr p2, p3

    aget p3, v2, v5

    add-int/2addr p2, p3

    aget p3, v2, v6

    add-int/2addr p2, p3

    aget p3, v2, v7

    add-int/2addr p2, p3

    sub-int/2addr p2, p4

    .line 105
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    if-lt p2, p4, :cond_7

    sget-boolean p2, Lcom/huawei/hms/scankit/p/tc;->d:Z

    if-nez p2, :cond_7

    sget-boolean p2, Lcom/huawei/hms/scankit/p/tc;->c:Z

    if-nez p2, :cond_7

    return v4

    .line 106
    :cond_7
    invoke-static {v2, p5}, Lcom/huawei/hms/scankit/p/tc;->a([IZ)Z

    move-result p2

    if-eqz p2, :cond_8

    invoke-static {v2, p1}, Lcom/huawei/hms/scankit/p/tc;->a([II)F

    move-result v4

    :cond_8
    :goto_3
    return v4
.end method

.method private static a([II)F
    .locals 1

    const/4 v0, 0x4

    .line 50
    aget v0, p0, v0

    sub-int/2addr p1, v0

    const/4 v0, 0x3

    aget v0, p0, v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/4 v0, 0x2

    aget p0, p0, v0

    int-to-float p0, p0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method protected static a([I[IF)F
    .locals 9

    .line 1
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 2
    aget v5, p0, v2

    add-int/2addr v3, v5

    .line 3
    aget v5, p1, v2

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v3, v4, :cond_1

    return v2

    :cond_1
    int-to-float v3, v3

    int-to-float v4, v4

    div-float v4, v3, v4

    mul-float p2, p2, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 4
    aget v6, p0, v1

    .line 5
    aget v7, p1, v1

    int-to-float v7, v7

    mul-float v7, v7, v4

    int-to-float v6, v6

    cmpl-float v8, v6, v7

    if-lez v8, :cond_2

    sub-float/2addr v6, v7

    goto :goto_2

    :cond_2
    sub-float v6, v7, v6

    :goto_2
    cmpl-float v7, v6, p2

    if-lez v7, :cond_3

    return v2

    :cond_3
    add-float/2addr v5, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    div-float/2addr v5, v3

    return v5
.end method

.method private a(III)V
    .locals 10

    const/4 v0, 0x5

    new-array v1, v0, [I

    add-int/lit8 v2, p1, -0x1

    :goto_0
    if-ge v2, p2, :cond_6

    .line 20
    invoke-virtual {p0, v1}, Lcom/huawei/hms/scankit/p/tc;->a([I)V

    new-array v3, v0, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    const/4 v5, 0x1

    aput v2, v3, v5

    const/4 v6, 0x2

    aput v4, v3, v6

    const/4 v7, 0x3

    aput p3, v3, v7

    const/4 v7, 0x4

    aput p1, v3, v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, p3, :cond_2

    aput v8, v3, v6

    .line 21
    iget-object v9, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v9, v8, v2}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 22
    invoke-direct {p0, v1, v3}, Lcom/huawei/hms/scankit/p/tc;->a([I[I)V

    goto :goto_2

    .line 23
    :cond_0
    invoke-direct {p0, v1, v3}, Lcom/huawei/hms/scankit/p/tc;->b([I[I)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_3

    .line 24
    :cond_1
    :goto_2
    aget v8, v3, v6

    .line 25
    aget p1, v3, v7

    :goto_3
    add-int/2addr v8, v5

    goto :goto_1

    .line 26
    :cond_2
    invoke-static {v1}, Lcom/huawei/hms/scankit/p/tc;->b([I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 27
    aget v3, v3, v4

    move v5, p3

    :goto_4
    if-le v3, v6, :cond_3

    .line 28
    aget v7, v1, v3

    sub-int/2addr v5, v7

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 29
    :cond_3
    invoke-virtual {p0, v1, v2, v5}, Lcom/huawei/hms/scankit/p/tc;->b([III)Z

    goto :goto_5

    :cond_4
    move v5, p3

    .line 30
    :goto_5
    invoke-static {v1, v4}, Lcom/huawei/hms/scankit/p/tc;->a([IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 31
    invoke-virtual {p0, v1, v2, v5, v4}, Lcom/huawei/hms/scankit/p/tc;->a([IIIZ)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 p1, 0x2

    :cond_5
    add-int/2addr v2, p1

    goto :goto_0

    :cond_6
    return-void
.end method

.method private a([I[I)V
    .locals 6

    const/4 v0, 0x0

    .line 32
    aget v1, p2, v0

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    .line 33
    aget v1, p2, v0

    add-int/2addr v1, v2

    aput v1, p2, v0

    .line 34
    :cond_0
    aget v1, p2, v0

    if-ltz v1, :cond_1

    aget v1, p2, v0

    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 35
    aget v1, p2, v0

    aget v3, p1, v1

    add-int/2addr v3, v2

    aput v3, p1, v1

    :cond_1
    const/4 v1, 0x2

    .line 36
    aget v3, p2, v1

    const/4 v4, 0x3

    aget v4, p2, v4

    sub-int/2addr v4, v2

    if-ne v3, v4, :cond_5

    aget v3, p2, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    .line 37
    invoke-static {p1, v0}, Lcom/huawei/hms/scankit/p/tc;->a([IZ)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 38
    aget v3, p2, v2

    aget v5, p2, v1

    invoke-virtual {p0, p1, v3, v5, v0}, Lcom/huawei/hms/scankit/p/tc;->a([IIIZ)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 39
    aput v1, p2, v4

    :cond_2
    if-nez v3, :cond_3

    .line 40
    aget v3, p2, v2

    aget v4, p2, v1

    invoke-virtual {p0, p1, v3, v4}, Lcom/huawei/hms/scankit/p/tc;->a([III)Z

    move-result v3

    :cond_3
    if-eqz v3, :cond_4

    .line 41
    aput v0, p2, v0

    .line 42
    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/p/tc;->a([I)V

    .line 43
    :goto_0
    aget v3, p2, v1

    iget-object v4, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    aget v4, p2, v1

    aget v5, p2, v2

    invoke-virtual {v3, v4, v5}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v3

    if-nez v3, :cond_4

    .line 44
    aget v3, p2, v1

    add-int/2addr v3, v2

    aput v3, p2, v1

    goto :goto_0

    .line 45
    :cond_4
    sget-boolean v3, Lcom/huawei/hms/scankit/p/Bc;->d:Z

    if-eqz v3, :cond_5

    .line 46
    invoke-static {p1, v2}, Lcom/huawei/hms/scankit/p/tc;->a([IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 47
    aget v3, p2, v2

    aget v1, p2, v1

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/huawei/hms/scankit/p/tc;->a([IIIZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 48
    aput v0, p2, v0

    .line 49
    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/p/tc;->a([I)V

    :cond_5
    return-void
.end method

.method private a(II)Z
    .locals 10

    .line 71
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/tc;->d()[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    const/4 v4, 0x1

    if-lt p1, v2, :cond_0

    if-lt p2, v2, :cond_0

    .line 72
    iget-object v5, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    sub-int v6, p2, v2

    sub-int v7, p1, v2

    invoke-virtual {v5, v6, v7}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 73
    aget v5, v0, v3

    add-int/2addr v5, v4

    aput v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    :cond_0
    aget v5, v0, v3

    if-nez v5, :cond_1

    return v1

    :cond_1
    :goto_1
    if-lt p1, v2, :cond_2

    if-lt p2, v2, :cond_2

    .line 75
    iget-object v5, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    sub-int v6, p2, v2

    sub-int v7, p1, v2

    invoke-virtual {v5, v6, v7}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 76
    aget v5, v0, v4

    add-int/2addr v5, v4

    aput v5, v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 77
    :cond_2
    aget v5, v0, v4

    if-nez v5, :cond_3

    return v1

    :cond_3
    :goto_2
    if-lt p1, v2, :cond_4

    if-lt p2, v2, :cond_4

    .line 78
    iget-object v5, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    sub-int v6, p2, v2

    sub-int v7, p1, v2

    invoke-virtual {v5, v6, v7}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 79
    aget v5, v0, v1

    add-int/2addr v5, v4

    aput v5, v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 80
    :cond_4
    aget v2, v0, v1

    if-nez v2, :cond_5

    return v1

    .line 81
    :cond_5
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v2

    .line 82
    iget-object v5, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v5}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v5

    const/4 v6, 0x1

    :goto_3
    add-int v7, p1, v6

    if-ge v7, v2, :cond_6

    add-int v8, p2, v6

    if-ge v8, v5, :cond_6

    .line 83
    iget-object v9, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v9, v8, v7}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 84
    aget v7, v0, v3

    add-int/2addr v7, v4

    aput v7, v0, v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    add-int v3, p1, v6

    const/4 v7, 0x3

    if-ge v3, v2, :cond_7

    add-int v8, p2, v6

    if-ge v8, v5, :cond_7

    .line 85
    iget-object v9, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v9, v8, v3}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v3

    if-nez v3, :cond_7

    .line 86
    aget v3, v0, v7

    add-int/2addr v3, v4

    aput v3, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 87
    :cond_7
    aget v3, v0, v7

    if-nez v3, :cond_8

    return v1

    :cond_8
    :goto_5
    add-int v3, p1, v6

    const/4 v7, 0x4

    if-ge v3, v2, :cond_9

    add-int v8, p2, v6

    if-ge v8, v5, :cond_9

    .line 88
    iget-object v9, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v9, v8, v3}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 89
    aget v3, v0, v7

    add-int/2addr v3, v4

    aput v3, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 90
    :cond_9
    aget p1, v0, v7

    if-nez p1, :cond_a

    return v1

    .line 91
    :cond_a
    invoke-static {v0}, Lcom/huawei/hms/scankit/p/tc;->c([I)Z

    move-result p1

    return p1
.end method

.method private a(III[I)Z
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    :goto_0
    const/4 v1, 0x1

    if-ltz p1, :cond_0

    .line 108
    invoke-virtual {v0, p1, p2}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    .line 109
    aget v3, p4, v2

    add-int/2addr v3, v1

    aput v3, p4, v2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    return v1

    :cond_1
    :goto_1
    if-ltz p1, :cond_2

    .line 110
    invoke-virtual {v0, p1, p2}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v2

    if-nez v2, :cond_2

    aget v2, p4, v1

    if-gt v2, p3, :cond_2

    .line 111
    aget v2, p4, v1

    add-int/2addr v2, v1

    aput v2, p4, v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    if-ltz p1, :cond_6

    .line 112
    aget v2, p4, v1

    if-le v2, p3, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x0

    if-ltz p1, :cond_4

    .line 113
    invoke-virtual {v0, p1, p2}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v3

    if-eqz v3, :cond_4

    aget v3, p4, v2

    if-gt v3, p3, :cond_4

    .line 114
    aget v3, p4, v2

    add-int/2addr v3, v1

    aput v3, p4, v2

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 115
    :cond_4
    aget p1, p4, v2

    if-le p1, p3, :cond_5

    sget-boolean p1, Lcom/huawei/hms/scankit/p/tc;->d:Z

    if-nez p1, :cond_5

    sget-boolean p1, Lcom/huawei/hms/scankit/p/tc;->c:Z

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v2

    :cond_6
    :goto_3
    return v1
.end method

.method private a(ZFFF)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 199
    :goto_0
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/tc;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 200
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/tc;->h:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/scankit/p/rc;

    .line 201
    invoke-virtual {v2, p4, p2, p3}, Lcom/huawei/hms/scankit/p/rc;->a(FFF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 202
    iget-object p1, p0, Lcom/huawei/hms/scankit/p/tc;->h:Ljava/util/List;

    invoke-virtual {v2, p2, p3, p4, v0}, Lcom/huawei/hms/scankit/p/rc;->a(FFFZ)Lcom/huawei/hms/scankit/p/rc;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez p1, :cond_2

    .line 203
    new-instance p1, Lcom/huawei/hms/scankit/p/rc;

    invoke-direct {p1, p3, p2, p4, v0}, Lcom/huawei/hms/scankit/p/rc;-><init>(FFFZ)V

    .line 204
    iget-object p2, p0, Lcom/huawei/hms/scankit/p/tc;->h:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object p2, p0, Lcom/huawei/hms/scankit/p/tc;->j:Lcom/huawei/hms/scankit/aiscan/common/A;

    if-eqz p2, :cond_2

    .line 206
    invoke-interface {p2, p1}, Lcom/huawei/hms/scankit/aiscan/common/A;->a(Lcom/huawei/hms/scankit/aiscan/common/z;)V

    :cond_2
    return v3
.end method

.method protected static a([IZ)Z
    .locals 8

    .line 51
    invoke-static {}, Lcom/huawei/hms/scankit/p/tc;->e()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    .line 52
    aget v3, p0, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    if-ge v2, v1, :cond_2

    return v0

    :cond_2
    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz p1, :cond_3

    .line 53
    sget-boolean v4, Lcom/huawei/hms/scankit/p/Bc;->d:Z

    if-eqz v4, :cond_3

    const/high16 v4, 0x3f400000    # 0.75f

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/high16 v4, 0x3f000000    # 0.5f

    const/high16 v5, 0x40400000    # 3.0f

    :goto_1
    int-to-float v2, v2

    const/high16 v6, 0x40e00000    # 7.0f

    div-float/2addr v2, v6

    mul-float v4, v4, v2

    .line 54
    aget v6, p0, v0

    int-to-float v6, v6

    sub-float v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/4 v7, 0x1

    cmpg-float v6, v6, v4

    if-gez v6, :cond_4

    aget v6, p0, v7

    int-to-float v6, v6

    sub-float v6, v2, v6

    .line 55
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v4

    if-gez v6, :cond_4

    mul-float v1, v1, v2

    const/4 v6, 0x2

    aget v6, p0, v6

    int-to-float v6, v6

    sub-float/2addr v1, v6

    .line 56
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float v5, v5, v4

    cmpg-float v1, v1, v5

    if-gez v1, :cond_4

    const/4 v1, 0x3

    aget v1, p0, v1

    int-to-float v1, v1

    sub-float v1, v2, v1

    .line 57
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_4

    const/4 v1, 0x4

    aget v1, p0, v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    .line 58
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_4

    return v7

    :cond_4
    if-eqz p1, :cond_a

    .line 59
    array-length p1, p0

    sub-int/2addr p1, v7

    new-array p1, p1, [I

    const/4 v1, 0x0

    .line 60
    :goto_2
    array-length v2, p0

    sub-int/2addr v2, v7

    if-ge v1, v2, :cond_5

    add-int/lit8 v2, v1, 0x1

    .line 61
    aget v4, p0, v2

    aput v4, p1, v1

    move v1, v2

    goto :goto_2

    .line 62
    :cond_5
    array-length v1, p0

    sub-int/2addr v1, v7

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 63
    :goto_3
    array-length v4, p0

    sub-int/2addr v4, v7

    if-ge v2, v4, :cond_6

    .line 64
    aget v4, p0, v2

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 65
    :cond_6
    sget-object p0, Lcom/huawei/hms/scankit/p/tc;->a:[I

    invoke-static {p1, p0, v3}, Lcom/huawei/hms/scankit/p/tc;->a([I[IF)F

    move-result p0

    .line 66
    sget-object p1, Lcom/huawei/hms/scankit/p/tc;->b:[I

    invoke-static {v1, p1, v3}, Lcom/huawei/hms/scankit/p/tc;->a([I[IF)F

    move-result p1

    const v1, 0x3e99999a    # 0.3f

    cmpg-float p0, p0, v1

    if-gez p0, :cond_7

    const/4 p0, 0x1

    goto :goto_4

    :cond_7
    const/4 p0, 0x0

    .line 67
    :goto_4
    sput-boolean p0, Lcom/huawei/hms/scankit/p/tc;->c:Z

    cmpg-float p1, p1, v1

    if-gez p1, :cond_8

    const/4 p1, 0x1

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    .line 68
    :goto_5
    sput-boolean p1, Lcom/huawei/hms/scankit/p/tc;->d:Z

    if-nez p0, :cond_9

    if-eqz p1, :cond_a

    :cond_9
    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method private a(Z)[Lcom/huawei/hms/scankit/p/rc;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 137
    iget-object v1, v0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    sget-object v2, Lcom/huawei/hms/scankit/p/tc;->e:Lcom/huawei/hms/scankit/p/tc$b;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz p1, :cond_0

    const v1, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3e800000    # 0.25f

    :goto_0
    const/4 v2, 0x3

    new-array v3, v2, [D

    new-array v2, v2, [Lcom/huawei/hms/scankit/p/rc;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 138
    :cond_1
    iget-object v10, v0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    sub-int/2addr v10, v11

    if-ge v7, v10, :cond_6

    .line 139
    iget-object v10, v0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/huawei/hms/scankit/p/rc;

    .line 140
    invoke-virtual {v10}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v12

    add-int/lit8 v7, v7, 0x1

    move v13, v7

    .line 141
    :cond_2
    iget-object v14, v0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    if-ge v13, v14, :cond_1

    .line 142
    iget-object v14, v0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/huawei/hms/scankit/p/rc;

    .line 143
    invoke-static {v10, v14}, Lcom/huawei/hms/scankit/p/tc;->a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;)D

    move-result-wide v16

    add-int/lit8 v13, v13, 0x1

    move v4, v13

    .line 144
    :goto_1
    iget-object v5, v0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 145
    iget-object v5, v0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hms/scankit/p/rc;

    .line 146
    invoke-virtual {v5}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v18

    const v19, 0x3fb33333    # 1.4f

    mul-float v19, v19, v12

    cmpl-float v18, v18, v19

    if-lez v18, :cond_3

    goto :goto_2

    :cond_3
    aput-wide v16, v3, v6

    .line 147
    invoke-static {v14, v5}, Lcom/huawei/hms/scankit/p/tc;->a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;)D

    move-result-wide v18

    aput-wide v18, v3, v15

    .line 148
    invoke-static {v10, v5}, Lcom/huawei/hms/scankit/p/tc;->a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;)D

    move-result-wide v18

    aput-wide v18, v3, v11

    .line 149
    invoke-static {v3}, Ljava/util/Arrays;->sort([D)V

    .line 150
    aget-wide v18, v3, v11

    aget-wide v20, v3, v15

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    aget-wide v20, v3, v11

    aget-wide v24, v3, v6

    mul-double v24, v24, v22

    sub-double v20, v20, v24

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    add-double v18, v18, v20

    aget-wide v20, v3, v11

    div-double v18, v18, v20

    .line 151
    aget-wide v20, v3, v15

    aget-wide v24, v3, v6

    add-double v20, v20, v24

    aget-wide v24, v3, v11

    sub-double v20, v20, v24

    aget-wide v24, v3, v6

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    mul-double v24, v24, v22

    aget-wide v22, v3, v15

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v22

    mul-double v24, v24, v22

    div-double v20, v20, v24

    cmpg-double v22, v18, v8

    if-gez v22, :cond_5

    .line 152
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    move/from16 v22, v12

    float-to-double v11, v1

    cmpg-double v23, v20, v11

    if-gez v23, :cond_4

    aput-object v10, v2, v6

    aput-object v14, v2, v15

    const/4 v11, 0x2

    aput-object v5, v2, v11

    move-wide/from16 v8, v18

    goto :goto_3

    :cond_4
    const/4 v11, 0x2

    goto :goto_3

    :cond_5
    :goto_2
    move/from16 v22, v12

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move/from16 v12, v22

    goto/16 :goto_1

    :cond_6
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v1, v4, v8

    if-eqz v1, :cond_7

    return-object v2

    .line 153
    :cond_7
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v1

    throw v1
.end method

.method private b(IIII)F
    .locals 8

    .line 54
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    .line 55
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v1

    .line 56
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/tc;->d()[I

    move-result-object v2

    .line 57
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/huawei/hms/scankit/p/tc;->d(III[I)Z

    move-result v3

    const/high16 v4, 0x7fc00000    # Float.NaN

    if-eqz v3, :cond_0

    return v4

    :cond_0
    const/4 v3, 0x1

    add-int/2addr p1, v3

    :goto_0
    const/4 v5, 0x3

    if-ge p1, v1, :cond_1

    .line 58
    invoke-virtual {v0, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v6

    if-nez v6, :cond_1

    aget v6, v2, v5

    if-gt v6, p3, :cond_1

    .line 59
    aget v6, v2, v5

    add-int/2addr v6, v3

    aput v6, v2, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_6

    .line 60
    aget v6, v2, v5

    if-le v6, p3, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v6, 0x4

    if-ge p1, v1, :cond_3

    .line 61
    invoke-virtual {v0, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 62
    aget v7, v2, v6

    add-int/2addr v7, v3

    aput v7, v2, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 63
    :cond_3
    aget p2, v2, v6

    if-le p2, p3, :cond_4

    return v4

    :cond_4
    const/4 p2, 0x0

    .line 64
    aget p2, v2, p2

    aget p3, v2, v3

    add-int/2addr p2, p3

    const/4 p3, 0x2

    aget v0, v2, p3

    add-int/2addr p2, v0

    aget v0, v2, v5

    add-int/2addr p2, v0

    aget v0, v2, v6

    add-int/2addr p2, v0

    sub-int/2addr p2, p4

    .line 65
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    mul-int/lit8 p4, p4, 0x2

    if-lt p2, p4, :cond_5

    return v4

    .line 66
    :cond_5
    invoke-static {v2, v3}, Lcom/huawei/hms/scankit/p/tc;->a([IZ)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-static {v2, p1}, Lcom/huawei/hms/scankit/p/tc;->a([II)F

    move-result v4

    :cond_6
    :goto_2
    return v4
.end method

.method private b(IIIIZ)F
    .locals 9

    .line 25
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    .line 26
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v1

    .line 27
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/tc;->d()[I

    move-result-object v2

    .line 28
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/huawei/hms/scankit/p/tc;->b(III[I)Z

    move-result v3

    const/high16 v4, 0x7fc00000    # Float.NaN

    if-eqz v3, :cond_0

    return v4

    :cond_0
    const/4 v3, 0x1

    add-int/2addr p1, v3

    :goto_0
    const/4 v5, 0x2

    if-ge p1, v1, :cond_1

    .line 29
    invoke-virtual {v0, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 30
    aget v6, v2, v5

    add-int/2addr v6, v3

    aput v6, v2, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    return v4

    :cond_2
    :goto_1
    const/4 v6, 0x3

    if-ge p1, v1, :cond_3

    .line 31
    invoke-virtual {v0, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v7

    if-nez v7, :cond_3

    aget v7, v2, v6

    if-ge v7, p3, :cond_3

    .line 32
    aget v7, v2, v6

    add-int/2addr v7, v3

    aput v7, v2, v6

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    if-eq p1, v1, :cond_9

    .line 33
    aget v7, v2, v6

    if-lt v7, p3, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v7, 0x4

    if-ge p1, v1, :cond_5

    .line 34
    invoke-virtual {v0, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v8

    if-eqz v8, :cond_5

    aget v8, v2, v7

    if-ge v8, p3, :cond_5

    .line 35
    aget v8, v2, v7

    add-int/2addr v8, v3

    aput v8, v2, v7

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 36
    :cond_5
    aget p2, v2, v7

    if-lt p2, p3, :cond_6

    sget-boolean p2, Lcom/huawei/hms/scankit/p/tc;->d:Z

    if-nez p2, :cond_6

    sget-boolean p2, Lcom/huawei/hms/scankit/p/tc;->c:Z

    if-nez p2, :cond_6

    return v4

    :cond_6
    const/4 p2, 0x0

    .line 37
    aget p2, v2, p2

    aget p3, v2, v3

    add-int/2addr p2, p3

    aget p3, v2, v5

    add-int/2addr p2, p3

    aget p3, v2, v6

    add-int/2addr p2, p3

    aget p3, v2, v7

    add-int/2addr p2, p3

    if-eqz p5, :cond_7

    sub-int/2addr p2, p4

    .line 38
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x5

    mul-int/lit8 p4, p4, 0x3

    if-lt p2, p4, :cond_8

    sget-boolean p2, Lcom/huawei/hms/scankit/p/tc;->d:Z

    if-nez p2, :cond_8

    sget-boolean p2, Lcom/huawei/hms/scankit/p/tc;->c:Z

    if-nez p2, :cond_8

    return v4

    :cond_7
    mul-int/lit8 p3, p4, 0x3

    if-ge p2, p3, :cond_9

    mul-int/lit8 p2, p2, 0x3

    if-gt p2, p4, :cond_8

    goto :goto_3

    .line 39
    :cond_8
    invoke-static {v2, p5}, Lcom/huawei/hms/scankit/p/tc;->a([IZ)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {v2, p1}, Lcom/huawei/hms/scankit/p/tc;->a([II)F

    move-result v4

    :cond_9
    :goto_3
    return v4
.end method

.method private b(III[I)Z
    .locals 4

    .line 40
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    :goto_0
    const/4 v1, 0x1

    if-ltz p1, :cond_0

    .line 41
    invoke-virtual {v0, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    .line 42
    aget v3, p4, v2

    add-int/2addr v3, v1

    aput v3, p4, v2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    return v1

    :cond_1
    :goto_1
    if-ltz p1, :cond_2

    .line 43
    invoke-virtual {v0, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v2

    if-nez v2, :cond_2

    aget v2, p4, v1

    if-gt v2, p3, :cond_2

    .line 44
    aget v2, p4, v1

    add-int/2addr v2, v1

    aput v2, p4, v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    if-ltz p1, :cond_6

    .line 45
    aget v2, p4, v1

    if-le v2, p3, :cond_3

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v2, 0x0

    if-ltz p1, :cond_4

    .line 46
    invoke-virtual {v0, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v3

    if-eqz v3, :cond_4

    aget v3, p4, v2

    if-gt v3, p3, :cond_4

    .line 47
    aget v3, p4, v2

    add-int/2addr v3, v1

    aput v3, p4, v2

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 48
    :cond_4
    aget p1, p4, v2

    if-le p1, p3, :cond_5

    sget-boolean p1, Lcom/huawei/hms/scankit/p/tc;->d:Z

    if-nez p1, :cond_5

    sget-boolean p1, Lcom/huawei/hms/scankit/p/tc;->c:Z

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v2

    :cond_6
    :goto_3
    return v1
.end method

.method protected static b([I)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 49
    aget v3, p0, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    if-ge v2, v1, :cond_2

    return v0

    :cond_2
    int-to-float v1, v2

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, v1

    .line 50
    aget v3, p0, v0

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 51
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x1

    cmpg-float v3, v3, v2

    if-gez v3, :cond_3

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float v3, v3, v1

    aget v5, p0, v4

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 52
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_3

    const/4 v3, 0x2

    aget p0, p0, v3

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 53
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private b([I[I)Z
    .locals 7

    const/4 v0, 0x0

    .line 1
    aget v1, p2, v0

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_7

    .line 2
    aget v1, p2, v0

    const/4 v3, 0x4

    if-ne v1, v3, :cond_6

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hms/scankit/p/tc;->a([IZ)Z

    move-result v1

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    .line 4
    aget v1, p2, v2

    aget v5, p2, v4

    invoke-virtual {p0, p1, v1, v5, v0}, Lcom/huawei/hms/scankit/p/tc;->a([IIIZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    aput v4, p2, v3

    :cond_0
    if-nez v1, :cond_1

    .line 6
    aget v1, p2, v2

    aget v3, p2, v4

    invoke-virtual {p0, p1, v1, v3}, Lcom/huawei/hms/scankit/p/tc;->a([III)Z

    move-result v1

    :cond_1
    if-eqz v1, :cond_2

    .line 7
    aput v0, p2, v0

    .line 8
    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/p/tc;->a([I)V

    return v2

    .line 9
    :cond_2
    invoke-static {p1}, Lcom/huawei/hms/scankit/p/tc;->b([I)Z

    move-result v1

    const/4 v3, 0x3

    if-eqz v1, :cond_4

    .line 10
    aget v1, p2, v4

    .line 11
    aget v5, p2, v0

    :goto_0
    if-le v5, v4, :cond_3

    .line 12
    aget v6, p1, v5

    sub-int/2addr v1, v6

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 13
    :cond_3
    aget v5, p2, v2

    invoke-virtual {p0, p1, v5, v1}, Lcom/huawei/hms/scankit/p/tc;->b([III)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 14
    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/p/tc;->d([I)V

    .line 15
    aput v3, p2, v0

    return v2

    .line 16
    :cond_4
    sget-boolean v1, Lcom/huawei/hms/scankit/p/Bc;->d:Z

    if-eqz v1, :cond_5

    .line 17
    invoke-static {p1, v2}, Lcom/huawei/hms/scankit/p/tc;->a([IZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 18
    aget v1, p2, v2

    aget v4, p2, v4

    invoke-virtual {p0, p1, v1, v4, v2}, Lcom/huawei/hms/scankit/p/tc;->a([IIIZ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 19
    aput v0, p2, v0

    .line 20
    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/p/tc;->a([I)V

    return v2

    .line 21
    :cond_5
    invoke-virtual {p0, p1}, Lcom/huawei/hms/scankit/p/tc;->d([I)V

    .line 22
    aput v3, p2, v0

    goto :goto_1

    .line 23
    :cond_6
    aget v1, p2, v0

    add-int/2addr v1, v2

    aput v1, p2, v0

    aget p2, p1, v1

    add-int/2addr p2, v2

    aput p2, p1, v1

    goto :goto_1

    .line 24
    :cond_7
    aget p2, p2, v0

    aget v1, p1, p2

    add-int/2addr v1, v2

    aput v1, p1, p2

    :goto_1
    return v0
.end method

.method private b()[Lcom/huawei/hms/scankit/p/rc;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/scankit/p/rc;

    .line 77
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/scankit/p/rc;

    .line 78
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v4

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v5

    const/4 v6, 0x2

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    new-array v4, v6, [F

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v5

    aput v5, v4, v1

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v5

    aput v5, v4, v3

    goto :goto_0

    :cond_0
    new-array v4, v6, [F

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v5

    aput v5, v4, v1

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v5

    aput v5, v4, v3

    .line 79
    :goto_0
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v5

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v7

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1

    new-array v5, v6, [F

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v7

    aput v7, v5, v1

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v7

    aput v7, v5, v3

    goto :goto_1

    :cond_1
    new-array v5, v6, [F

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v7

    aput v7, v5, v1

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v7

    aput v7, v5, v3

    .line 80
    :goto_1
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v7

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float v12, v7, v8

    .line 81
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v0

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x40e00000    # 7.0f

    mul-float v0, v0, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    div-float/2addr v0, v2

    .line 82
    aget v2, v4, v1

    aget v7, v4, v3

    sub-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_2

    aget v2, v5, v1

    aget v7, v5, v3

    sub-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_2

    .line 83
    aget v0, v4, v1

    aget v2, v5, v1

    add-float/2addr v0, v2

    aget v2, v5, v3

    sub-float v10, v0, v2

    .line 84
    aget v0, v5, v1

    aget v2, v4, v3

    add-float/2addr v0, v2

    aget v2, v4, v1

    sub-float v11, v0, v2

    .line 85
    new-instance v0, Lcom/huawei/hms/scankit/p/rc;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/huawei/hms/scankit/p/rc;-><init>(FFFZI)V

    .line 86
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 87
    :cond_2
    aget v2, v4, v1

    aget v7, v4, v3

    sub-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v0

    if-gtz v2, :cond_4

    aget v2, v5, v1

    aget v7, v5, v3

    sub-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_4

    .line 88
    aget v0, v4, v1

    aget v2, v4, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 89
    aget v0, v4, v3

    aget v2, v5, v1

    add-float/2addr v0, v2

    aget v2, v5, v3

    sub-float v10, v0, v2

    .line 90
    aget v0, v5, v3

    aget v2, v4, v3

    add-float/2addr v0, v2

    aget v2, v4, v1

    sub-float v11, v0, v2

    .line 91
    new-instance v0, Lcom/huawei/hms/scankit/p/rc;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/huawei/hms/scankit/p/rc;-><init>(FFFZI)V

    .line 92
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 93
    :cond_3
    aget v0, v4, v1

    aget v2, v5, v3

    add-float/2addr v0, v2

    aget v2, v5, v1

    sub-float v10, v0, v2

    .line 94
    aget v0, v5, v1

    aget v2, v4, v1

    add-float/2addr v0, v2

    aget v2, v4, v3

    sub-float v11, v0, v2

    .line 95
    new-instance v0, Lcom/huawei/hms/scankit/p/rc;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/huawei/hms/scankit/p/rc;-><init>(FFFZI)V

    .line 96
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 97
    :cond_4
    aget v2, v4, v1

    aget v7, v4, v3

    sub-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v0

    if-lez v2, :cond_5

    aget v2, v5, v1

    aget v7, v5, v3

    sub-float/2addr v2, v7

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v0, v2, v0

    if-lez v0, :cond_5

    .line 98
    aget v0, v4, v1

    aget v2, v4, v3

    add-float/2addr v0, v2

    aget v2, v5, v3

    add-float/2addr v0, v2

    aget v2, v5, v1

    sub-float/2addr v0, v2

    div-float v10, v0, v8

    .line 99
    aget v0, v5, v1

    aget v2, v5, v3

    add-float/2addr v0, v2

    aget v2, v4, v1

    add-float/2addr v0, v2

    aget v2, v4, v3

    sub-float/2addr v0, v2

    div-float v11, v0, v8

    .line 100
    new-instance v0, Lcom/huawei/hms/scankit/p/rc;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/huawei/hms/scankit/p/rc;-><init>(FFFZI)V

    .line 101
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    new-array v0, v2, [Lcom/huawei/hms/scankit/p/rc;

    .line 103
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    .line 104
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/scankit/p/rc;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    .line 105
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/scankit/p/rc;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    .line 106
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/scankit/p/rc;

    aput-object v1, v0, v6

    return-object v0

    .line 107
    :cond_6
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0
.end method

.method private c(III[I)Z
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    :goto_0
    const/4 v1, 0x1

    if-ltz p1, :cond_0

    .line 31
    invoke-virtual {v0, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v2

    if-nez v2, :cond_0

    aget v2, p4, v1

    if-gt v2, p3, :cond_0

    .line 32
    aget v2, p4, v1

    add-int/2addr v2, v1

    aput v2, p4, v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_4

    .line 33
    aget v2, p4, v1

    if-le v2, p3, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v2, 0x0

    if-ltz p1, :cond_2

    .line 34
    invoke-virtual {v0, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v3

    if-eqz v3, :cond_2

    aget v3, p4, v2

    if-gt v3, p3, :cond_2

    .line 35
    aget v3, p4, v2

    add-int/2addr v3, v1

    aput v3, p4, v2

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 36
    :cond_2
    aget p1, p4, v2

    if-le p1, p3, :cond_3

    return v1

    :cond_3
    return v2

    :cond_4
    :goto_2
    return v1
.end method

.method protected static c([I)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v1, v3, :cond_1

    .line 23
    aget v3, p0, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x7

    if-ge v2, v1, :cond_2

    return v0

    :cond_2
    int-to-float v1, v2

    const/high16 v2, 0x40e00000    # 7.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v2, v2, v1

    .line 24
    aget v3, p0, v0

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 25
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v4, 0x1

    cmpg-float v3, v3, v2

    if-gez v3, :cond_3

    aget v3, p0, v4

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 26
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_3

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v5, v1, v3

    const/4 v6, 0x2

    aget v6, p0, v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    .line 27
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v3, v3, v2

    cmpg-float v3, v5, v3

    if-gez v3, :cond_3

    const/4 v3, 0x3

    aget v3, p0, v3

    int-to-float v3, v3

    sub-float v3, v1, v3

    .line 28
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_3

    const/4 v3, 0x4

    aget p0, p0, v3

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 29
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private c()[Lcom/huawei/hms/scankit/p/rc;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    .line 2
    invoke-direct {p0, v2}, Lcom/huawei/hms/scankit/p/tc;->a(Z)[Lcom/huawei/hms/scankit/p/rc;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v1, :cond_2

    .line 4
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hms/scankit/p/rc;

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v3

    iget-object v5, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hms/scankit/p/rc;

    invoke-virtual {v5}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    .line 5
    :goto_1
    iget-object v5, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hms/scankit/p/rc;

    invoke-virtual {v5}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v5

    iget-object v6, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hms/scankit/p/rc;

    invoke-virtual {v6}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 6
    iget-object v6, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hms/scankit/p/rc;

    invoke-virtual {v6}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v6

    iget-object v7, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/huawei/hms/scankit/p/rc;

    invoke-virtual {v7}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    div-float/2addr v6, v5

    float-to-double v5, v6

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    cmpl-double v9, v5, v7

    if-lez v9, :cond_2

    .line 7
    iget-object v5, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hms/scankit/p/rc;

    .line 8
    iget-object v5, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 9
    iget-object v5, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_2
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_3

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/tc;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 11
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/tc;->g()[Lcom/huawei/hms/scankit/p/rc;

    move-result-object v0

    .line 12
    :cond_3
    iget-object v3, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_4

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/tc;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_4

    .line 13
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/tc;->h:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/tc;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 15
    :cond_4
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 16
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/tc;->h()[Lcom/huawei/hms/scankit/p/rc;

    move-result-object v0
    :try_end_0
    .catch Lcom/huawei/hms/scankit/aiscan/common/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 17
    :catch_0
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/tc;->b()[Lcom/huawei/hms/scankit/p/rc;

    move-result-object v0

    .line 18
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 19
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/tc;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_6

    .line 21
    invoke-direct {p0, v4}, Lcom/huawei/hms/scankit/p/tc;->a(Z)[Lcom/huawei/hms/scankit/p/rc;

    move-result-object v0

    goto :goto_3

    .line 22
    :cond_6
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/tc;->f()[Lcom/huawei/hms/scankit/p/rc;

    move-result-object v0

    :cond_7
    :goto_3
    return-object v0
.end method

.method private d(III[I)Z
    .locals 4

    .line 8
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ltz p1, :cond_0

    .line 9
    invoke-virtual {v0, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v3

    if-nez v3, :cond_0

    aget v3, p4, v1

    if-gt v3, p3, :cond_0

    .line 10
    aget v3, p4, v1

    add-int/2addr v3, v2

    aput v3, p4, v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_8

    .line 11
    aget v1, p4, v1

    if-le v1, p3, :cond_1

    goto :goto_4

    :cond_1
    :goto_1
    const/4 v1, 0x2

    if-ltz p1, :cond_2

    .line 12
    invoke-virtual {v0, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v3

    if-eqz v3, :cond_2

    aget v3, p4, v1

    if-gt v3, p3, :cond_2

    .line 13
    aget v3, p4, v1

    add-int/2addr v3, v2

    aput v3, p4, v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    if-ltz p1, :cond_8

    .line 14
    aget v1, p4, v1

    if-le v1, p3, :cond_3

    goto :goto_4

    :cond_3
    :goto_2
    if-ltz p1, :cond_4

    .line 15
    invoke-virtual {v0, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v1

    if-nez v1, :cond_4

    aget v1, p4, v2

    if-gt v1, p3, :cond_4

    .line 16
    aget v1, p4, v2

    add-int/2addr v1, v2

    aput v1, p4, v2

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_4
    if-ltz p1, :cond_8

    .line 17
    aget v1, p4, v2

    if-le v1, p3, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v1, 0x0

    if-ltz p1, :cond_6

    .line 18
    invoke-virtual {v0, p2, p1}, Lcom/huawei/hms/scankit/p/bb;->b(II)Z

    move-result v3

    if-eqz v3, :cond_6

    aget v3, p4, v1

    if-gt v3, p3, :cond_6

    .line 19
    aget v3, p4, v1

    add-int/2addr v3, v2

    aput v3, p4, v1

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 20
    :cond_6
    aget p1, p4, v1

    if-le p1, p3, :cond_7

    return v2

    :cond_7
    return v1

    :cond_8
    :goto_4
    return v2
.end method

.method private d()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->i:[I

    invoke-virtual {p0, v0}, Lcom/huawei/hms/scankit/p/tc;->a([I)V

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->i:[I

    return-object v0
.end method

.method private static e()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-boolean v0, Lcom/huawei/hms/scankit/p/tc;->c:Z

    .line 2
    sput-boolean v0, Lcom/huawei/hms/scankit/p/tc;->d:Z

    return-void
.end method

.method private f()[Lcom/huawei/hms/scankit/p/rc;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v0, v1, :cond_2

    .line 2
    iget-object v6, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/hms/scankit/p/rc;

    .line 3
    invoke-virtual {v9}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v9

    add-float/2addr v7, v9

    mul-float v9, v9, v9

    add-float/2addr v8, v9

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    div-float/2addr v7, v0

    div-float/2addr v8, v0

    mul-float v0, v7, v7

    sub-float/2addr v8, v0

    float-to-double v8, v8

    .line 4
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v0, v8

    .line 5
    iget-object v6, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    new-instance v8, Lcom/huawei/hms/scankit/p/tc$c;

    invoke-direct {v8, v7, v2}, Lcom/huawei/hms/scankit/p/tc$c;-><init>(FLcom/huawei/hms/scankit/p/sc;)V

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v6, 0x3e4ccccd    # 0.2f

    mul-float v6, v6, v7

    .line 6
    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/4 v6, 0x0

    .line 7
    :goto_1
    iget-object v8, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_2

    iget-object v8, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v1, :cond_2

    .line 8
    iget-object v8, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huawei/hms/scankit/p/rc;

    .line 9
    invoke-virtual {v8}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v8

    sub-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v8, v8, v0

    if-lez v8, :cond_1

    .line 10
    iget-object v8, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    :cond_1
    add-int/2addr v6, v4

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 12
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/huawei/hms/scankit/p/rc;

    .line 13
    invoke-virtual {v6}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v6

    add-float/2addr v3, v6

    goto :goto_2

    .line 14
    :cond_3
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    .line 15
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    new-instance v6, Lcom/huawei/hms/scankit/p/tc$a;

    invoke-direct {v6, v3, v2}, Lcom/huawei/hms/scankit/p/tc$a;-><init>(FLcom/huawei/hms/scankit/p/sc;)V

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 16
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_4
    new-array v0, v1, [D

    .line 17
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/scankit/p/rc;

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hms/scankit/p/rc;

    invoke-static {v2, v3}, Lcom/huawei/hms/scankit/p/tc;->a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;)D

    move-result-wide v2

    aput-wide v2, v0, v5

    .line 18
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/scankit/p/rc;

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    const/4 v6, 0x2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hms/scankit/p/rc;

    invoke-static {v2, v3}, Lcom/huawei/hms/scankit/p/tc;->a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;)D

    move-result-wide v2

    aput-wide v2, v0, v4

    .line 19
    iget-object v2, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/scankit/p/rc;

    iget-object v3, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hms/scankit/p/rc;

    invoke-static {v2, v3}, Lcom/huawei/hms/scankit/p/tc;->a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;)D

    move-result-wide v2

    aput-wide v2, v0, v6

    .line 20
    invoke-static {v0}, Ljava/util/Arrays;->sort([D)V

    .line 21
    aget-wide v2, v0, v4

    aget-wide v7, v0, v5

    add-double/2addr v2, v7

    aget-wide v7, v0, v6

    sub-double/2addr v2, v7

    aget-wide v7, v0, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    mul-double v7, v7, v9

    aget-wide v9, v0, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    div-double/2addr v2, v7

    .line 22
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v7, 0x3fd0000000000000L    # 0.25

    cmpl-double v0, v2, v7

    if-gtz v0, :cond_5

    new-array v0, v1, [Lcom/huawei/hms/scankit/p/rc;

    .line 23
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    .line 24
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/scankit/p/rc;

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    .line 25
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/scankit/p/rc;

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    .line 26
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/scankit/p/rc;

    aput-object v1, v0, v6

    return-object v0

    .line 27
    :cond_5
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0

    .line 28
    :cond_6
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0
.end method

.method private g()[Lcom/huawei/hms/scankit/p/rc;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/huawei/hms/scankit/p/tc;->h:Ljava/util/List;

    sget-object v2, Lcom/huawei/hms/scankit/p/tc;->e:Lcom/huawei/hms/scankit/p/tc$b;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v1, 0x3

    new-array v2, v1, [D

    new-array v1, v1, [Lcom/huawei/hms/scankit/p/rc;

    const/4 v6, 0x0

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 2
    :goto_0
    iget-object v9, v0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_7

    .line 3
    iget-object v9, v0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/huawei/hms/scankit/p/rc;

    .line 4
    invoke-virtual {v9}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v10

    const/4 v11, 0x0

    .line 5
    :goto_1
    iget-object v12, v0, Lcom/huawei/hms/scankit/p/tc;->h:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    if-ge v11, v12, :cond_6

    .line 6
    iget-object v12, v0, Lcom/huawei/hms/scankit/p/tc;->h:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/huawei/hms/scankit/p/rc;

    .line 7
    invoke-virtual {v12}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v14

    div-float/2addr v14, v10

    float-to-double v14, v14

    const-wide/high16 v16, 0x3ff4000000000000L    # 1.25

    cmpl-double v18, v14, v16

    if-gtz v18, :cond_5

    const-wide/high16 v18, 0x3fe8000000000000L    # 0.75

    cmpg-double v20, v14, v18

    if-gez v20, :cond_0

    goto/16 :goto_5

    .line 8
    :cond_0
    invoke-static {v9, v12}, Lcom/huawei/hms/scankit/p/tc;->a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;)D

    move-result-wide v14

    .line 9
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    const/high16 v22, 0x41500000    # 13.0f

    mul-float v3, v10, v22

    float-to-double v3, v3

    cmpg-double v22, v20, v3

    if-gez v22, :cond_1

    goto/16 :goto_5

    :cond_1
    add-int/lit8 v3, v11, 0x1

    .line 10
    :goto_2
    iget-object v4, v0, Lcom/huawei/hms/scankit/p/tc;->h:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 11
    iget-object v4, v0, Lcom/huawei/hms/scankit/p/tc;->h:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huawei/hms/scankit/p/rc;

    .line 12
    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v20

    div-float v13, v20, v10

    move/from16 v22, v6

    float-to-double v5, v13

    cmpl-double v13, v5, v16

    if-gtz v13, :cond_4

    cmpg-double v13, v5, v18

    if-gez v13, :cond_2

    goto :goto_3

    :cond_2
    const/4 v5, 0x0

    aput-wide v14, v2, v5

    .line 13
    invoke-static {v12, v4}, Lcom/huawei/hms/scankit/p/tc;->a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;)D

    move-result-wide v5

    const/4 v13, 0x1

    aput-wide v5, v2, v13

    .line 14
    invoke-static {v9, v4}, Lcom/huawei/hms/scankit/p/tc;->a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;)D

    move-result-wide v5

    const/16 v23, 0x2

    aput-wide v5, v2, v23

    .line 15
    invoke-static {v2}, Ljava/util/Arrays;->sort([D)V

    .line 16
    aget-wide v5, v2, v23

    aget-wide v24, v2, v13

    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v24, v24, v26

    sub-double v5, v5, v24

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    aget-wide v24, v2, v23

    const/4 v13, 0x0

    aget-wide v28, v2, v13

    mul-double v28, v28, v26

    sub-double v24, v24, v28

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    add-double v5, v5, v24

    aget-wide v24, v2, v23

    div-double v5, v5, v24

    const/16 v21, 0x1

    .line 17
    aget-wide v24, v2, v21

    aget-wide v28, v2, v13

    add-double v24, v24, v28

    aget-wide v28, v2, v23

    sub-double v24, v24, v28

    aget-wide v28, v2, v13

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v28

    mul-double v28, v28, v26

    aget-wide v26, v2, v21

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    mul-double v28, v28, v26

    div-double v24, v24, v28

    cmpg-double v13, v5, v7

    if-gez v13, :cond_3

    .line 18
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    const-wide v26, 0x3fc999999999999aL    # 0.2

    cmpg-double v13, v24, v26

    if-gez v13, :cond_3

    const/4 v13, 0x0

    aput-object v9, v1, v13

    aput-object v12, v1, v21

    aput-object v4, v1, v23

    move-wide v7, v5

    goto :goto_4

    :cond_3
    const/4 v13, 0x0

    goto :goto_4

    :cond_4
    :goto_3
    const/4 v13, 0x0

    const/16 v21, 0x1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move/from16 v6, v22

    const/4 v13, 0x1

    goto/16 :goto_2

    :cond_5
    :goto_5
    move/from16 v22, v6

    const/4 v13, 0x0

    add-int/lit8 v11, v11, 0x1

    move/from16 v6, v22

    goto/16 :goto_1

    :cond_6
    move/from16 v22, v6

    const/4 v13, 0x0

    add-int/lit8 v6, v22, 0x1

    goto/16 :goto_0

    :cond_7
    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v2, v7, v3

    if-eqz v2, :cond_8

    return-object v1

    .line 19
    :cond_8
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v1

    throw v1
.end method

.method private h()[Lcom/huawei/hms/scankit/p/rc;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/scankit/p/rc;

    .line 2
    iget-object v3, v0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hms/scankit/p/rc;

    .line 3
    iget-object v5, v0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/huawei/hms/scankit/p/rc;

    .line 4
    invoke-static {v1, v3}, Lcom/huawei/hms/scankit/p/tc;->a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;)D

    move-result-wide v6

    const/4 v8, 0x3

    new-array v9, v8, [D

    .line 5
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v10

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    .line 6
    iget-object v11, v0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    new-instance v12, Lcom/huawei/hms/scankit/p/tc$c;

    const/4 v13, 0x0

    invoke-direct {v12, v10, v13}, Lcom/huawei/hms/scankit/p/tc$c;-><init>(FLcom/huawei/hms/scankit/p/sc;)V

    invoke-static {v11, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v13, 0x0

    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 7
    :goto_0
    iget-object v8, v0, Lcom/huawei/hms/scankit/p/tc;->h:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x2

    if-ge v13, v8, :cond_10

    .line 8
    iget-object v8, v0, Lcom/huawei/hms/scankit/p/tc;->h:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/huawei/hms/scankit/p/rc;

    .line 9
    invoke-virtual {v8}, Lcom/huawei/hms/scankit/p/rc;->e()F

    move-result v12

    const/high16 v16, 0x3fa00000    # 1.25f

    mul-float v16, v16, v10

    cmpl-float v16, v12, v16

    if-gtz v16, :cond_e

    const/high16 v16, 0x3f400000    # 0.75f

    mul-float v16, v16, v10

    cmpg-float v12, v12, v16

    if-gez v12, :cond_0

    goto/16 :goto_9

    :cond_0
    aput-wide v6, v9, v2

    .line 10
    invoke-static {v3, v8}, Lcom/huawei/hms/scankit/p/tc;->a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;)D

    move-result-wide v16

    aput-wide v16, v9, v4

    .line 11
    invoke-static {v1, v8}, Lcom/huawei/hms/scankit/p/tc;->a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;)D

    move-result-wide v16

    aput-wide v16, v9, v11

    .line 12
    invoke-static {v9}, Ljava/util/Arrays;->sort([D)V

    .line 13
    aget-wide v16, v9, v11

    aget-wide v18, v9, v4

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v18, v18, v20

    sub-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    aget-wide v18, v9, v11

    aget-wide v22, v9, v2

    mul-double v22, v22, v20

    sub-double v18, v18, v22

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    add-double v16, v16, v18

    aget-wide v18, v9, v11

    div-double v16, v16, v18

    .line 14
    aget-wide v18, v9, v4

    aget-wide v22, v9, v2

    add-double v18, v18, v22

    aget-wide v11, v9, v11

    sub-double v18, v18, v11

    aget-wide v11, v9, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    mul-double v11, v11, v20

    aget-wide v20, v9, v4

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    mul-double v11, v11, v20

    div-double v18, v18, v11

    .line 15
    sget-boolean v11, Lcom/huawei/hms/scankit/p/Bc;->d:Z

    const-wide/high16 v20, 0x3fd0000000000000L    # 0.25

    if-eqz v11, :cond_c

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpg-double v22, v11, v20

    if-gez v22, :cond_c

    const v11, 0x3e99999a    # 0.3f

    .line 16
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v12

    iget-object v4, v0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v4}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v11

    const v23, 0x3f333333    # 0.7f

    cmpg-float v4, v12, v4

    if-gez v4, :cond_1

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v4

    iget-object v12, v0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v12}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v23

    cmpl-float v4, v4, v12

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 17
    :goto_1
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v12

    iget-object v2, v0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v11

    cmpg-float v2, v12, v2

    if-gez v2, :cond_2

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v2

    iget-object v12, v0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v12}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v23

    cmpl-float v2, v2, v12

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 18
    :goto_2
    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v12

    iget-object v11, v0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v11}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v11

    int-to-float v11, v11

    const v24, 0x3e99999a    # 0.3f

    mul-float v11, v11, v24

    cmpg-float v11, v12, v11

    if-gez v11, :cond_3

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v11

    iget-object v12, v0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v12}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v23

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    const/4 v11, 0x1

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    .line 19
    :goto_3
    invoke-virtual {v3}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v12

    move-object/from16 v25, v3

    iget-object v3, v0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v3}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v3

    int-to-float v3, v3

    const v24, 0x3e99999a    # 0.3f

    mul-float v3, v3, v24

    cmpg-float v3, v12, v3

    if-gez v3, :cond_4

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v3

    iget-object v12, v0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v12}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v23

    cmpl-float v3, v3, v12

    if-lez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_4

    :cond_4
    const/4 v3, 0x0

    .line 20
    :goto_4
    invoke-virtual {v8}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v12

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v1

    int-to-float v1, v1

    const v24, 0x3e99999a    # 0.3f

    mul-float v1, v1, v24

    cmpg-float v1, v12, v1

    if-ltz v1, :cond_6

    invoke-virtual {v8}, Lcom/huawei/hms/scankit/aiscan/common/z;->b()F

    move-result v1

    iget-object v12, v0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v12}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v12

    int-to-float v12, v12

    mul-float v12, v12, v23

    cmpl-float v1, v1, v12

    if-lez v1, :cond_5

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    goto :goto_6

    :cond_6
    :goto_5
    const/4 v1, 0x1

    .line 21
    :goto_6
    invoke-virtual {v8}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v12

    move-wide/from16 v27, v6

    iget-object v6, v0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v6}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3e99999a    # 0.3f

    mul-float v6, v6, v7

    cmpg-float v6, v12, v6

    if-ltz v6, :cond_8

    invoke-virtual {v8}, Lcom/huawei/hms/scankit/aiscan/common/z;->c()F

    move-result v6

    iget-object v7, v0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v7}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v23

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    goto :goto_7

    :cond_7
    const/4 v6, 0x0

    goto :goto_8

    :cond_8
    :goto_7
    const/4 v6, 0x1

    :goto_8
    if-nez v4, :cond_9

    if-eqz v2, :cond_a

    :cond_9
    if-nez v1, :cond_a

    goto :goto_a

    :cond_a
    if-nez v11, :cond_b

    if-eqz v3, :cond_d

    :cond_b
    if-nez v6, :cond_d

    goto :goto_a

    :cond_c
    move-object/from16 v26, v1

    move-object/from16 v25, v3

    move-wide/from16 v27, v6

    :cond_d
    cmpg-double v1, v16, v14

    if-gez v1, :cond_f

    .line 22
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpg-double v3, v1, v20

    if-gez v3, :cond_f

    move-object v5, v8

    move-wide/from16 v14, v16

    goto :goto_a

    :cond_e
    :goto_9
    move-object/from16 v26, v1

    move-object/from16 v25, v3

    move-wide/from16 v27, v6

    :cond_f
    :goto_a
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v25

    move-object/from16 v1, v26

    move-wide/from16 v6, v27

    const/4 v2, 0x0

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_10
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v3, v14, v1

    if-eqz v3, :cond_11

    .line 23
    iget-object v1, v0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/huawei/hms/scankit/p/rc;

    .line 24
    iget-object v2, v0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    const/4 v3, 0x0

    .line 25
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/scankit/p/rc;

    aput-object v2, v1, v3

    iget-object v2, v0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    const/4 v3, 0x1

    .line 26
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/scankit/p/rc;

    aput-object v2, v1, v3

    iget-object v2, v0, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    .line 27
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/scankit/p/rc;

    aput-object v2, v1, v11

    return-object v1

    .line 28
    :cond_11
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v1

    throw v1
.end method


# virtual methods
.method final a()Lcom/huawei/hms/scankit/p/uc;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/scankit/aiscan/common/a;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v1

    mul-int/lit8 v2, v0, 0x3

    .line 8
    div-int/lit16 v2, v2, 0x184

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    const/4 v2, 0x3

    .line 9
    :cond_0
    sget-boolean v3, Lcom/huawei/hms/scankit/p/Bc;->i:Z

    const/4 v4, 0x2

    if-eqz v3, :cond_1

    const/4 v2, 0x2

    .line 10
    :cond_1
    invoke-direct {p0, v2, v0, v1}, Lcom/huawei/hms/scankit/p/tc;->a(III)V

    .line 11
    invoke-direct {p0}, Lcom/huawei/hms/scankit/p/tc;->c()[Lcom/huawei/hms/scankit/p/rc;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 12
    invoke-static {v0}, Lcom/huawei/hms/scankit/aiscan/common/z;->a([Lcom/huawei/hms/scankit/aiscan/common/z;)V

    const/4 v1, 0x0

    .line 13
    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v3, v0, v2

    invoke-static {v1, v3}, Lcom/huawei/hms/scankit/p/tc;->a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;)D

    move-result-wide v5

    .line 14
    aget-object v1, v0, v2

    aget-object v2, v0, v4

    invoke-static {v1, v2}, Lcom/huawei/hms/scankit/p/tc;->a(Lcom/huawei/hms/scankit/p/rc;Lcom/huawei/hms/scankit/p/rc;)D

    move-result-wide v1

    .line 15
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    mul-double v3, v3, v1

    .line 16
    iget-object v1, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/bb;->b()I

    move-result v1

    iget-object v2, p0, Lcom/huawei/hms/scankit/p/tc;->f:Lcom/huawei/hms/scankit/p/bb;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/bb;->d()I

    move-result v2

    mul-int v1, v1, v2

    int-to-double v1, v1

    div-double/2addr v1, v3

    const-wide v3, 0x408c200000000000L    # 900.0

    cmpl-double v5, v1, v3

    if-gtz v5, :cond_2

    .line 17
    new-instance v1, Lcom/huawei/hms/scankit/p/uc;

    invoke-direct {v1, v0}, Lcom/huawei/hms/scankit/p/uc;-><init>([Lcom/huawei/hms/scankit/p/rc;)V

    return-object v1

    .line 18
    :cond_2
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0

    .line 19
    :cond_3
    invoke-static {}, Lcom/huawei/hms/scankit/aiscan/common/a;->a()Lcom/huawei/hms/scankit/aiscan/common/a;

    move-result-object v0

    throw v0
.end method

.method protected final a([I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 69
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 70
    aput v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final a([III)Z
    .locals 12

    const/4 v0, 0x0

    .line 192
    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    add-int/2addr v1, v4

    const/4 v4, 0x3

    aget v5, p1, v4

    add-int/2addr v1, v5

    const/4 v5, 0x4

    aget v5, p1, v5

    add-int/2addr v1, v5

    .line 193
    invoke-static {p1, p3}, Lcom/huawei/hms/scankit/p/tc;->a([II)F

    move-result p3

    float-to-int v8, p3

    .line 194
    aget v9, p1, v3

    const/4 v11, 0x0

    move-object v6, p0

    move v7, p2

    move v10, v1

    invoke-direct/range {v6 .. v11}, Lcom/huawei/hms/scankit/p/tc;->b(IIIIZ)F

    move-result v5

    .line 195
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 196
    aget v5, p1, v3

    div-int/2addr v5, v3

    int-to-float v5, v5

    sub-float v5, p3, v5

    aget v6, p1, v2

    div-int/2addr v6, v3

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v8, v5

    aget v5, p1, v3

    div-int/2addr v5, v3

    int-to-float v5, v5

    add-float/2addr v5, p3

    aget v6, p1, v4

    div-int/2addr v6, v3

    int-to-float v6, v6

    add-float/2addr v5, v6

    float-to-int v9, v5

    aget v2, p1, v2

    aget v3, p1, v3

    add-int/2addr v2, v3

    aget p1, p1, v4

    add-int v10, v2, p1

    move-object v6, p0

    move v7, p2

    move v11, v1

    invoke-direct/range {v6 .. v11}, Lcom/huawei/hms/scankit/p/tc;->a(IIIII)F

    move-result v5

    .line 197
    :cond_0
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_1

    int-to-float p1, v1

    const/high16 p2, 0x40e00000    # 7.0f

    div-float/2addr p1, p2

    .line 198
    invoke-direct {p0, v0, v5, p3, p1}, Lcom/huawei/hms/scankit/p/tc;->a(ZFFF)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method protected final a([IIIZ)Z
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    .line 116
    aget v0, v7, v8

    const/4 v9, 0x1

    aget v1, v7, v9

    add-int/2addr v0, v1

    const/4 v10, 0x2

    aget v1, v7, v10

    add-int/2addr v0, v1

    const/4 v1, 0x3

    aget v2, v7, v1

    add-int/2addr v0, v2

    const/4 v2, 0x4

    aget v3, v7, v2

    add-int/2addr v0, v3

    .line 117
    sget-boolean v3, Lcom/huawei/hms/scankit/p/tc;->c:Z

    if-eqz v3, :cond_0

    .line 118
    aget v0, v7, v9

    aget v3, v7, v9

    add-int/2addr v0, v3

    aget v3, v7, v10

    add-int/2addr v0, v3

    aget v1, v7, v1

    add-int/2addr v0, v1

    aget v1, v7, v2

    :goto_0
    add-int/2addr v0, v1

    goto :goto_1

    .line 119
    :cond_0
    sget-boolean v2, Lcom/huawei/hms/scankit/p/tc;->d:Z

    if-eqz v2, :cond_1

    .line 120
    aget v0, v7, v8

    aget v2, v7, v9

    add-int/2addr v0, v2

    aget v2, v7, v10

    add-int/2addr v0, v2

    aget v2, v7, v1

    add-int/2addr v0, v2

    aget v1, v7, v1

    goto :goto_0

    :cond_1
    :goto_1
    move v11, v0

    move/from16 v0, p3

    .line 121
    invoke-static {v7, v0}, Lcom/huawei/hms/scankit/p/tc;->a([II)F

    move-result v0

    float-to-int v12, v0

    .line 122
    aget v3, v7, v10

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v12

    move v4, v11

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/scankit/p/tc;->b(IIIIZ)F

    move-result v13

    .line 123
    invoke-static {v13}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    int-to-float v0, v11

    const/high16 v1, 0x40e00000    # 7.0f

    div-float v14, v0, v1

    float-to-int v15, v13

    .line 124
    aget v3, v7, v10

    move-object/from16 v0, p0

    move v1, v12

    move v2, v15

    move v4, v11

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/huawei/hms/scankit/p/tc;->a(IIIIZ)F

    move-result v0

    .line 125
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_7

    float-to-int v1, v0

    invoke-direct {v6, v15, v1}, Lcom/huawei/hms/scankit/p/tc;->a(II)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz p4, :cond_7

    sget-boolean v1, Lcom/huawei/hms/scankit/p/tc;->d:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/huawei/hms/scankit/p/tc;->c:Z

    if-eqz v1, :cond_7

    :cond_2
    if-nez p4, :cond_6

    const/4 v1, 0x0

    .line 126
    :goto_2
    iget-object v2, v6, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 127
    iget-object v2, v6, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/scankit/p/rc;

    .line 128
    invoke-virtual {v2, v14, v13, v0}, Lcom/huawei/hms/scankit/p/rc;->a(FFF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 129
    iget-object v3, v6, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-virtual {v2, v13, v0, v14, v9}, Lcom/huawei/hms/scankit/p/rc;->a(FFFZ)Lcom/huawei/hms/scankit/p/rc;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-nez v8, :cond_5

    .line 130
    new-instance v1, Lcom/huawei/hms/scankit/p/rc;

    invoke-direct {v1, v0, v13, v14, v9}, Lcom/huawei/hms/scankit/p/rc;-><init>(FFFZ)V

    .line 131
    iget-object v0, v6, Lcom/huawei/hms/scankit/p/tc;->g:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, v6, Lcom/huawei/hms/scankit/p/tc;->j:Lcom/huawei/hms/scankit/aiscan/common/A;

    if-eqz v0, :cond_5

    .line 133
    invoke-interface {v0, v1}, Lcom/huawei/hms/scankit/aiscan/common/A;->a(Lcom/huawei/hms/scankit/aiscan/common/z;)V

    :cond_5
    return v9

    .line 134
    :cond_6
    invoke-direct {v6, v8, v13, v0, v14}, Lcom/huawei/hms/scankit/p/tc;->a(ZFFF)Z

    move-result v0

    return v0

    :cond_7
    return v8
.end method

.method protected final b([III)Z
    .locals 11

    const/4 v0, 0x0

    .line 67
    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    add-int/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p1, v3

    add-int/2addr v1, v4

    .line 68
    div-int/lit8 v4, v1, 0x2

    sub-int/2addr p3, v4

    int-to-float p3, p3

    float-to-int v4, p3

    .line 69
    aget v5, p1, v2

    invoke-direct {p0, p2, v4, v5, v1}, Lcom/huawei/hms/scankit/p/tc;->a(IIII)F

    move-result v5

    .line 70
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 71
    aget v5, p1, v2

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x5

    int-to-float v5, v5

    sub-float v5, p3, v5

    float-to-int v7, v5

    aget v5, p1, v2

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x5

    int-to-float v3, v5

    add-float/2addr v3, p3

    float-to-int v8, v3

    aget v9, p1, v2

    move-object v5, p0

    move v6, p2

    move v10, v1

    invoke-direct/range {v5 .. v10}, Lcom/huawei/hms/scankit/p/tc;->a(IIIII)F

    move-result v5

    .line 72
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/huawei/hms/scankit/p/Bc;->d:Z

    if-eqz v3, :cond_0

    .line 73
    aget p1, p1, v2

    invoke-direct {p0, p2, v4, p1, v1}, Lcom/huawei/hms/scankit/p/tc;->b(IIII)F

    move-result v5

    .line 74
    :cond_0
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-nez p1, :cond_1

    int-to-float p1, v1

    const/high16 p2, 0x40e00000    # 7.0f

    div-float/2addr p1, p2

    .line 75
    invoke-direct {p0, v0, v5, p3, p1}, Lcom/huawei/hms/scankit/p/tc;->a(ZFFF)Z

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method protected final d([I)V
    .locals 6

    const/4 v0, 0x2

    .line 3
    aget v1, p1, v0

    const/4 v2, 0x0

    aput v1, p1, v2

    const/4 v1, 0x3

    .line 4
    aget v3, p1, v1

    const/4 v4, 0x1

    aput v3, p1, v4

    const/4 v3, 0x4

    .line 5
    aget v5, p1, v3

    aput v5, p1, v0

    .line 6
    aput v4, p1, v1

    .line 7
    aput v2, p1, v3

    return-void
.end method
