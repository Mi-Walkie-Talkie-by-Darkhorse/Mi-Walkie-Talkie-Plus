.class public final Lcom/efs/sdk/base/a/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/efs/sdk/base/a/f/b;

.field private b:Lcom/efs/sdk/base/a/e/c;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/efs/sdk/base/a/f/b;Lcom/efs/sdk/base/a/e/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/efs/sdk/base/a/e/e;->a:Lcom/efs/sdk/base/a/f/b;

    .line 3
    iput-object p2, p0, Lcom/efs/sdk/base/a/e/e;->b:Lcom/efs/sdk/base/a/e/c;

    .line 4
    iput-object p3, p0, Lcom/efs/sdk/base/a/e/e;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/base/a/e/e;->a:Lcom/efs/sdk/base/a/f/b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/efs/sdk/base/a/e/e;->b:Lcom/efs/sdk/base/a/e/c;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 2
    invoke-interface {v1, v0, v2}, Lcom/efs/sdk/base/a/e/c;->a(Lcom/efs/sdk/base/a/f/b;Z)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/efs/sdk/base/http/HttpResponse;

    invoke-direct {v0}, Lcom/efs/sdk/base/http/HttpResponse;-><init>()V

    .line 4
    :goto_0
    invoke-static {}, Lcom/efs/sdk/base/a/e/d;->a()Lcom/efs/sdk/base/a/e/d;

    move-result-object v1

    iget-object v2, p0, Lcom/efs/sdk/base/a/e/e;->c:Ljava/lang/String;

    iget-boolean v3, v0, Lcom/efs/sdk/base/a/f/d;->succ:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/efs/sdk/base/http/HttpResponse;->getHttpCode()I

    move-result v0

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/efs/sdk/base/a/e/d;->a(Ljava/lang/Object;I)V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/efs/sdk/base/a/e/e;->c:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/efs/sdk/base/a/e/e;->b:Lcom/efs/sdk/base/a/e/c;

    return-void
.end method
