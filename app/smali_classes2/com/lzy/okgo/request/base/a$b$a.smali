.class Lcom/lzy/okgo/request/base/a$b$a;
.super Ljava/lang/Object;
.source "ProgressRequestBody.java"

# interfaces
.implements Lcom/lzy/okgo/model/Progress$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lzy/okgo/request/base/a$b;->write(Lokio/Buffer;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lzy/okgo/request/base/a$b;


# direct methods
.method constructor <init>(Lcom/lzy/okgo/request/base/a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/lzy/okgo/request/base/a$b$a;->a:Lcom/lzy/okgo/request/base/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/lzy/okgo/model/Progress;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/lzy/okgo/request/base/a$b$a;->a:Lcom/lzy/okgo/request/base/a$b;

    iget-object v0, v0, Lcom/lzy/okgo/request/base/a$b;->b:Lcom/lzy/okgo/request/base/a;

    invoke-static {v0}, Lcom/lzy/okgo/request/base/a;->a(Lcom/lzy/okgo/request/base/a;)Lcom/lzy/okgo/request/base/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/lzy/okgo/request/base/a$b$a;->a:Lcom/lzy/okgo/request/base/a$b;

    iget-object v0, v0, Lcom/lzy/okgo/request/base/a$b;->b:Lcom/lzy/okgo/request/base/a;

    invoke-static {v0}, Lcom/lzy/okgo/request/base/a;->a(Lcom/lzy/okgo/request/base/a;)Lcom/lzy/okgo/request/base/a$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/lzy/okgo/request/base/a$c;->a(Lcom/lzy/okgo/model/Progress;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/lzy/okgo/request/base/a$b$a;->a:Lcom/lzy/okgo/request/base/a$b;

    iget-object v0, v0, Lcom/lzy/okgo/request/base/a$b;->b:Lcom/lzy/okgo/request/base/a;

    invoke-static {v0, p1}, Lcom/lzy/okgo/request/base/a;->b(Lcom/lzy/okgo/request/base/a;Lcom/lzy/okgo/model/Progress;)V

    :goto_0
    return-void
.end method
