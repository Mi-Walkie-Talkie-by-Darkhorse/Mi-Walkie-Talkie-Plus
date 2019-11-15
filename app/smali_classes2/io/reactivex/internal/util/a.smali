.class public Lio/reactivex/internal/util/a;
.super Ljava/lang/Object;
.source "AppendOnlyLinkedArrayList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/util/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:[Ljava/lang/Object;

.field c:[Ljava/lang/Object;

.field d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/reactivex/internal/util/a;->a:I

    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lio/reactivex/internal/util/a;->b:[Ljava/lang/Object;

    iget-object v0, p0, Lio/reactivex/internal/util/a;->b:[Ljava/lang/Object;

    iput-object v0, p0, Lio/reactivex/internal/util/a;->c:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/internal/util/a$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/util/a$a",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/util/a;->b:[Ljava/lang/Object;

    iget v2, p0, Lio/reactivex/internal/util/a;->a:I

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    if-nez v3, :cond_1

    :cond_0
    aget-object v0, v1, v2

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {p1, v3}, Lio/reactivex/internal/util/a$a;->test(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget v1, p0, Lio/reactivex/internal/util/a;->a:I

    iget v0, p0, Lio/reactivex/internal/util/a;->d:I

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lio/reactivex/internal/util/a;->c:[Ljava/lang/Object;

    aput-object v0, v2, v1

    iput-object v0, p0, Lio/reactivex/internal/util/a;->c:[Ljava/lang/Object;

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/util/a;->c:[Ljava/lang/Object;

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/util/a;->d:I

    return-void
.end method

.method public a(Lio/reactivex/q;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/q",
            "<-TU;>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lio/reactivex/internal/util/a;->b:[Ljava/lang/Object;

    iget v3, p0, Lio/reactivex/internal/util/a;->a:I

    move-object v2, v0

    :goto_0
    if-eqz v2, :cond_3

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    if-nez v4, :cond_1

    :cond_0
    aget-object v0, v2, v3

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v2, v0

    goto :goto_0

    :cond_1
    invoke-static {v4, p1}, Lio/reactivex/internal/util/NotificationLite;->b(Ljava/lang/Object;Lio/reactivex/q;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    :goto_2
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/util/a;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method
