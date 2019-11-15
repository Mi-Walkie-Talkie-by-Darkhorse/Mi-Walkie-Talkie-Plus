.class public Lcom/ifengyu/im/account/UserCache;
.super Ljava/lang/Object;
.source "UserCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/im/account/UserCache$Holder;
    }
.end annotation


# static fields
.field public static final KEY_LOGIN_INFO:Ljava/lang/String; = "user_info"

.field public static final SP_LOGIN:Ljava/lang/String; = "sp_login"


# instance fields
.field private mUserInfo:Lcom/ifengyu/im/account/UserInfo;

.field private mUserInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ifengyu/im/account/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/im/account/UserCache;->mUserInfoMap:Ljava/util/Map;

    return-void
.end method

.method public static instance()Lcom/ifengyu/im/account/UserCache;
    .locals 1

    invoke-static {}, Lcom/ifengyu/im/account/UserCache$Holder;->access$000()Lcom/ifengyu/im/account/UserCache;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/im/account/UserCache;->mUserInfo:Lcom/ifengyu/im/account/UserInfo;

    const-string v0, "sp_login"

    invoke-static {v0}, Lcom/ifengyu/library/util/g;->a(Ljava/lang/String;)Lcom/ifengyu/library/util/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/library/util/g;->a()V

    return-void
.end method

.method public clearPhone()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/account/UserCache;->mUserInfo:Lcom/ifengyu/im/account/UserInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ifengyu/im/account/UserInfo;->phone_isBound:I

    iget-object v0, p0, Lcom/ifengyu/im/account/UserCache;->mUserInfo:Lcom/ifengyu/im/account/UserInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ifengyu/im/account/UserInfo;->phone:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/im/account/UserCache;->mUserInfo:Lcom/ifengyu/im/account/UserInfo;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/account/UserCache;->saveUserInfo(Lcom/ifengyu/im/account/UserInfo;)V

    return-void
.end method

.method public getUserInfo()Lcom/ifengyu/im/account/UserInfo;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/account/UserCache;->mUserInfo:Lcom/ifengyu/im/account/UserInfo;

    if-nez v0, :cond_0

    const-string v0, "sp_login"

    invoke-static {v0}, Lcom/ifengyu/library/util/g;->a(Ljava/lang/String;)Lcom/ifengyu/library/util/g;

    move-result-object v0

    const-string v1, "user_info"

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/util/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ifengyu/library/util/h;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/account/UserInfo;

    iput-object v0, p0, Lcom/ifengyu/im/account/UserCache;->mUserInfo:Lcom/ifengyu/im/account/UserInfo;

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/im/account/UserCache;->mUserInfo:Lcom/ifengyu/im/account/UserInfo;

    return-object v0
.end method

.method public saveUserInfo(Lcom/ifengyu/im/account/UserInfo;)V
    .locals 3

    iput-object p1, p0, Lcom/ifengyu/im/account/UserCache;->mUserInfo:Lcom/ifengyu/im/account/UserInfo;

    const-string v0, "sp_login"

    invoke-static {v0}, Lcom/ifengyu/library/util/g;->a(Ljava/lang/String;)Lcom/ifengyu/library/util/g;

    move-result-object v0

    const-string v1, "user_info"

    invoke-static {p1}, Lcom/ifengyu/library/util/h;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/util/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAvatar(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/account/UserCache;->mUserInfo:Lcom/ifengyu/im/account/UserInfo;

    iput-object p1, v0, Lcom/ifengyu/im/account/UserInfo;->avatar:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/im/account/UserCache;->mUserInfo:Lcom/ifengyu/im/account/UserInfo;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/account/UserCache;->saveUserInfo(Lcom/ifengyu/im/account/UserInfo;)V

    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/account/UserCache;->mUserInfo:Lcom/ifengyu/im/account/UserInfo;

    iput-object p1, v0, Lcom/ifengyu/im/account/UserInfo;->email:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/im/account/UserCache;->mUserInfo:Lcom/ifengyu/im/account/UserInfo;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/account/UserCache;->saveUserInfo(Lcom/ifengyu/im/account/UserInfo;)V

    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/account/UserCache;->mUserInfo:Lcom/ifengyu/im/account/UserInfo;

    iput-object p1, v0, Lcom/ifengyu/im/account/UserInfo;->gender:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/im/account/UserCache;->mUserInfo:Lcom/ifengyu/im/account/UserInfo;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/account/UserCache;->saveUserInfo(Lcom/ifengyu/im/account/UserInfo;)V

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/account/UserCache;->mUserInfo:Lcom/ifengyu/im/account/UserInfo;

    iput-object p1, v0, Lcom/ifengyu/im/account/UserInfo;->nickname:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/im/account/UserCache;->mUserInfo:Lcom/ifengyu/im/account/UserInfo;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/account/UserCache;->saveUserInfo(Lcom/ifengyu/im/account/UserInfo;)V

    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/im/account/UserCache;->mUserInfo:Lcom/ifengyu/im/account/UserInfo;

    iput-object p1, v0, Lcom/ifengyu/im/account/UserInfo;->phone:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/im/account/UserCache;->mUserInfo:Lcom/ifengyu/im/account/UserInfo;

    const/4 v1, 0x1

    iput v1, v0, Lcom/ifengyu/im/account/UserInfo;->phone_isBound:I

    iget-object v0, p0, Lcom/ifengyu/im/account/UserCache;->mUserInfo:Lcom/ifengyu/im/account/UserInfo;

    invoke-virtual {p0, v0}, Lcom/ifengyu/im/account/UserCache;->saveUserInfo(Lcom/ifengyu/im/account/UserInfo;)V

    return-void
.end method
