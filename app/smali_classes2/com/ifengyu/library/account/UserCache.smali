.class public Lcom/ifengyu/library/account/UserCache;
.super Ljava/lang/Object;
.source "UserCache.java"


# static fields
.field public static final KEY_LOGIN_INFO:Ljava/lang/String; = "new_user_info"

.field public static final SP_LOGIN:Ljava/lang/String; = "sp_login"

.field private static account:Ljava/lang/String;

.field private static userInfo:Lcom/ifengyu/library/account/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    const-string v0, "sp_login"

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/p;->c(Ljava/lang/String;)Lcom/ifengyu/library/utils/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/library/utils/p;->a()V

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lcom/ifengyu/library/account/UserCache;->userInfo:Lcom/ifengyu/library/account/UserInfo;

    .line 3
    sput-object v0, Lcom/ifengyu/library/account/UserCache;->account:Ljava/lang/String;

    return-void
.end method

.method public static clearPhone()V
    .locals 2

    .line 1
    sget-object v0, Lcom/ifengyu/library/account/UserCache;->userInfo:Lcom/ifengyu/library/account/UserInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/ifengyu/library/account/UserInfo;->phone:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/account/UserCache;->saveUserInfo(Lcom/ifengyu/library/account/UserInfo;)V

    return-void
.end method

.method public static getAccount()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/library/account/UserCache;->account:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/ifengyu/library/account/UserCache;->getUserInfo()Lcom/ifengyu/library/account/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/ifengyu/library/account/UserCache;->getUserInfo()Lcom/ifengyu/library/account/UserInfo;

    move-result-object v0

    iget v0, v0, Lcom/ifengyu/library/account/UserInfo;->userId:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getUserInfo()Lcom/ifengyu/library/account/UserInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/library/account/UserCache;->userInfo:Lcom/ifengyu/library/account/UserInfo;

    return-object v0
.end method

.method public static init()V
    .locals 3

    const-string v0, "sp_login"

    .line 1
    invoke-static {v0}, Lcom/ifengyu/library/utils/p;->c(Ljava/lang/String;)Lcom/ifengyu/library/utils/p;

    move-result-object v0

    const-string v1, "new_user_info"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/library/utils/p;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {v0}, Lcom/ifengyu/library/utils/q;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/account/UserInfo;

    sput-object v0, Lcom/ifengyu/library/account/UserCache;->userInfo:Lcom/ifengyu/library/account/UserInfo;

    if-eqz v0, :cond_1

    .line 4
    iget v0, v0, Lcom/ifengyu/library/account/UserInfo;->userId:I

    if-lez v0, :cond_1

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/library/account/UserCache;->account:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static saveUserInfo(Lcom/ifengyu/library/account/UserInfo;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0}, Lcom/ifengyu/library/utils/q;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "sp_login"

    .line 2
    invoke-static {v1}, Lcom/ifengyu/library/utils/p;->c(Ljava/lang/String;)Lcom/ifengyu/library/utils/p;

    move-result-object v1

    const-string v2, "new_user_info"

    invoke-virtual {v1, v2, v0}, Lcom/ifengyu/library/utils/p;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sput-object p0, Lcom/ifengyu/library/account/UserCache;->userInfo:Lcom/ifengyu/library/account/UserInfo;

    .line 4
    iget p0, p0, Lcom/ifengyu/library/account/UserInfo;->userId:I

    if-lez p0, :cond_0

    .line 5
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/ifengyu/library/account/UserCache;->account:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static setAvatar(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/library/account/UserCache;->userInfo:Lcom/ifengyu/library/account/UserInfo;

    iput-object p0, v0, Lcom/ifengyu/library/account/UserInfo;->avatar:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/account/UserCache;->saveUserInfo(Lcom/ifengyu/library/account/UserInfo;)V

    return-void
.end method

.method public static setEmail(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/library/account/UserCache;->userInfo:Lcom/ifengyu/library/account/UserInfo;

    iput-object p0, v0, Lcom/ifengyu/library/account/UserInfo;->email:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/account/UserCache;->saveUserInfo(Lcom/ifengyu/library/account/UserInfo;)V

    return-void
.end method

.method public static setGender(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/library/account/UserCache;->userInfo:Lcom/ifengyu/library/account/UserInfo;

    iput p0, v0, Lcom/ifengyu/library/account/UserInfo;->gender:I

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/account/UserCache;->saveUserInfo(Lcom/ifengyu/library/account/UserInfo;)V

    return-void
.end method

.method public static setNickname(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/library/account/UserCache;->userInfo:Lcom/ifengyu/library/account/UserInfo;

    iput-object p0, v0, Lcom/ifengyu/library/account/UserInfo;->nickname:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/account/UserCache;->saveUserInfo(Lcom/ifengyu/library/account/UserInfo;)V

    return-void
.end method

.method public static setPhone(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ifengyu/library/account/UserCache;->userInfo:Lcom/ifengyu/library/account/UserInfo;

    iput-object p0, v0, Lcom/ifengyu/library/account/UserInfo;->phone:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/ifengyu/library/account/UserCache;->saveUserInfo(Lcom/ifengyu/library/account/UserInfo;)V

    return-void
.end method

.method public static setTokens(Lcom/ifengyu/library/account/UserInfo$Tokens;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/ifengyu/library/account/UserCache;->userInfo:Lcom/ifengyu/library/account/UserInfo;

    iget-object v1, v0, Lcom/ifengyu/library/account/UserInfo;->tokens:Lcom/ifengyu/library/account/UserInfo$Tokens;

    iget-object v2, p0, Lcom/ifengyu/library/account/UserInfo$Tokens;->accessToken:Ljava/lang/String;

    iput-object v2, v1, Lcom/ifengyu/library/account/UserInfo$Tokens;->accessToken:Ljava/lang/String;

    .line 2
    iget-object p0, p0, Lcom/ifengyu/library/account/UserInfo$Tokens;->refreshToken:Ljava/lang/String;

    iput-object p0, v1, Lcom/ifengyu/library/account/UserInfo$Tokens;->refreshToken:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/ifengyu/library/account/UserCache;->saveUserInfo(Lcom/ifengyu/library/account/UserInfo;)V

    return-void
.end method
