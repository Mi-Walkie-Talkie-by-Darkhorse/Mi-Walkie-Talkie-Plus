.class public abstract Lcom/shanlitech/et/web/b/c/h;
.super Ljava/lang/Object;
.source "UserInfoMethod.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAccount()Ljava/lang/String;
.end method

.method public abstract getLoginType()I
.end method

.method public abstract getPhoneNum()Ljava/lang/String;
.end method

.method public abstract getPlatformId()I
.end method

.method public abstract getPwd()Ljava/lang/String;
.end method

.method public login()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/shanlitech/et/web/b/b;->G()Lcom/shanlitech/et/web/b/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/shanlitech/et/web/b/b;->O(Lcom/shanlitech/et/web/b/c/h;)V

    return-void
.end method
