.class Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession$3;
.super Ljava/lang/Object;
.source "MiuiOauth.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession$3;->this$1:Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession$3;->this$1:Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;

    iget-object v0, v0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->mAuthService:Lcom/xiaomi/account/auth/XiaomiAuthService;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession$3;->this$1:Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;

    iget-object v1, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession$3;->this$1:Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;

    iget-object v1, v1, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->mAuthService:Lcom/xiaomi/account/auth/XiaomiAuthService;

    iget-object v2, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession$3;->this$1:Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;

    iget-object v2, v2, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->mResponse:Lcom/xiaomi/account/IXiaomiAuthResponse;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->doWork(Lcom/xiaomi/account/auth/XiaomiAuthService;Lcom/xiaomi/account/IXiaomiAuthResponse;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession$3;->this$1:Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;

    invoke-virtual {v1, v0}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
