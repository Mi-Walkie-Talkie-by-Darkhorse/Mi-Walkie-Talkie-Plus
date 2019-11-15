.class Lio/reactivex/internal/operators/flowable/b$a;
.super Ljava/lang/Object;
.source "FlowableFromObservable.java"

# interfaces
.implements Lio/reactivex/q;
.implements Lorg/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/q",
        "<TT;>;",
        "Lorg/a/c;"
    }
.end annotation


# instance fields
.field private final a:Lorg/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/a/b",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private b:Lio/reactivex/disposables/b;


# direct methods
.method constructor <init>(Lorg/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/a/b",
            "<-TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/b$a;->a:Lorg/a/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->b:Lio/reactivex/disposables/b;

    invoke-interface {v0}, Lio/reactivex/disposables/b;->dispose()V

    return-void
.end method

.method public a(J)V
    .locals 0

    return-void
.end method

.method public onComplete()V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->a:Lorg/a/b;

    invoke-interface {v0}, Lorg/a/b;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->a:Lorg/a/b;

    invoke-interface {v0, p1}, Lorg/a/b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->a:Lorg/a/b;

    invoke-interface {v0, p1}, Lorg/a/b;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/b;)V
    .locals 1

    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/b$a;->b:Lio/reactivex/disposables/b;

    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/b$a;->a:Lorg/a/b;

    invoke-interface {v0, p0}, Lorg/a/b;->a(Lorg/a/c;)V

    return-void
.end method
