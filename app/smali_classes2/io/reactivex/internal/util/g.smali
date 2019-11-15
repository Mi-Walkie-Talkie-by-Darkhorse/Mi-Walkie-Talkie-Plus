.class public Lio/reactivex/internal/util/g;
.super Ljava/lang/Object;
.source "LinkedArrayList.java"


# instance fields
.field final h:I

.field i:[Ljava/lang/Object;

.field j:[Ljava/lang/Object;

.field volatile k:I

.field l:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/reactivex/internal/util/g;->h:I

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lio/reactivex/internal/util/g;->k:I

    if-nez v0, :cond_0

    iget v0, p0, Lio/reactivex/internal/util/g;->h:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lio/reactivex/internal/util/g;->i:[Ljava/lang/Object;

    iget-object v0, p0, Lio/reactivex/internal/util/g;->i:[Ljava/lang/Object;

    iput-object v0, p0, Lio/reactivex/internal/util/g;->j:[Ljava/lang/Object;

    iget-object v0, p0, Lio/reactivex/internal/util/g;->i:[Ljava/lang/Object;

    aput-object p1, v0, v2

    iput v3, p0, Lio/reactivex/internal/util/g;->l:I

    iput v3, p0, Lio/reactivex/internal/util/g;->k:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lio/reactivex/internal/util/g;->l:I

    iget v1, p0, Lio/reactivex/internal/util/g;->h:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lio/reactivex/internal/util/g;->h:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    iget-object v1, p0, Lio/reactivex/internal/util/g;->j:[Ljava/lang/Object;

    iget v2, p0, Lio/reactivex/internal/util/g;->h:I

    aput-object v0, v1, v2

    iput-object v0, p0, Lio/reactivex/internal/util/g;->j:[Ljava/lang/Object;

    iput v3, p0, Lio/reactivex/internal/util/g;->l:I

    iget v0, p0, Lio/reactivex/internal/util/g;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/util/g;->k:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lio/reactivex/internal/util/g;->j:[Ljava/lang/Object;

    iget v1, p0, Lio/reactivex/internal/util/g;->l:I

    aput-object p1, v0, v1

    iget v0, p0, Lio/reactivex/internal/util/g;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/util/g;->l:I

    iget v0, p0, Lio/reactivex/internal/util/g;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/util/g;->k:I

    goto :goto_0
.end method

.method public b()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/util/g;->i:[Ljava/lang/Object;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lio/reactivex/internal/util/g;->k:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    const/4 v1, 0x0

    iget v4, p0, Lio/reactivex/internal/util/g;->h:I

    iget v5, p0, Lio/reactivex/internal/util/g;->k:I

    new-instance v6, Ljava/util/ArrayList;

    add-int/lit8 v0, v5, 0x1

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lio/reactivex/internal/util/g;->b()[Ljava/lang/Object;

    move-result-object v0

    move v2, v1

    move-object v3, v0

    move v0, v1

    :cond_0
    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v7, v3, v0

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_0

    aget-object v0, v3, v4

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
