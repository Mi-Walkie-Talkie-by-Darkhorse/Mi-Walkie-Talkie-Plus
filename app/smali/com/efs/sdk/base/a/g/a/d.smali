.class public final Lcom/efs/sdk/base/a/g/a/d;
.super Lcom/efs/sdk/base/a/g/a/a;


# instance fields
.field private b:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/efs/sdk/base/a/g/a/a;-><init>()V

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->m:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    if-nez v0, :cond_0

    new-instance v0, Lcom/efs/sdk/base/a/g/b;

    invoke-direct {v0}, Lcom/efs/sdk/base/a/g/b;-><init>()V

    iput-object v0, p0, Lcom/efs/sdk/base/a/g/a/d;->b:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    return-void

    :cond_0
    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/efs/sdk/base/a/c/a;->m:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    iput-object v0, p0, Lcom/efs/sdk/base/a/g/a/d;->b:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    return-void
.end method

.method private static c(Lcom/efs/sdk/base/a/f/b;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/efs/sdk/base/a/f/b;->c()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-object v0, v0, Lcom/efs/sdk/base/a/f/a;->a:Ljava/lang/String;

    const-string v2, "wa"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget-byte v0, v0, Lcom/efs/sdk/base/a/f/a;->b:B

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/efs/sdk/base/a/f/b;->b:Lcom/efs/sdk/base/a/f/c;

    iget-boolean v0, v0, Lcom/efs/sdk/base/a/f/c;->a:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-object p0, p0, Lcom/efs/sdk/base/a/f/b;->a:Lcom/efs/sdk/base/a/f/a;

    iget p0, p0, Lcom/efs/sdk/base/a/f/a;->c:I

    if-ne v1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public final a(Lcom/efs/sdk/base/a/f/b;)V
    .locals 3

    invoke-static {p1}, Lcom/efs/sdk/base/a/g/a/d;->c(Lcom/efs/sdk/base/a/f/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/a/g/a/a;->b(Lcom/efs/sdk/base/a/f/b;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/efs/sdk/base/a/g/a/d;->b:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    invoke-static {}, Lcom/efs/sdk/base/a/d/a;->a()Lcom/efs/sdk/base/a/c/a;

    move-result-object v1

    iget-object v1, v1, Lcom/efs/sdk/base/a/c/a;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/efs/sdk/base/a/f/b;->c:[B

    invoke-interface {v0, v1, v2}, Lcom/efs/sdk/base/processor/action/ILogEncryptAction;->encrypt(Ljava/lang/String;[B)[B

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/a/f/b;->a([B)V

    iget-object v0, p0, Lcom/efs/sdk/base/a/g/a/d;->b:Lcom/efs/sdk/base/processor/action/ILogEncryptAction;

    invoke-interface {v0}, Lcom/efs/sdk/base/processor/action/ILogEncryptAction;->getDeVal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/efs/sdk/base/a/f/b;->a(I)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/efs/sdk/base/a/g/a/a;->b(Lcom/efs/sdk/base/a/f/b;)V

    return-void
.end method
