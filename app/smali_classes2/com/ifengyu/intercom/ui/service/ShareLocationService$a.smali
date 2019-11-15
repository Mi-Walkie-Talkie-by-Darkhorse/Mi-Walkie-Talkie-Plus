.class Lcom/ifengyu/intercom/ui/service/ShareLocationService$a;
.super Ljava/lang/Object;
.source "ShareLocationService.java"

# interfaces
.implements Lcom/ifengyu/intercom/node/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/service/ShareLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;


# direct methods
.method private constructor <init>(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/service/ShareLocationService$a;->a:Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ifengyu/intercom/ui/service/ShareLocationService;Lcom/ifengyu/intercom/ui/service/ShareLocationService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/service/ShareLocationService$a;-><init>(Lcom/ifengyu/intercom/ui/service/ShareLocationService;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v2

    const-class v3, Lcom/ifengyu/intercom/ui/service/ShareLocationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/MiTalkiApp;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
