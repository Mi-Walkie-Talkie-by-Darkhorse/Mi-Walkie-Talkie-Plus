.class public final Lcom/efs/sdk/base/a/g/a/b;
.super Lcom/efs/sdk/base/a/g/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/efs/sdk/base/a/g/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/a/f/b;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    iget-boolean v0, v0, Lcom/efs/sdk/base/a/f/c;->a:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/a/g/a/a;->b(Lcom/efs/sdk/base/a/f/b;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/efs/sdk/base/a/b/a$b;->a()Lcom/efs/sdk/base/a/b/a;

    move-result-object v0

    .line 4
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v1, v1, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    const-string v2, "wa"

    .line 5
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/efs/sdk/base/a/b/c;->a()Lcom/efs/sdk/base/a/b/c;

    move-result-object v1

    .line 6
    iget-boolean v1, v1, Lcom/efs/sdk/base/a/b/c;->a:Z

    if-nez v1, :cond_3

    .line 7
    iget-boolean p1, v0, Lcom/efs/sdk/base/a/b/a;->a:Z

    if-nez p1, :cond_2

    .line 8
    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    .line 11
    iget v1, v1, Lcom/efs/sdk/base/a/c/a/b;->a:I

    .line 12
    iget-object v2, p1, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v2

    .line 13
    iget-boolean v2, v2, Lcom/efs/sdk/base/a/c/a;->d:Z

    if-eqz v2, :cond_2

    .line 14
    :cond_1
    iget-object v2, p1, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    const-string v3, "disk_limit"

    invoke-virtual {p1, v3, v1}, Lcom/efs/sdk/base/a/i/f;->a(Ljava/lang/String;I)Lcom/efs/sdk/base/a/i/b;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/efs/sdk/base/a/d/a;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    :cond_2
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, v0, Lcom/efs/sdk/base/a/b/a;->a:Z

    return-void

    .line 16
    :cond_3
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget v1, v1, Lcom/efs/sdk/base/a/f/a;->c:I

    if-nez v1, :cond_5

    .line 17
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->c:[B

    if-eqz v1, :cond_4

    .line 18
    array-length v1, v1

    if-nez v1, :cond_5

    :cond_4
    return-void

    .line 19
    :cond_5
    iget-object v0, v0, Lcom/efs/sdk/base/a/b/a;->c:Lcom/efs/sdk/base/a/b/b;

    .line 20
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-byte v1, v1, Lcom/efs/sdk/base/a/f/a;->b:B

    .line 21
    invoke-virtual {v0, v1}, Lcom/efs/sdk/base/a/b/b;->a(B)Lcom/efs/sdk/base/a/b/e;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 22
    invoke-interface {v0, p1}, Lcom/efs/sdk/base/a/b/e;->a(Lcom/efs/sdk/base/a/f/b;)V

    :cond_6
    return-void
.end method
