.class public Lcom/xiaomi/account/auth/XiaomiAuthService;
.super Ljava/lang/Object;
.source "XiaomiAuthService.java"

# interfaces
.implements Lcom/xiaomi/account/IXiaomiAuthService;


# instance fields
.field private mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

.field private mMiuiV5AuthService:Lmiui/net/IXiaomiAuthService;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/xiaomi/account/IXiaomiAuthService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaomi/account/IXiaomiAuthService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {p1}, Lmiui/net/IXiaomiAuthService$a;->a(Landroid/os/IBinder;)Lmiui/net/IXiaomiAuthService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mMiuiV5AuthService:Lmiui/net/IXiaomiAuthService;

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getAccessTokenInResponse(Lcom/xiaomi/account/IXiaomiAuthResponse;Landroid/os/Bundle;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaomi/account/IXiaomiAuthService;->getAccessTokenInResponse(Lcom/xiaomi/account/IXiaomiAuthResponse;Landroid/os/Bundle;II)V

    :cond_0
    return-void
.end method

.method public getMiCloudAccessToken(Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    invoke-interface {v0, p1, p2}, Lcom/xiaomi/account/IXiaomiAuthService;->getMiCloudAccessToken(Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mMiuiV5AuthService:Lmiui/net/IXiaomiAuthService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mMiuiV5AuthService:Lmiui/net/IXiaomiAuthService;

    invoke-interface {v0, p1, p2}, Lmiui/net/IXiaomiAuthService;->invalidateAccessToken(Landroid/accounts/Account;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mMiuiV5AuthService:Lmiui/net/IXiaomiAuthService;

    invoke-interface {v0, p1, p2}, Lmiui/net/IXiaomiAuthService;->getMiCloudAccessToken(Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMiCloudUserInfo(Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSnsAccessToken(Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getVersionNum()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    invoke-interface {v0}, Lcom/xiaomi/account/IXiaomiAuthService;->getVersionNum()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public invalidateAccessToken(Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mMiuiV5AuthService:Lmiui/net/IXiaomiAuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mMiuiV5AuthService:Lmiui/net/IXiaomiAuthService;

    invoke-interface {v0, p1, p2}, Lmiui/net/IXiaomiAuthService;->invalidateAccessToken(Landroid/accounts/Account;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public supportResponseWay()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/auth/XiaomiAuthService;->mAuthService:Lcom/xiaomi/account/IXiaomiAuthService;

    invoke-interface {v0}, Lcom/xiaomi/account/IXiaomiAuthService;->supportResponseWay()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
