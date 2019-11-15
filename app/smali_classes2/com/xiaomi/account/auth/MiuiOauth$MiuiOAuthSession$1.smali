.class Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession$1;
.super Ljava/lang/Object;
.source "MiuiOauth.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession;-><init>(Lcom/xiaomi/account/auth/MiuiOauth;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$this$0:Lcom/xiaomi/account/auth/MiuiOauth;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/auth/MiuiOauth;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession$1;->val$this$0:Lcom/xiaomi/account/auth/MiuiOauth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should never be called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/account/auth/MiuiOauth$MiuiOAuthSession$1;->call()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
