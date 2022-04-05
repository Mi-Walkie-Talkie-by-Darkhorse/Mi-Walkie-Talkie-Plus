.class public final Lcom/efs/sdk/base/a/h/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/efs/sdk/base/a/h/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/efs/sdk/base/a/h/a/c<",
        "Lcom/efs/sdk/base/http/HttpResponse;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:[B

.field public d:Ljava/io/File;

.field public e:Ljava/lang/String;

.field public f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/efs/sdk/base/a/h/b/b;->g:Z

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/efs/sdk/base/a/h/b/b;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x18f56

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x3498a0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "request not support method \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/efs/sdk/base/a/h/b/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "efs.util.http"

    invoke-static {v2, v0, v1}, Lcom/efs/sdk/base/a/h/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1

    :cond_3
    iget-object v0, p0, Lcom/efs/sdk/base/a/h/b/b;->c:[B

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    iget-boolean v0, p0, Lcom/efs/sdk/base/a/h/b/b;->g:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/efs/sdk/base/http/HttpEnv;->getInstance()Lcom/efs/sdk/base/http/HttpEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/http/HttpEnv;->getHttpUtil()Lcom/efs/sdk/base/http/IHttpUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/efs/sdk/base/a/h/b/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/efs/sdk/base/a/h/b/b;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/efs/sdk/base/a/h/b/b;->c:[B

    invoke-interface {v0, v1, v2, v3}, Lcom/efs/sdk/base/http/IHttpUtil;->postAsFile(Ljava/lang/String;Ljava/util/Map;[B)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static {}, Lcom/efs/sdk/base/http/HttpEnv;->getInstance()Lcom/efs/sdk/base/http/HttpEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/http/HttpEnv;->getHttpUtil()Lcom/efs/sdk/base/http/IHttpUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/efs/sdk/base/a/h/b/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/efs/sdk/base/a/h/b/b;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/efs/sdk/base/a/h/b/b;->c:[B

    invoke-interface {v0, v1, v2, v3}, Lcom/efs/sdk/base/http/IHttpUtil;->post(Ljava/lang/String;Ljava/util/Map;[B)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-static {}, Lcom/efs/sdk/base/http/HttpEnv;->getInstance()Lcom/efs/sdk/base/http/HttpEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/http/HttpEnv;->getHttpUtil()Lcom/efs/sdk/base/http/IHttpUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/efs/sdk/base/a/h/b/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/efs/sdk/base/a/h/b/b;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/efs/sdk/base/a/h/b/b;->d:Ljava/io/File;

    invoke-interface {v0, v1, v2, v3}, Lcom/efs/sdk/base/http/IHttpUtil;->post(Ljava/lang/String;Ljava/util/Map;Ljava/io/File;)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-static {}, Lcom/efs/sdk/base/http/HttpEnv;->getInstance()Lcom/efs/sdk/base/http/HttpEnv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/http/HttpEnv;->getHttpUtil()Lcom/efs/sdk/base/http/IHttpUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/efs/sdk/base/a/h/b/b;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/efs/sdk/base/a/h/b/b;->b:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/efs/sdk/base/http/IHttpUtil;->get(Ljava/lang/String;Ljava/util/Map;)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
