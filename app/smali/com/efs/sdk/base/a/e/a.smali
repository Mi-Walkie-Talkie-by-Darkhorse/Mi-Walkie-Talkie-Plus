.class public final Lcom/efs/sdk/base/a/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/efs/sdk/base/a/e/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/a/f/b;Z)Lcom/efs/sdk/base/http/HttpResponse;
    .locals 8
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/efs/sdk/base/a/a/c;->a()Lcom/efs/sdk/base/a/a/c;

    move-result-object v0

    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v2, v1, Lcom/efs/sdk/base/a/f/a;->d:Ljava/lang/String;

    iput-object v2, v0, Lcom/efs/sdk/base/a/a/c;->d:Ljava/lang/String;

    iget v2, v1, Lcom/efs/sdk/base/a/f/a;->e:I

    iput v2, v0, Lcom/efs/sdk/base/a/a/c;->e:I

    iget-byte v2, v1, Lcom/efs/sdk/base/a/f/a;->b:B

    iput-byte v2, v0, Lcom/efs/sdk/base/a/a/c;->g:B

    iget-object v1, v1, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/efs/sdk/base/a/a/c;->h:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/efs/sdk/base/a/f/b;->a()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/efs/sdk/base/a/a/c;->l:J

    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/efs/sdk/base/a/c/a/c;->a(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget v2, v2, Lcom/efs/sdk/base/a/f/a;->c:I

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->a()Lcom/efs/sdk/base/a/a/a;

    move-result-object v2

    iget-object v4, p1, Lcom/efs/sdk/base/a/f/b;->c:[B

    iget-object v5, p1, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    iget-boolean v5, v5, Lcom/efs/sdk/base/a/f/c;->b:Z

    invoke-virtual {v0}, Lcom/efs/sdk/base/a/a/c;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v0}, Lcom/efs/sdk/base/a/a/a;->a(Ljava/lang/String;Lcom/efs/sdk/base/a/a/c;)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, v2, Lcom/efs/sdk/base/a/a/a;->a:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "upload buffer file, url is "

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "efs.px.api"

    invoke-static {v7, v2}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string v7, "wpk-header"

    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/efs/sdk/base/a/h/b/d;

    invoke-direct {v6, v1}, Lcom/efs/sdk/base/a/h/b/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/efs/sdk/base/a/h/b/d;->a(Ljava/util/Map;)Lcom/efs/sdk/base/a/h/b/d;

    move-result-object v1

    iget-object v2, v1, Lcom/efs/sdk/base/a/h/b/d;->a:Lcom/efs/sdk/base/a/h/b/b;

    iput-object v4, v2, Lcom/efs/sdk/base/a/h/b/b;->c:[B

    iput-boolean v3, v2, Lcom/efs/sdk/base/a/h/b/b;->g:Z

    iget-object v2, v0, Lcom/efs/sdk/base/a/a/c;->h:Ljava/lang/String;

    const-string v3, "type"

    invoke-virtual {v1, v3, v2}, Lcom/efs/sdk/base/a/h/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/efs/sdk/base/a/h/b/d;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, v0, Lcom/efs/sdk/base/a/a/c;->l:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "size"

    invoke-virtual {v1, v2, v0}, Lcom/efs/sdk/base/a/h/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/efs/sdk/base/a/h/b/d;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "flow_limit"

    invoke-virtual {v0, v2, v1}, Lcom/efs/sdk/base/a/h/b/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/efs/sdk/base/a/h/b/d;

    move-result-object v0

    invoke-static {}, Lcom/efs/sdk/base/a/a/d;->a()Lcom/efs/sdk/base/a/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/efs/sdk/base/a/h/b/d;->a(Lcom/efs/sdk/base/http/AbsHttpListener;)Lcom/efs/sdk/base/a/h/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/a/h/b/d;->a()Lcom/efs/sdk/base/a/h/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/a/h/b/c;->b()Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne v3, v2, :cond_2

    invoke-static {}, Lcom/efs/sdk/base/a/a/a;->a()Lcom/efs/sdk/base/a/a/a;

    move-result-object v2

    iget-object v3, p1, Lcom/efs/sdk/base/a/f/b;->d:Ljava/io/File;

    iget-object v4, p1, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    iget-boolean v4, v4, Lcom/efs/sdk/base/a/f/c;->b:Z

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/efs/sdk/base/a/a/a;->a(Ljava/lang/String;Lcom/efs/sdk/base/a/a/c;Ljava/io/File;Z)Lcom/efs/sdk/base/http/HttpResponse;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/efs/sdk/base/http/HttpResponse;

    invoke-direct {v0}, Lcom/efs/sdk/base/http/HttpResponse;-><init>()V

    :goto_0
    iget-boolean v1, v0, Lcom/efs/sdk/base/a/f/d;->succ:Z

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    iget-object p1, p1, Lcom/efs/sdk/base/a/f/b;->d:Ljava/io/File;

    invoke-static {p1}, Lcom/efs/sdk/base/a/h/b;->b(Ljava/io/File;)V

    :cond_3
    return-object v0
.end method
