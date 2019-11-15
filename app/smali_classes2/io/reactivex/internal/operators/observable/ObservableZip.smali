.class public final Lio/reactivex/internal/operators/observable/ObservableZip;
.super Lio/reactivex/k;
.source "ObservableZip.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableZip$a;,
        Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final a:[Lio/reactivex/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/o",
            "<+TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable",
            "<+",
            "Lio/reactivex/o",
            "<+TT;>;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/b/g",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;"
        }
    .end annotation
.end field

.field final d:I

.field final e:Z


# direct methods
.method public constructor <init>([Lio/reactivex/o;Ljava/lang/Iterable;Lio/reactivex/b/g;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lio/reactivex/o",
            "<+TT;>;",
            "Ljava/lang/Iterable",
            "<+",
            "Lio/reactivex/o",
            "<+TT;>;>;",
            "Lio/reactivex/b/g",
            "<-[",
            "Ljava/lang/Object;",
            "+TR;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableZip;->a:[Lio/reactivex/o;

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableZip;->b:Ljava/lang/Iterable;

    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableZip;->c:Lio/reactivex/b/g;

    iput p4, p0, Lio/reactivex/internal/operators/observable/ObservableZip;->d:I

    iput-boolean p5, p0, Lio/reactivex/internal/operators/observable/ObservableZip;->e:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/q;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TR;>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservableZip;->a:[Lio/reactivex/o;

    if-nez v2, :cond_0

    const/16 v0, 0x8

    new-array v2, v0, [Lio/reactivex/k;

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableZip;->b:Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v4

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/o;

    array-length v1, v2

    if-ne v3, v1, :cond_3

    shr-int/lit8 v1, v3, 0x2

    add-int/2addr v1, v3

    new-array v1, v1, [Lio/reactivex/o;

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    add-int/lit8 v2, v3, 0x1

    aput-object v0, v1, v3

    move v3, v2

    move-object v2, v1

    goto :goto_0

    :cond_0
    array-length v3, v2

    :cond_1
    if-nez v3, :cond_2

    invoke-static {p1}, Lio/reactivex/internal/disposables/EmptyDisposable;->a(Lio/reactivex/q;)V

    :goto_2
    return-void

    :cond_2
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableZip;->c:Lio/reactivex/b/g;

    iget-boolean v4, p0, Lio/reactivex/internal/operators/observable/ObservableZip;->e:Z

    invoke-direct {v0, p1, v1, v3, v4}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;-><init>(Lio/reactivex/q;Lio/reactivex/b/g;IZ)V

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableZip;->d:I

    invoke-virtual {v0, v2, v1}, Lio/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator;->a([Lio/reactivex/o;I)V

    goto :goto_2

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method
