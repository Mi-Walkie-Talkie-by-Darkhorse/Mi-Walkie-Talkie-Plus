.class public final Lcom/efs/sdk/base/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/a/b/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/a/f/b;)V
    .locals 3

    .line 8
    iget-object v0, p1, Lcom/efs/sdk/base/a/f/b;->c:[B

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-static {p1}, Lcom/efs/sdk/base/a/h/b;->a(Lcom/efs/sdk/base/a/f/b;)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v2

    .line 11
    iget-object v2, v2, Lcom/efs/sdk/base/a/c/a;->a:Ljava/lang/String;

    .line 12
    invoke-static {v1, v2}, Lcom/efs/sdk/base/a/h/a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 13
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    iget-object p1, p1, Lcom/efs/sdk/base/a/f/b;->c:[B

    .line 15
    invoke-static {v2, p1}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/File;[B)Z

    .line 16
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object p1

    .line 17
    iget-object p1, p1, Lcom/efs/sdk/base/a/i/f;->c:Lcom/efs/sdk/base/a/i/d;

    invoke-virtual {p1}, Lcom/efs/sdk/base/a/i/d;->b()V

    .line 18
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/efs/sdk/base/a/i/f;->c:Lcom/efs/sdk/base/a/i/d;

    invoke-virtual {p1}, Lcom/efs/sdk/base/a/i/d;->c()V

    return-void
.end method

.method public final a(Ljava/io/File;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->c:Landroid/content/Context;

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    .line 2
    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0, v1}, Lcom/efs/sdk/base/a/h/a;->f(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/efs/sdk/base/a/h/b;->a(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/io/File;Lcom/efs/sdk/base/a/f/b;)Z
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 5
    :cond_0
    iput-object p1, p2, Lcom/efs/sdk/base/a/f/b;->d:Ljava/io/File;

    .line 6
    invoke-virtual {p2}, Lcom/efs/sdk/base/a/f/b;->d()V

    const/4 p1, 0x1

    .line 7
    invoke-virtual {p2, p1}, Lcom/efs/sdk/base/a/f/b;->b(I)V

    return p1
.end method
