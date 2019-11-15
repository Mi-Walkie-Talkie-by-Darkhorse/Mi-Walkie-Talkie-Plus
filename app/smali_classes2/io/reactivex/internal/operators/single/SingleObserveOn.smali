.class public final Lio/reactivex/internal/operators/single/SingleObserveOn;
.super Lio/reactivex/s;
.source "SingleObserveOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/s",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/u",
            "<TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/r;


# direct methods
.method public constructor <init>(Lio/reactivex/u;Lio/reactivex/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/u",
            "<TT;>;",
            "Lio/reactivex/r;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/s;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/single/SingleObserveOn;->a:Lio/reactivex/u;

    iput-object p2, p0, Lio/reactivex/internal/operators/single/SingleObserveOn;->b:Lio/reactivex/r;

    return-void
.end method


# virtual methods
.method protected b(Lio/reactivex/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/single/SingleObserveOn;->a:Lio/reactivex/u;

    new-instance v1, Lio/reactivex/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;

    iget-object v2, p0, Lio/reactivex/internal/operators/single/SingleObserveOn;->b:Lio/reactivex/r;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/single/SingleObserveOn$ObserveOnSingleObserver;-><init>(Lio/reactivex/t;Lio/reactivex/r;)V

    invoke-interface {v0, v1}, Lio/reactivex/u;->a(Lio/reactivex/t;)V

    return-void
.end method
