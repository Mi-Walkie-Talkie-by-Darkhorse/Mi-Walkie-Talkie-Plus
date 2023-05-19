.class Lcom/lzy/okgo/cache/a/g$c;
.super Ljava/lang/Object;
.source "RequestFailedCachePolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/cache/a/g;->b(Lcom/lzy/okgo/model/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lzy/okgo/model/a;

.field final synthetic b:Lcom/lzy/okgo/cache/a/g;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/cache/a/g;Lcom/lzy/okgo/model/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/cache/a/g$c;->b:Lcom/lzy/okgo/cache/a/g;

    iput-object p2, p0, Lcom/lzy/okgo/cache/a/g$c;->a:Lcom/lzy/okgo/model/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/g$c;->b:Lcom/lzy/okgo/cache/a/g;

    iget-object v0, v0, Lcom/lzy/okgo/cache/a/a;->f:Lb/c/a/c/b;

    iget-object v1, p0, Lcom/lzy/okgo/cache/a/g$c;->a:Lcom/lzy/okgo/model/a;

    invoke-interface {v0, v1}, Lb/c/a/c/b;->b(Lcom/lzy/okgo/model/a;)V

    .line 2
    iget-object v0, p0, Lcom/lzy/okgo/cache/a/g$c;->b:Lcom/lzy/okgo/cache/a/g;

    iget-object v0, v0, Lcom/lzy/okgo/cache/a/a;->f:Lb/c/a/c/b;

    invoke-interface {v0}, Lb/c/a/c/b;->onFinish()V

    return-void
.end method
