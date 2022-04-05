.class public final Lcom/efs/sdk/base/a/g/a/b;
.super Lcom/efs/sdk/base/a/g/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/efs/sdk/base/a/g/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/a/f/b;)V
    .locals 4

    iget-object v0, p1, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    iget-boolean v0, v0, Lcom/efs/sdk/base/a/f/c;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/a/g/a/a;->b(Lcom/efs/sdk/base/a/f/b;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/efs/sdk/base/a/b/a$b;->a()Lcom/efs/sdk/base/a/b/a;

    move-result-object v0

    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v1, v1, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    const-string v2, "wa"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/efs/sdk/base/a/b/c;->a()Lcom/efs/sdk/base/a/b/c;

    move-result-object v1

    iget-boolean v1, v1, Lcom/efs/sdk/base/a/b/c;->a:Z

    if-nez v1, :cond_3

    iget-boolean p1, v0, Lcom/efs/sdk/base/a/b/a;->a:Z

    if-nez p1, :cond_2

    invoke-static {}, Lcom/efs/sdk/base/a/i/f$a;->a()Lcom/efs/sdk/base/a/i/f;

    move-result-object p1

    invoke-static {}, Lcom/efs/sdk/base/a/c/a/c;->a()Lcom/efs/sdk/base/a/c/a/c;

    move-result-object v1

    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a/c;->d:Lcom/efs/sdk/base/a/c/a/b;

    iget v1, v1, Lcom/efs/sdk/base/a/c/a/b;->a:I

    iget-object v2, p1, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    if-nez v2, :cond_1

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v2

    iget-boolean v2, v2, Lcom/efs/sdk/base/a/c/a;->d:Z

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p1, Lcom/efs/sdk/base/a/i/f;->b:Lcom/efs/sdk/base/a/d/a;

    const-string v3, "disk_limit"

    invoke-virtual {p1, v3, v1}, Lcom/efs/sdk/base/a/i/f;->a(Ljava/lang/String;I)Lcom/efs/sdk/base/a/i/b;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/efs/sdk/base/a/d/a;->a(Lcom/efs/sdk/base/protocol/ILogProtocol;)V

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/efs/sdk/base/a/b/a;->a:Z

    return-void

    :cond_3
    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget v1, v1, Lcom/efs/sdk/base/a/f/a;->c:I

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->c:[B

    if-eqz v1, :cond_4

    array-length v1, v1

    if-nez v1, :cond_5

    :cond_4
    return-void

    :cond_5
    iget-object v0, v0, Lcom/efs/sdk/base/a/b/a;->c:Lcom/efs/sdk/base/a/b/b;

    iget-object v1, p1, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-byte v1, v1, Lcom/efs/sdk/base/a/f/a;->b:B

    invoke-virtual {v0, v1}, Lcom/efs/sdk/base/a/b/b;->a(B)Lcom/efs/sdk/base/a/b/e;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0, p1}, Lcom/efs/sdk/base/a/b/e;->a(Lcom/efs/sdk/base/a/f/b;)V

    :cond_6
    return-void
.end method
