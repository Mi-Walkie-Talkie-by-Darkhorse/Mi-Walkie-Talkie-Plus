.class Lrx/internal/operators/c$1$1;
.super Ljava/lang/Object;
.source "OperatorSubscribeOn.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/c$1;->a(Lrx/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/a;

.field final synthetic b:Lrx/internal/operators/c$1;


# direct methods
.method constructor <init>(Lrx/internal/operators/c$1;Lrx/a;)V
    .locals 0

    iput-object p1, p0, Lrx/internal/operators/c$1$1;->b:Lrx/internal/operators/c$1;

    iput-object p2, p0, Lrx/internal/operators/c$1$1;->a:Lrx/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lrx/internal/operators/c$1$1;->a:Lrx/a;

    new-instance v2, Lrx/internal/operators/c$1$1$1;

    iget-object v3, p0, Lrx/internal/operators/c$1$1;->b:Lrx/internal/operators/c$1;

    iget-object v3, v3, Lrx/internal/operators/c$1;->a:Lrx/e;

    invoke-direct {v2, p0, v3, v0}, Lrx/internal/operators/c$1$1$1;-><init>(Lrx/internal/operators/c$1$1;Lrx/e;Ljava/lang/Thread;)V

    invoke-virtual {v1, v2}, Lrx/a;->a(Lrx/e;)Lrx/f;

    return-void
.end method
