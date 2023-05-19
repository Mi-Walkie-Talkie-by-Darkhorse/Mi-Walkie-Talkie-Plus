.class public final Lcom/efs/sdk/pa/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/pa/PAANRListener;


# instance fields
.field private a:Lcom/efs/sdk/pa/PAFactory;

.field private b:Lcom/efs/sdk/pa/PATraceListener;


# direct methods
.method public constructor <init>(Lcom/efs/sdk/pa/PAFactory;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/efs/sdk/pa/a;->a:Lcom/efs/sdk/pa/PAFactory;

    .line 3
    invoke-virtual {p1}, Lcom/efs/sdk/pa/PAFactory;->getTraceListener()Lcom/efs/sdk/pa/PATraceListener;

    move-result-object v0

    iput-object v0, p0, Lcom/efs/sdk/pa/a;->b:Lcom/efs/sdk/pa/PATraceListener;

    .line 4
    invoke-virtual {p1}, Lcom/efs/sdk/pa/PAFactory;->getConfigManager()Lcom/efs/sdk/pa/config/ConfigManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/efs/sdk/pa/config/ConfigManager;->enableTracer()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/efs/sdk/pa/a;->a:Lcom/efs/sdk/pa/PAFactory;

    const/4 v1, 0x0

    const-string v2, "patracepv"

    invoke-static {v0, v2, v1}, Lcom/efs/sdk/pa/c;->a(Lcom/efs/sdk/pa/PAFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/efs/sdk/pa/a;->b:Lcom/efs/sdk/pa/PATraceListener;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, p1}, Lcom/efs/sdk/pa/PATraceListener;->onCheck(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final anrStack(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/efs/sdk/pa/a;->a:Lcom/efs/sdk/pa/PAFactory;

    const-string v1, "patrace"

    invoke-static {v0, v1, p1}, Lcom/efs/sdk/pa/c;->a(Lcom/efs/sdk/pa/PAFactory;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/efs/sdk/pa/a;->b:Lcom/efs/sdk/pa/PATraceListener;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/efs/sdk/pa/PATraceListener;->onAnrTrace()V

    :cond_0
    return-void
.end method

.method public final unexcept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/pa/a;->b:Lcom/efs/sdk/pa/PATraceListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/efs/sdk/pa/PATraceListener;->onUnexcept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
