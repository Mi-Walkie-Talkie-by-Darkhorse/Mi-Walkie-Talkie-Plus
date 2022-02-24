.class La/c/a/a/a;
.super La/c/a/a/b;
.source "ArcCurveFit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/c/a/a/a$a;
    }
.end annotation


# instance fields
.field private final a:[D

.field b:[La/c/a/a/a$a;


# direct methods
.method public constructor <init>([I[D[[D)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-direct/range {p0 .. p0}, La/c/a/a/b;-><init>()V

    .line 2
    iput-object v1, v0, La/c/a/a/a;->a:[D

    .line 3
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v2, v2, [La/c/a/a/a$a;

    iput-object v2, v0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 4
    :goto_0
    iget-object v7, v0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    array-length v7, v7

    if-ge v4, v7, :cond_5

    .line 5
    aget v7, p1, v4

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz v7, :cond_4

    if-eq v7, v3, :cond_3

    if-eq v7, v9, :cond_2

    if-eq v7, v8, :cond_0

    move/from16 v20, v6

    goto :goto_2

    :cond_0
    if-ne v5, v3, :cond_1

    const/4 v5, 0x2

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    move/from16 v20, v5

    goto :goto_2

    :cond_2
    const/4 v5, 0x2

    const/16 v20, 0x2

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    const/16 v20, 0x1

    goto :goto_2

    :cond_4
    const/16 v20, 0x3

    .line 6
    :goto_2
    iget-object v14, v0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    new-instance v21, La/c/a/a/a$a;

    aget-wide v8, v1, v4

    add-int/lit8 v22, v4, 0x1

    aget-wide v10, v1, v22

    aget-object v6, p3, v4

    aget-wide v12, v6, v2

    aget-object v6, p3, v4

    aget-wide v15, v6, v3

    aget-object v6, p3, v22

    aget-wide v17, v6, v2

    aget-object v6, p3, v22

    aget-wide v23, v6, v3

    move-object/from16 v6, v21

    move/from16 v7, v20

    move-object/from16 v25, v14

    move-wide v14, v15

    move-wide/from16 v16, v17

    move-wide/from16 v18, v23

    invoke-direct/range {v6 .. v19}, La/c/a/a/a$a;-><init>(IDDDDDD)V

    aput-object v21, v25, v4

    move/from16 v6, v20

    move/from16 v4, v22

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public a(DI)D
    .locals 5

    .line 25
    iget-object v0, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-wide v2, v2, La/c/a/a/a$a;->c:D

    cmpg-double v4, p1, v2

    if-gez v4, :cond_0

    .line 26
    aget-object p1, v0, v1

    iget-wide p1, p1, La/c/a/a/a$a;->c:D

    goto :goto_0

    .line 27
    :cond_0
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    iget-wide v2, v2, La/c/a/a/a$a;->d:D

    cmpl-double v4, p1, v2

    if-lez v4, :cond_1

    .line 28
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    iget-wide p1, p1, La/c/a/a/a$a;->d:D

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 30
    aget-object v2, v0, v1

    iget-wide v2, v2, La/c/a/a/a$a;->d:D

    cmpg-double v4, p1, v2

    if-gtz v4, :cond_5

    .line 31
    aget-object v2, v0, v1

    iget-boolean v2, v2, La/c/a/a/a$a;->r:Z

    if-eqz v2, :cond_3

    if-nez p3, :cond_2

    .line 32
    aget-object p3, v0, v1

    invoke-virtual {p3, p1, p2}, La/c/a/a/a$a;->c(D)D

    move-result-wide p1

    return-wide p1

    .line 33
    :cond_2
    aget-object p3, v0, v1

    invoke-virtual {p3, p1, p2}, La/c/a/a/a$a;->d(D)D

    move-result-wide p1

    return-wide p1

    .line 34
    :cond_3
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, La/c/a/a/a$a;->f(D)V

    if-nez p3, :cond_4

    .line 35
    iget-object p1, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    aget-object p1, p1, v1

    invoke-virtual {p1}, La/c/a/a/a$a;->c()D

    move-result-wide p1

    return-wide p1

    .line 36
    :cond_4
    iget-object p1, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    aget-object p1, p1, v1

    invoke-virtual {p1}, La/c/a/a/a$a;->d()D

    move-result-wide p1

    return-wide p1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1
.end method

.method public a(D[D)V
    .locals 7

    .line 1
    iget-object v0, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-wide v2, v2, La/c/a/a/a$a;->c:D

    cmpg-double v4, p1, v2

    if-gez v4, :cond_0

    .line 2
    aget-object p1, v0, v1

    iget-wide p1, p1, La/c/a/a/a$a;->c:D

    .line 3
    :cond_0
    iget-object v0, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v2, v0, v2

    iget-wide v4, v2, La/c/a/a/a$a;->d:D

    cmpl-double v2, p1, v4

    if-lez v2, :cond_1

    .line 4
    array-length p1, v0

    sub-int/2addr p1, v3

    aget-object p1, v0, p1

    iget-wide p1, p1, La/c/a/a/a$a;->d:D

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    array-length v4, v2

    if-ge v0, v4, :cond_4

    .line 6
    aget-object v4, v2, v0

    iget-wide v4, v4, La/c/a/a/a$a;->d:D

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_3

    .line 7
    aget-object v4, v2, v0

    iget-boolean v4, v4, La/c/a/a/a$a;->r:Z

    if-eqz v4, :cond_2

    .line 8
    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, La/c/a/a/a$a;->c(D)D

    move-result-wide v4

    aput-wide v4, p3, v1

    .line 9
    iget-object v1, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2}, La/c/a/a/a$a;->d(D)D

    move-result-wide p1

    aput-wide p1, p3, v3

    return-void

    .line 10
    :cond_2
    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, La/c/a/a/a$a;->f(D)V

    .line 11
    iget-object p1, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, La/c/a/a/a$a;->c()D

    move-result-wide p1

    aput-wide p1, p3, v1

    .line 12
    iget-object p1, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, La/c/a/a/a$a;->d()D

    move-result-wide p1

    aput-wide p1, p3, v3

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public a(D[F)V
    .locals 7

    .line 13
    iget-object v0, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-wide v2, v2, La/c/a/a/a$a;->c:D

    const/4 v4, 0x1

    cmpg-double v5, p1, v2

    if-gez v5, :cond_0

    .line 14
    aget-object p1, v0, v1

    iget-wide p1, p1, La/c/a/a/a$a;->c:D

    goto :goto_0

    .line 15
    :cond_0
    array-length v2, v0

    sub-int/2addr v2, v4

    aget-object v2, v0, v2

    iget-wide v2, v2, La/c/a/a/a$a;->d:D

    cmpl-double v5, p1, v2

    if-lez v5, :cond_1

    .line 16
    array-length p1, v0

    sub-int/2addr p1, v4

    aget-object p1, v0, p1

    iget-wide p1, p1, La/c/a/a/a$a;->d:D

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 17
    :goto_1
    iget-object v2, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 18
    aget-object v3, v2, v0

    iget-wide v5, v3, La/c/a/a/a$a;->d:D

    cmpg-double v3, p1, v5

    if-gtz v3, :cond_3

    .line 19
    aget-object v3, v2, v0

    iget-boolean v3, v3, La/c/a/a/a$a;->r:Z

    if-eqz v3, :cond_2

    .line 20
    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, La/c/a/a/a$a;->c(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, p3, v1

    .line 21
    iget-object v1, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2}, La/c/a/a/a$a;->d(D)D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v4

    return-void

    .line 22
    :cond_2
    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, La/c/a/a/a$a;->f(D)V

    .line 23
    iget-object p1, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, La/c/a/a/a$a;->c()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v1

    .line 24
    iget-object p1, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, La/c/a/a/a$a;->d()D

    move-result-wide p1

    double-to-float p1, p1

    aput p1, p3, v4

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public a()[D
    .locals 1

    .line 37
    iget-object v0, p0, La/c/a/a/a;->a:[D

    return-object v0
.end method

.method public b(DI)D
    .locals 5

    .line 13
    iget-object v0, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-wide v2, v2, La/c/a/a/a$a;->c:D

    cmpg-double v4, p1, v2

    if-gez v4, :cond_0

    .line 14
    aget-object p1, v0, v1

    iget-wide p1, p1, La/c/a/a/a$a;->c:D

    .line 15
    :cond_0
    iget-object v0, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    iget-wide v2, v2, La/c/a/a/a$a;->d:D

    cmpl-double v4, p1, v2

    if-lez v4, :cond_1

    .line 16
    array-length p1, v0

    add-int/lit8 p1, p1, -0x1

    aget-object p1, v0, p1

    iget-wide p1, p1, La/c/a/a/a$a;->d:D

    .line 17
    :cond_1
    :goto_0
    iget-object v0, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    array-length v2, v0

    if-ge v1, v2, :cond_6

    .line 18
    aget-object v2, v0, v1

    iget-wide v2, v2, La/c/a/a/a$a;->d:D

    cmpg-double v4, p1, v2

    if-gtz v4, :cond_5

    .line 19
    aget-object v2, v0, v1

    iget-boolean v2, v2, La/c/a/a/a$a;->r:Z

    if-eqz v2, :cond_3

    if-nez p3, :cond_2

    .line 20
    aget-object p3, v0, v1

    invoke-virtual {p3, p1, p2}, La/c/a/a/a$a;->a(D)D

    move-result-wide p1

    return-wide p1

    .line 21
    :cond_2
    aget-object p3, v0, v1

    invoke-virtual {p3, p1, p2}, La/c/a/a/a$a;->b(D)D

    move-result-wide p1

    return-wide p1

    .line 22
    :cond_3
    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, La/c/a/a/a$a;->f(D)V

    if-nez p3, :cond_4

    .line 23
    iget-object p1, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    aget-object p1, p1, v1

    invoke-virtual {p1}, La/c/a/a/a$a;->a()D

    move-result-wide p1

    return-wide p1

    .line 24
    :cond_4
    iget-object p1, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    aget-object p1, p1, v1

    invoke-virtual {p1}, La/c/a/a/a$a;->b()D

    move-result-wide p1

    return-wide p1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    return-wide p1
.end method

.method public b(D[D)V
    .locals 7

    .line 1
    iget-object v0, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    const/4 v1, 0x0

    aget-object v2, v0, v1

    iget-wide v2, v2, La/c/a/a/a$a;->c:D

    const/4 v4, 0x1

    cmpg-double v5, p1, v2

    if-gez v5, :cond_0

    .line 2
    aget-object p1, v0, v1

    iget-wide p1, p1, La/c/a/a/a$a;->c:D

    goto :goto_0

    .line 3
    :cond_0
    array-length v2, v0

    sub-int/2addr v2, v4

    aget-object v2, v0, v2

    iget-wide v2, v2, La/c/a/a/a$a;->d:D

    cmpl-double v5, p1, v2

    if-lez v5, :cond_1

    .line 4
    array-length p1, v0

    sub-int/2addr p1, v4

    aget-object p1, v0, p1

    iget-wide p1, p1, La/c/a/a/a$a;->d:D

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 5
    :goto_1
    iget-object v2, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 6
    aget-object v3, v2, v0

    iget-wide v5, v3, La/c/a/a/a$a;->d:D

    cmpg-double v3, p1, v5

    if-gtz v3, :cond_3

    .line 7
    aget-object v3, v2, v0

    iget-boolean v3, v3, La/c/a/a/a$a;->r:Z

    if-eqz v3, :cond_2

    .line 8
    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, La/c/a/a/a$a;->a(D)D

    move-result-wide v2

    aput-wide v2, p3, v1

    .line 9
    iget-object v1, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    aget-object v0, v1, v0

    invoke-virtual {v0, p1, p2}, La/c/a/a/a$a;->b(D)D

    move-result-wide p1

    aput-wide p1, p3, v4

    return-void

    .line 10
    :cond_2
    aget-object v2, v2, v0

    invoke-virtual {v2, p1, p2}, La/c/a/a/a$a;->f(D)V

    .line 11
    iget-object p1, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, La/c/a/a/a$a;->a()D

    move-result-wide p1

    aput-wide p1, p3, v1

    .line 12
    iget-object p1, p0, La/c/a/a/a;->b:[La/c/a/a/a$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, La/c/a/a/a$a;->b()D

    move-result-wide p1

    aput-wide p1, p3, v4

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
