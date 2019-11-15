.class final Lcom/xiaomi/mipush/sdk/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mipush/sdk/l;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/mipush/sdk/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/mipush/sdk/l;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/mipush/sdk/l;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/l;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/mipush/sdk/l;->c:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/MiPushClient;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;)V

    return-void
.end method
