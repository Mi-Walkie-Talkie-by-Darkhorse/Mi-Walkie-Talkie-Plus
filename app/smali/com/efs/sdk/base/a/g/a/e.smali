.class public final Lcom/efs/sdk/base/a/g/a/e;
.super Lcom/efs/sdk/base/a/g/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/efs/sdk/base/a/g/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/a/f/b;)V
    .locals 5

    iget-object v0, p1, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    iget-boolean v0, v0, Lcom/efs/sdk/base/a/f/c;->a:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/a/g/a/a;->b(Lcom/efs/sdk/base/a/f/b;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/efs/sdk/base/a/e/d;->a()Lcom/efs/sdk/base/a/e/d;

    move-result-object v0

    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    iget-boolean v1, v1, Lcom/efs/sdk/base/a/f/c;->b:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/efs/sdk/base/a/e/b;->a()Lcom/efs/sdk/base/a/e/b;

    move-result-object v1

    iget-object v2, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v2, v2, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/efs/sdk/base/a/f/b;->a()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/efs/sdk/base/a/e/b;->a(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/efs/sdk/base/http/HttpResponse;

    invoke-direct {v0}, Lcom/efs/sdk/base/http/HttpResponse;-><init>()V

    const-string v1, "flow_limit"

    iput-object v1, v0, Lcom/efs/sdk/base/a/f/d;->data:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object v1

    iget-object v1, v1, Lcom/efs/sdk/base/a/i/f;->c:Lcom/efs/sdk/base/a/i/d;

    invoke-virtual {v1}, Lcom/efs/sdk/base/a/i/d;->b()V

    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object v1

    iget-object v1, v1, Lcom/efs/sdk/base/a/i/f;->c:Lcom/efs/sdk/base/a/i/d;

    invoke-virtual {v1}, Lcom/efs/sdk/base/a/i/d;->c()V

    iget-object v0, v0, Lcom/efs/sdk/base/a/e/d;->b:Lcom/efs/sdk/base/a/e/c;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/efs/sdk/base/a/e/c;->a(Lcom/efs/sdk/base/a/f/b;Z)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v0

    :goto_0
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    iput-object v0, v1, Lcom/efs/sdk/base/a/f/c;->c:Lcom/efs/sdk/base/http/HttpResponse;

    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/a/g/a/a;->b(Lcom/efs/sdk/base/a/f/b;)V

    return-void
.end method
