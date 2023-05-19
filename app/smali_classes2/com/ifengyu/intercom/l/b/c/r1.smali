.class public Lcom/ifengyu/intercom/l/b/c/r1;
.super Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;
.source "Mi3ProtocolFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;-><init>()V

    return-void
.end method

.method static synthetic A3(Lcom/ifengyu/intercom/l/b/c/r1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->g3()V

    return-void
.end method

.method static synthetic B3(Lcom/ifengyu/intercom/l/b/c/r1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->v3()V

    return-void
.end method

.method static synthetic C3(Lcom/ifengyu/intercom/l/b/c/r1;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method static synthetic z3(Lcom/ifengyu/intercom/l/b/c/r1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    return-void
.end method


# virtual methods
.method protected h3()I
    .locals 1

    const v0, 0x7f11034a

    return v0
.end method

.method protected u3()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f11034e

    .line 2
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->z:Ljava/lang/String;

    new-instance v1, Lcom/ifengyu/intercom/l/b/c/r1$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/l/b/c/r1$a;-><init>(Lcom/ifengyu/intercom/l/b/c/r1;)V

    const-string v2, "mi3"

    invoke-static {v2, v0, v1}, Lcom/ifengyu/intercom/p/j0;->f(Ljava/lang/String;Ljava/lang/String;Lcom/ifengyu/library/b/d/a;)V

    return-void
.end method

.method protected w3()V
    .locals 2

    const/16 v0, 0xe

    .line 1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/j/c;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/j/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected x3()V
    .locals 2

    const/16 v0, 0xe

    .line 1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/j/c;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/j/c;->c(Ljava/lang/String;)V

    return-void
.end method
