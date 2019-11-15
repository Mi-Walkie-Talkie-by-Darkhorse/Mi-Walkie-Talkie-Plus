.class Lcom/tencent/connect/auth/AuthAgent$1$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/auth/AuthAgent$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/tencent/connect/auth/AuthAgent$1;


# direct methods
.method constructor <init>(Lcom/tencent/connect/auth/AuthAgent$1;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/connect/auth/AuthAgent$1$1;->b:Lcom/tencent/connect/auth/AuthAgent$1;

    iput-object p2, p0, Lcom/tencent/connect/auth/AuthAgent$1$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Lcom/tencent/connect/auth/a;

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthAgent$1$1;->a:Landroid/app/Activity;

    const-string v2, "action_login"

    iget-object v3, p0, Lcom/tencent/connect/auth/AuthAgent$1$1;->b:Lcom/tencent/connect/auth/AuthAgent$1;

    iget-object v3, v3, Lcom/tencent/connect/auth/AuthAgent$1;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/connect/auth/AuthAgent$1$1;->b:Lcom/tencent/connect/auth/AuthAgent$1;

    iget-object v4, v4, Lcom/tencent/connect/auth/AuthAgent$1;->b:Lcom/tencent/tauth/IUiListener;

    iget-object v5, p0, Lcom/tencent/connect/auth/AuthAgent$1$1;->b:Lcom/tencent/connect/auth/AuthAgent$1;

    iget-object v5, v5, Lcom/tencent/connect/auth/AuthAgent$1;->c:Lcom/tencent/connect/auth/AuthAgent;

    invoke-static {v5}, Lcom/tencent/connect/auth/AuthAgent;->f(Lcom/tencent/connect/auth/AuthAgent;)Lcom/tencent/connect/auth/QQToken;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/connect/auth/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;Lcom/tencent/connect/auth/QQToken;)V

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthAgent$1$1;->a:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/connect/auth/AuthAgent$1$1;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/tencent/connect/auth/a;->show()V

    :cond_0
    return-void
.end method
