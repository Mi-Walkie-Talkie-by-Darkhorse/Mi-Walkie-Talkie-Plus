.class La/c/a/a/b$a;
.super La/c/a/a/b;
.source "CurveFit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/c/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:D

.field b:[D


# direct methods
.method constructor <init>(D[D)V
    .locals 0

    .line 1
    invoke-direct {p0}, La/c/a/a/b;-><init>()V

    .line 2
    iput-wide p1, p0, La/c/a/a/b$a;->a:D

    .line 3
    iput-object p3, p0, La/c/a/a/b$a;->b:[D

    return-void
.end method


# virtual methods
.method public a(DI)D
    .locals 0

    .line 4
    iget-object p1, p0, La/c/a/a/b$a;->b:[D

    aget-wide p2, p1, p3

    return-wide p2
.end method

.method public a(D[D)V
    .locals 1

    .line 1
    iget-object p1, p0, La/c/a/a/b$a;->b:[D

    array-length p2, p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p3, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public a(D[F)V
    .locals 2

    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object p2, p0, La/c/a/a/b$a;->b:[D

    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 3
    aget-wide v0, p2, p1

    double-to-float p2, v0

    aput p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a()[D
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [D

    .line 5
    iget-wide v1, p0, La/c/a/a/b$a;->a:D

    const/4 v3, 0x0

    aput-wide v1, v0, v3

    return-object v0
.end method

.method public b(DI)D
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public b(D[D)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    :goto_0
    iget-object p2, p0, La/c/a/a/b$a;->b:[D

    array-length p2, p2

    if-ge p1, p2, :cond_0

    const-wide/16 v0, 0x0

    .line 2
    aput-wide v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
