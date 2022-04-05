.class public Lcom/ifengyu/intercom/node/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ifengyu/intercom/node/g;


# static fields
.field private static c:Lcom/ifengyu/intercom/node/j;


# instance fields
.field private volatile a:Z

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/ifengyu/intercom/node/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/j;->a:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/node/j;->b:Ljava/util/Set;

    return-void
.end method

.method public static b()Lcom/ifengyu/intercom/node/j;
    .locals 1

    sget-object v0, Lcom/ifengyu/intercom/node/j;->c:Lcom/ifengyu/intercom/node/j;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/node/j;

    invoke-direct {v0}, Lcom/ifengyu/intercom/node/j;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/node/j;->c:Lcom/ifengyu/intercom/node/j;

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/node/j;->c:Lcom/ifengyu/intercom/node/j;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/node/h;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/j;->b:Ljava/util/Set;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/node/i;)V
    .locals 4

    const-string v0, "NodeService"

    const-string v1, "onDeviceConnected"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/j;->a:Z

    iget-object v1, p0, Lcom/ifengyu/intercom/node/j;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/intercom/node/h;

    invoke-interface {p1}, Lcom/ifengyu/intercom/node/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/ifengyu/intercom/node/h;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/MiTalkiApp;->d(Z)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/MiTalkiApp;->c(Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "NodeService"

    const-string v1, "onDeviceDisConnected"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/node/j;->a:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/node/j;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/node/h;

    invoke-interface {v1, p1}, Lcom/ifengyu/intercom/node/h;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/ConnectionFailedReason;)V
    .locals 3

    const-string v0, "NodeService"

    const-string v1, "onDeviceConnectFailed"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/j;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/ifengyu/intercom/node/j$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/node/h;

    invoke-interface {v1, p1}, Lcom/ifengyu/intercom/node/h;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/node/h;

    invoke-interface {v1, p1}, Lcom/ifengyu/intercom/node/h;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/node/h;

    invoke-interface {v1, p1}, Lcom/ifengyu/intercom/node/h;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/b;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/l;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/node/m;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ifengyu/intercom/protos/MitalkProtos$Command;)V
    .locals 0

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/node/j;->a:Z

    return v0
.end method

.method public b(Lcom/ifengyu/intercom/node/h;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/node/j;->b:Ljava/util/Set;

    invoke-static {p1}, Lcom/ifengyu/intercom/i/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "NodeService"

    const-string v1, "onDeviceConnConfrimRequest"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/node/j;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/intercom/node/h;

    invoke-interface {v1, p1}, Lcom/ifengyu/intercom/node/h;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
