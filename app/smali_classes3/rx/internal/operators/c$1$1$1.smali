.class Lrx/internal/operators/c$1$1$1;
.super Lrx/e;
.source "OperatorSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/c$1$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/e",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Thread;

.field final synthetic b:Lrx/internal/operators/c$1$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/c$1$1;Lrx/e;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lrx/internal/operators/c$1$1$1;->b:Lrx/internal/operators/c$1$1;

    iput-object p3, p0, Lrx/internal/operators/c$1$1$1;->a:Ljava/lang/Thread;

    invoke-direct {p0, p2}, Lrx/e;-><init>(Lrx/e;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 1

    iget-object v0, p0, Lrx/internal/operators/c$1$1$1;->b:Lrx/internal/operators/c$1$1;

    iget-object v0, v0, Lrx/internal/operators/c$1$1;->b:Lrx/internal/operators/c$1;

    iget-object v0, v0, Lrx/internal/operators/c$1;->a:Lrx/e;

    invoke-virtual {v0}, Lrx/e;->onCompleted()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lrx/internal/operators/c$1$1$1;->b:Lrx/internal/operators/c$1$1;

    iget-object v0, v0, Lrx/internal/operators/c$1$1;->b:Lrx/internal/operators/c$1;

    iget-object v0, v0, Lrx/internal/operators/c$1;->a:Lrx/e;

    invoke-virtual {v0, p1}, Lrx/e;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lrx/internal/operators/c$1$1$1;->b:Lrx/internal/operators/c$1$1;

    iget-object v0, v0, Lrx/internal/operators/c$1$1;->b:Lrx/internal/operators/c$1;

    iget-object v0, v0, Lrx/internal/operators/c$1;->a:Lrx/e;

    invoke-virtual {v0, p1}, Lrx/e;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public setProducer(Lrx/c;)V
    .locals 2

    iget-object v0, p0, Lrx/internal/operators/c$1$1$1;->b:Lrx/internal/operators/c$1$1;

    iget-object v0, v0, Lrx/internal/operators/c$1$1;->b:Lrx/internal/operators/c$1;

    iget-object v0, v0, Lrx/internal/operators/c$1;->a:Lrx/e;

    new-instance v1, Lrx/internal/operators/c$1$1$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/c$1$1$1$1;-><init>(Lrx/internal/operators/c$1$1$1;Lrx/c;)V

    invoke-virtual {v0, v1}, Lrx/e;->setProducer(Lrx/c;)V

    return-void
.end method
