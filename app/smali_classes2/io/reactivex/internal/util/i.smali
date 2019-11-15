.class public final Lio/reactivex/internal/util/i;
.super Ljava/lang/Object;
.source "OpenHashSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:F

.field b:I

.field c:I

.field d:I

.field e:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Lio/reactivex/internal/util/i;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lio/reactivex/internal/util/i;->a:F

    invoke-static {p1}, Lio/reactivex/internal/util/j;->a(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/reactivex/internal/util/i;->b:I

    int-to-float v1, v0

    mul-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, p0, Lio/reactivex/internal/util/i;->d:I

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lio/reactivex/internal/util/i;->e:[Ljava/lang/Object;

    return-void
.end method

.method static a(I)I
    .locals 2

    const v0, -0x61c88647

    mul-int/2addr v0, p0

    ushr-int/lit8 v1, v0, 0x10

    xor-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method a()V
    .locals 9

    iget-object v4, p0, Lio/reactivex/internal/util/i;->e:[Ljava/lang/Object;

    array-length v2, v4

    shl-int/lit8 v5, v2, 0x1

    add-int/lit8 v6, v5, -0x1

    new-array v0, v5, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget v1, p0, Lio/reactivex/internal/util/i;->c:I

    move v8, v1

    move v1, v2

    move v2, v8

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-eqz v2, :cond_3

    :cond_0
    add-int/lit8 v1, v1, -0x1

    aget-object v2, v4, v1

    if-eqz v2, :cond_0

    aget-object v2, v4, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lio/reactivex/internal/util/i;->a(I)I

    move-result v2

    and-int/2addr v2, v6

    aget-object v7, v0, v2

    if-eqz v7, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    and-int/2addr v2, v6

    aget-object v7, v0, v2

    if-nez v7, :cond_1

    :cond_2
    aget-object v7, v4, v1

    aput-object v7, v0, v2

    move v2, v3

    goto :goto_0

    :cond_3
    iput v6, p0, Lio/reactivex/internal/util/i;->b:I

    int-to-float v1, v5

    iget v2, p0, Lio/reactivex/internal/util/i;->a:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lio/reactivex/internal/util/i;->d:I

    iput-object v0, p0, Lio/reactivex/internal/util/i;->e:[Ljava/lang/Object;

    return-void
.end method

.method a(I[Ljava/lang/Object;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;I)Z"
        }
    .end annotation

    iget v0, p0, Lio/reactivex/internal/util/i;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/reactivex/internal/util/i;->c:I

    :goto_0
    add-int/lit8 v0, p1, 0x1

    and-int/2addr v0, p3

    :goto_1
    aget-object v1, p2, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    aput-object v0, p2, p1

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Lio/reactivex/internal/util/i;->a(I)I

    move-result v2

    and-int/2addr v2, p3

    if-gt p1, v0, :cond_2

    if-ge p1, v2, :cond_1

    if-le v2, v0, :cond_3

    :cond_1
    aput-object v1, p2, p1

    move p1, v0

    goto :goto_0

    :cond_2
    if-lt p1, v2, :cond_3

    if-gt v2, v0, :cond_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, p3

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lio/reactivex/internal/util/i;->e:[Ljava/lang/Object;

    iget v3, p0, Lio/reactivex/internal/util/i;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lio/reactivex/internal/util/i;->a(I)I

    move-result v0

    and-int/2addr v0, v3

    aget-object v4, v2, v0

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v3

    aget-object v4, v2, v0

    if-nez v4, :cond_3

    :cond_1
    aput-object p1, v2, v0

    iget v0, p0, Lio/reactivex/internal/util/i;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/util/i;->c:I

    iget v1, p0, Lio/reactivex/internal/util/i;->d:I

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lio/reactivex/internal/util/i;->a()V

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v2, p0, Lio/reactivex/internal/util/i;->e:[Ljava/lang/Object;

    iget v3, p0, Lio/reactivex/internal/util/i;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lio/reactivex/internal/util/i;->a(I)I

    move-result v0

    and-int/2addr v0, v3

    aget-object v4, v2, v0

    if-nez v4, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0, v2, v3}, Lio/reactivex/internal/util/i;->a(I[Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v3

    aget-object v4, v2, v0

    if-nez v4, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, v0, v2, v3}, Lio/reactivex/internal/util/i;->a(I[Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_0
.end method

.method public b()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/util/i;->e:[Ljava/lang/Object;

    return-object v0
.end method
