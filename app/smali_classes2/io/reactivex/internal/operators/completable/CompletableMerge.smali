.class public final Lio/reactivex/internal/operators/completable/CompletableMerge;
.super Lio/reactivex/Completable;
.source "CompletableMerge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber;
    }
.end annotation


# instance fields
.field final delayErrors:Z

.field final maxConcurrency:I

.field final source:Lc/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/a/b<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/a/b;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/a/b<",
            "+",
            "Lio/reactivex/CompletableSource;",
            ">;IZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/Completable;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableMerge;->source:Lc/a/b;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/completable/CompletableMerge;->maxConcurrency:I

    .line 4
    iput-boolean p3, p0, Lio/reactivex/internal/operators/completable/CompletableMerge;->delayErrors:Z

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/CompletableObserver;)V
    .locals 3

    .line 1
    new-instance v0, Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber;

    iget v1, p0, Lio/reactivex/internal/operators/completable/CompletableMerge;->maxConcurrency:I

    iget-boolean v2, p0, Lio/reactivex/internal/operators/completable/CompletableMerge;->delayErrors:Z

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/completable/CompletableMerge$CompletableMergeSubscriber;-><init>(Lio/reactivex/CompletableObserver;IZ)V

    .line 2
    iget-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableMerge;->source:Lc/a/b;

    invoke-interface {p1, v0}, Lc/a/b;->subscribe(Lc/a/c;)V

    return-void
.end method
