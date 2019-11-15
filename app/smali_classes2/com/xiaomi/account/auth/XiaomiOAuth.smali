.class public interface abstract Lcom/xiaomi/account/auth/XiaomiOAuth;
.super Ljava/lang/Object;
.source "XiaomiOAuth.java"


# virtual methods
.method public abstract fastOAuth(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaomi/account/auth/OAuthConfig;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCodeOrAccessToken(Landroid/app/Activity;Lcom/xiaomi/account/auth/OAuthConfig;)Lcom/xiaomi/account/openauth/XiaomiOAuthFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/xiaomi/account/auth/OAuthConfig;",
            ")",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthFuture",
            "<",
            "Lcom/xiaomi/account/openauth/XiaomiOAuthResults;",
            ">;"
        }
    .end annotation
.end method
