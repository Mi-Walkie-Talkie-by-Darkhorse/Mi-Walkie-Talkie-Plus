.class Lrx/internal/operators/c$1;
.super Lrx/e;
.source "OperatorSubscribeOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/c;->a(Lrx/e;)Lrx/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/e",
        "<",
        "Lrx/a",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/e;

.field final synthetic b:Lrx/d$a;

.field final synthetic c:Lrx/internal/operators/c;


# direct methods
.method constructor <init>(Lrx/internal/operators/c;Lrx/e;Lrx/e;Lrx/d$a;)V
    .locals 0

    iput-object p1, p0, Lrx/internal/operators/c$1;->c:Lrx/internal/operators/c;

    iput-object p3, p0, Lrx/internal/operators/c$1;->a:Lrx/e;

    iput-object p4, p0, Lrx/internal/operators/c$1;->b:Lrx/d$a;

    invoke-direct {p0, p2}, Lrx/e;-><init>(Lrx/e;)V

    return-void
.end method


# virtual methods
.method public a(Lrx/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/a",
            "<TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lrx/internal/operators/c$1;->b:Lrx/d$a;

    new-instance v1, Lrx/internal/operators/c$1$1;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/c$1$1;-><init>(Lrx/internal/operators/c$1;Lrx/a;)V

    invoke-virtual {v0, v1}, Lrx/d$a;->a(Lrx/b/a;)Lrx/f;

    return-void
.end method

.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lrx/internal/operators/c$1;->a:Lrx/e;

    invoke-virtual {v0, p1}, Lrx/e;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lrx/a;

    invoke-virtual {p0, p1}, Lrx/internal/operators/c$1;->a(Lrx/a;)V

    return-void
.end method
