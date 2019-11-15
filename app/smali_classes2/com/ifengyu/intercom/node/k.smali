.class public Lcom/ifengyu/intercom/node/k;
.super Ljava/lang/Object;
.source "NodeService.java"

# interfaces
.implements Lcom/ifengyu/intercom/node/h;


# static fields
.field private static a:Lcom/ifengyu/intercom/node/k;


# instance fields
.field private volatile b:Z

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ifengyu/intercom/node/i$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ifengyu/intercom/node/k;->a:Lcom/ifengyu/intercom/node/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/k;->b:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/k;->c:Ljava/util/Set;

    return-void
.end method

.method public static a()Lcom/ifengyu/intercom/node/k;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/node/k;->a:Lcom/ifengyu/intercom/node/k;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/node/k;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/k;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/node/k;->a:Lcom/ifengyu/intercom/node/k;

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/node/k;->a:Lcom/ifengyu/intercom/node/k;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/node/i$a;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/k;->c:Ljava/util/Set;

    invoke-static {p1}, Lcom/ifengyu/intercom/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/node/j;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "NodeService"

    const-string v1, "onDeviceConnected"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/ifengyu/intercom/node/k;->b:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/node/k;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/i$a;

    invoke-interface {p1}, Lcom/ifengyu/intercom/node/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/ifengyu/intercom/node/i$a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/MiTalkiApp;->a(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/MiTalkiApp;->b(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "NodeService"

    const-string v1, "onDeviceDisConnected"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/k;->b:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/node/k;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/i$a;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/node/i$a;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V
    .locals 3

    const-string v0, "NodeService"

    const-string v1, "onDeviceConnectFailed"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/k;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ifengyu/intercom/node/k$1;->a:[I

    invoke-virtual {p2}, Lcom/ifengyu/intercom/node/ConnectionFailedReason;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/i$a;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/node/i$a;->d(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/i$a;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/node/i$a;->e(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/i$a;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/node/i$a;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/c;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/m;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/n;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public b(Lcom/ifengyu/intercom/node/i$a;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/node/k;->c:Ljava/util/Set;

    invoke-static {p1}, Lcom/ifengyu/intercom/b/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "NodeService"

    const-string v1, "onDeviceConnConfrimRequest"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/k;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/node/i$a;

    invoke-interface {v0, p1}, Lcom/ifengyu/intercom/node/i$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/k;->b:Z

    return v0
.end method
