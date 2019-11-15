.class public final Lio/reactivex/internal/operators/observable/an;
.super Lio/reactivex/k;
.source "ObservableFromPublisher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/an$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/k",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lorg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/a/a",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/a",
            "<+TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/k;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/an;->a:Lorg/a/a;

    return-void
.end method


# virtual methods
.method protected subscribeActual(Lio/reactivex/q;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/q",
            "<-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/observable/an;->a:Lorg/a/a;

    new-instance v1, Lio/reactivex/internal/operators/observable/an$a;

    invoke-direct {v1, p1}, Lio/reactivex/internal/operators/observable/an$a;-><init>(Lio/reactivex/q;)V

    invoke-interface {v0, v1}, Lorg/a/a;->a(Lorg/a/b;)V

    return-void
.end method
