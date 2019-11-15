.class public Lcom/amap/api/mapcore/util/dn;
.super Ljava/lang/Object;
.source "EarClippingTriangulator.java"


# instance fields
.field private final a:Lcom/amap/api/mapcore/util/ec;

.field private b:[S

.field private c:[D

.field private d:I

.field private final e:Lcom/amap/api/mapcore/util/ds;

.field private final f:Lcom/amap/api/mapcore/util/ec;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amap/api/mapcore/util/ec;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/ec;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dn;->a:Lcom/amap/api/mapcore/util/ec;

    new-instance v0, Lcom/amap/api/mapcore/util/ds;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/ds;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dn;->e:Lcom/amap/api/mapcore/util/ds;

    new-instance v0, Lcom/amap/api/mapcore/util/ec;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/ec;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/dn;->f:Lcom/amap/api/mapcore/util/ec;

    return-void
.end method

.method private static a(DDDDDD)I
    .locals 4

    sub-double v0, p10, p6

    mul-double/2addr v0, p0

    sub-double v2, p2, p10

    mul-double/2addr v2, p4

    add-double/2addr v0, v2

    sub-double v2, p6, p2

    mul-double/2addr v2, p8

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->signum(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private a(I)I
    .locals 12

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dn;->b:[S

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dn;->d(I)I

    move-result v1

    aget-short v1, v0, v1

    mul-int/lit8 v2, v1, 0x2

    aget-short v1, v0, p1

    mul-int/lit8 v6, v1, 0x2

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dn;->e(I)I

    move-result v1

    aget-short v0, v0, v1

    mul-int/lit8 v10, v0, 0x2

    iget-object v11, p0, Lcom/amap/api/mapcore/util/dn;->c:[D

    aget-wide v0, v11, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v2, v11, v2

    aget-wide v4, v11, v6

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v11, v6

    aget-wide v8, v11, v10

    add-int/lit8 v10, v10, 0x1

    aget-wide v10, v11, v10

    invoke-static/range {v0 .. v11}, Lcom/amap/api/mapcore/util/dn;->a(DDDDDD)I

    move-result v0

    return v0
.end method

.method private a()V
    .locals 6

    const/4 v5, 0x3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dn;->e:Lcom/amap/api/mapcore/util/ds;

    iget-object v2, v0, Lcom/amap/api/mapcore/util/ds;->a:[I

    :goto_0
    iget v0, p0, Lcom/amap/api/mapcore/util/dn;->d:I

    if-le v0, v5, :cond_1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dn;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dn;->c(I)V

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dn;->d(I)I

    move-result v3

    iget v4, p0, Lcom/amap/api/mapcore/util/dn;->d:I

    if-ne v0, v4, :cond_0

    move v0, v1

    :cond_0
    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/util/dn;->a(I)I

    move-result v4

    aput v4, v2, v3

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dn;->a(I)I

    move-result v3

    aput v3, v2, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore/util/dn;->d:I

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dn;->f:Lcom/amap/api/mapcore/util/ec;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/dn;->b:[S

    aget-short v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ec;->a(S)V

    const/4 v1, 0x1

    aget-short v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ec;->a(S)V

    const/4 v1, 0x2

    aget-short v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ec;->a(S)V

    :cond_2
    return-void
.end method

.method private b()I
    .locals 6

    const/4 v1, 0x0

    iget v2, p0, Lcom/amap/api/mapcore/util/dn;->d:I

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dn;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dn;->e:Lcom/amap/api/mapcore/util/ds;

    iget-object v3, v0, Lcom/amap/api/mapcore/util/ds;->a:[I

    move v0, v1

    :goto_2
    if-ge v0, v2, :cond_3

    aget v4, v3, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private b(I)Z
    .locals 35

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/mapcore/util/dn;->e:Lcom/amap/api/mapcore/util/ds;

    iget-object v0, v2, Lcom/amap/api/mapcore/util/ds;->a:[I

    move-object/from16 v31, v0

    aget v2, v31, p1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/amap/api/mapcore/util/dn;->d(I)I

    move-result v32

    invoke-direct/range {p0 .. p1}, Lcom/amap/api/mapcore/util/dn;->e(I)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amap/api/mapcore/util/dn;->b:[S

    move-object/from16 v33, v0

    aget-short v2, v33, v32

    mul-int/lit8 v2, v2, 0x2

    aget-short v3, v33, p1

    mul-int/lit8 v3, v3, 0x2

    aget-short v4, v33, v10

    mul-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amap/api/mapcore/util/dn;->c:[D

    move-object/from16 v34, v0

    aget-wide v6, v34, v2

    add-int/lit8 v2, v2, 0x1

    aget-wide v8, v34, v2

    aget-wide v18, v34, v3

    add-int/lit8 v2, v3, 0x1

    aget-wide v20, v34, v2

    aget-wide v2, v34, v4

    add-int/lit8 v4, v4, 0x1

    aget-wide v4, v34, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/amap/api/mapcore/util/dn;->e(I)I

    move-result v10

    move/from16 v30, v10

    :goto_1
    move/from16 v0, v30

    move/from16 v1, v32

    if-eq v0, v1, :cond_2

    aget v10, v31, v30

    const/4 v11, 0x1

    if-eq v10, v11, :cond_1

    aget-short v10, v33, v30

    mul-int/lit8 v12, v10, 0x2

    aget-wide v10, v34, v12

    add-int/lit8 v12, v12, 0x1

    aget-wide v12, v34, v12

    invoke-static/range {v2 .. v13}, Lcom/amap/api/mapcore/util/dn;->a(DDDDDD)I

    move-result v14

    if-ltz v14, :cond_1

    move-wide v14, v6

    move-wide/from16 v16, v8

    move-wide/from16 v22, v10

    move-wide/from16 v24, v12

    invoke-static/range {v14 .. v25}, Lcom/amap/api/mapcore/util/dn;->a(DDDDDD)I

    move-result v14

    if-ltz v14, :cond_1

    move-wide/from16 v22, v2

    move-wide/from16 v24, v4

    move-wide/from16 v26, v10

    move-wide/from16 v28, v12

    invoke-static/range {v18 .. v29}, Lcom/amap/api/mapcore/util/dn;->a(DDDDDD)I

    move-result v10

    if-ltz v10, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/dn;->e(I)I

    move-result v10

    move/from16 v30, v10

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private c(I)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dn;->b:[S

    iget-object v1, p0, Lcom/amap/api/mapcore/util/dn;->f:Lcom/amap/api/mapcore/util/ec;

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dn;->d(I)I

    move-result v2

    aget-short v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/ec;->a(S)V

    aget-short v2, v0, p1

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/ec;->a(S)V

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/dn;->e(I)I

    move-result v2

    aget-short v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/ec;->a(S)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dn;->a:Lcom/amap/api/mapcore/util/ec;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ec;->b(I)S

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dn;->e:Lcom/amap/api/mapcore/util/ds;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/ds;->b(I)I

    iget v0, p0, Lcom/amap/api/mapcore/util/dn;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/dn;->d:I

    return-void
.end method

.method private d(I)I
    .locals 1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/amap/api/mapcore/util/dn;->d:I

    :cond_0
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method private e(I)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/amap/api/mapcore/util/dn;->d:I

    rem-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a([D)Lcom/amap/api/mapcore/util/ec;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/amap/api/mapcore/util/dn;->a([DII)Lcom/amap/api/mapcore/util/ec;

    move-result-object v0

    return-object v0
.end method

.method public a([DII)Lcom/amap/api/mapcore/util/ec;
    .locals 7

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/dn;->c:[D

    div-int/lit8 v2, p3, 0x2

    iput v2, p0, Lcom/amap/api/mapcore/util/dn;->d:I

    div-int/lit8 v3, p2, 0x2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/dn;->a:Lcom/amap/api/mapcore/util/ec;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ec;->a()V

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/ec;->c(I)[S

    iput v2, v0, Lcom/amap/api/mapcore/util/ec;->b:I

    iget-object v4, v0, Lcom/amap/api/mapcore/util/ec;->a:[S

    iput-object v4, p0, Lcom/amap/api/mapcore/util/dn;->b:[S

    add-int/lit8 v5, v2, -0x1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_0

    add-int v6, v3, v5

    sub-int/2addr v6, v0

    int-to-short v6, v6

    aput-short v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/amap/api/mapcore/util/dn;->e:Lcom/amap/api/mapcore/util/ds;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/ds;->a()V

    invoke-virtual {v3, v2}, Lcom/amap/api/mapcore/util/ds;->c(I)[I

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/dn;->a(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amap/api/mapcore/util/ds;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/dn;->f:Lcom/amap/api/mapcore/util/ec;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ec;->a()V

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ec;->c(I)[S

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/dn;->a()V

    return-object v0
.end method
