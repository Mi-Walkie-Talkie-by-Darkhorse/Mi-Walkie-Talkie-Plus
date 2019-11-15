.class Lcom/ifengyu/intercom/ui/activity/LoginActivity$4;
.super Lcom/ifengyu/intercom/a/b/e;
.source "LoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/ifengyu/intercom/ui/activity/LoginActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/LoginActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    iput p2, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$4;->b:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/bean/LoginResult;I)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->h(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/ifengyu/intercom/bean/LoginResult;->data:Lcom/ifengyu/intercom/bean/User;

    new-instance v1, Lcom/ifengyu/im/account/UserInfo;

    invoke-direct {v1}, Lcom/ifengyu/im/account/UserInfo;-><init>()V

    iget-object v2, v0, Lcom/ifengyu/intercom/bean/User;->userid:Ljava/lang/String;

    iput-object v2, v1, Lcom/ifengyu/im/account/UserInfo;->userId:Ljava/lang/String;

    iget-object v2, v0, Lcom/ifengyu/intercom/bean/User;->nickname:Ljava/lang/String;

    iput-object v2, v1, Lcom/ifengyu/im/account/UserInfo;->nickname:Ljava/lang/String;

    iget-object v2, v0, Lcom/ifengyu/intercom/bean/User;->avatar:Ljava/lang/String;

    iput-object v2, v1, Lcom/ifengyu/im/account/UserInfo;->avatar:Ljava/lang/String;

    iget-object v2, v0, Lcom/ifengyu/intercom/bean/User;->phone:Ljava/lang/String;

    iput-object v2, v1, Lcom/ifengyu/im/account/UserInfo;->phone:Ljava/lang/String;

    iput v4, v1, Lcom/ifengyu/im/account/UserInfo;->phone_isBound:I

    iget-object v2, v0, Lcom/ifengyu/intercom/bean/User;->email:Ljava/lang/String;

    iput-object v2, v1, Lcom/ifengyu/im/account/UserInfo;->email:Ljava/lang/String;

    iget-object v2, v0, Lcom/ifengyu/intercom/bean/User;->gender:Ljava/lang/String;

    iput-object v2, v1, Lcom/ifengyu/im/account/UserInfo;->gender:Ljava/lang/String;

    iget-object v2, v0, Lcom/ifengyu/intercom/bean/User;->key:Ljava/lang/String;

    iput-object v2, v1, Lcom/ifengyu/im/account/UserInfo;->key:Ljava/lang/String;

    iget v0, v0, Lcom/ifengyu/intercom/bean/User;->expires_in:I

    int-to-long v2, v0

    iput-wide v2, v1, Lcom/ifengyu/im/account/UserInfo;->expires_in:J

    iput v4, v1, Lcom/ifengyu/im/account/UserInfo;->is_first_login:I

    iput v4, v1, Lcom/ifengyu/im/account/UserInfo;->sign_up_with_phone:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$4;->b:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const-string v0, "xiaomi"

    iput-object v0, v1, Lcom/ifengyu/im/account/UserInfo;->loginType:Ljava/lang/String;

    :goto_1
    invoke-static {}, Lcom/ifengyu/im/account/UserCache;->instance()Lcom/ifengyu/im/account/UserCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ifengyu/im/account/UserCache;->saveUserInfo(Lcom/ifengyu/im/account/UserInfo;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->f(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)Lcom/ifengyu/im/imservice/service/IMService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/service/IMService;->getLoginManager()Lcom/ifengyu/im/imservice/manager/IMLoginManager;

    move-result-object v0

    const-string v1, ""

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->L()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/im/imservice/manager/IMLoginManager;->login(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "wechat"

    iput-object v0, v1, Lcom/ifengyu/im/account/UserInfo;->loginType:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->i(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)V

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/bean/LoginResult;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/LoginActivity$4;->a(Lcom/ifengyu/intercom/bean/LoginResult;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 3

    const-string v0, "LoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->h(Lcom/ifengyu/intercom/ui/activity/LoginActivity;)V

    return-void
.end method

.method public a(Lokhttp3/Request;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/ifengyu/intercom/a/b/e;->a(Lokhttp3/Request;I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/LoginActivity$4;->c:Lcom/ifengyu/intercom/ui/activity/LoginActivity;

    const v1, 0x7f090127

    const v2, 0x7f020128

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/ifengyu/intercom/ui/activity/LoginActivity;->a(ZZII)V

    return-void
.end method
