.class public Lcom/ifengyu/intercom/device/mi3gw/fragment/s2;
.super Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;
.source "Mi3PublicProtocolFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;-><init>()V

    return-void
.end method

.method static synthetic A3(Lcom/ifengyu/intercom/device/mi3gw/fragment/s2;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->v3()V

    return-void
.end method

.method static synthetic B3(Lcom/ifengyu/intercom/device/mi3gw/fragment/s2;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void
.end method

.method static synthetic z3(Lcom/ifengyu/intercom/device/mi3gw/fragment/s2;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->C2()V

    return-void
.end method


# virtual methods
.method protected h3()I
    .locals 1

    const v0, 0x7f11034b

    return v0
.end method

.method protected u3()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->A:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const v0, 0x7f11034e

    .line 2
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/base/k;->X2(I)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/base/k;->b3()V

    .line 4
    iget-wide v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseUserProtocolFragment;->A:J

    new-instance v2, Lcom/ifengyu/intercom/device/mi3gw/fragment/s2$a;

    invoke-direct {v2, p0}, Lcom/ifengyu/intercom/device/mi3gw/fragment/s2$a;-><init>(Lcom/ifengyu/intercom/device/mi3gw/fragment/s2;)V

    invoke-static {v0, v1, v2}, Lcom/ifengyu/intercom/p/j0;->g(JLcom/ifengyu/library/b/d/a;)V

    return-void
.end method

.method protected w3()V
    .locals 2

    const/16 v0, 0xd

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

    const/16 v0, 0xd

    .line 1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/j/c;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/intercom/j/c;->c(Ljava/lang/String;)V

    return-void
.end method
