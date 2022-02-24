.class public abstract Lcom/ifengyu/intercom/g/d/f;
.super Lcom/ifengyu/intercom/g/d/b;
.source "LoginCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/g/d/b<",
        "Lcom/ifengyu/intercom/bean/LoginResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/b;-><init>()V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/bean/User;)V
    .locals 4

    .line 8
    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->R()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 9
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 10
    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->userid:Ljava/lang/String;

    const-string v2, "userid"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 11
    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->nickname:Ljava/lang/String;

    const-string v2, "nickname"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->avatar:Ljava/lang/String;

    const-string v2, "avatar"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 13
    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->username:Ljava/lang/String;

    const-string v2, "username"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 14
    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->phone:Ljava/lang/String;

    const-string v2, "phone"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 15
    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->email:Ljava/lang/String;

    const-string v2, "email"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 16
    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->gender:Ljava/lang/String;

    const-string v2, "gender"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 17
    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->key:Ljava/lang/String;

    const-string v2, "key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 18
    iget v1, p1, Lcom/ifengyu/intercom/bean/User;->expires_in:I

    const-string v2, "user_expires_in"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 20
    new-instance v0, Lcom/ifengyu/library/account/UserInfo;

    invoke-direct {v0}, Lcom/ifengyu/library/account/UserInfo;-><init>()V

    .line 21
    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->userid:Ljava/lang/String;

    iput-object v1, v0, Lcom/ifengyu/library/account/UserInfo;->a:Ljava/lang/String;

    .line 22
    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->nickname:Ljava/lang/String;

    iput-object v1, v0, Lcom/ifengyu/library/account/UserInfo;->b:Ljava/lang/String;

    .line 23
    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/ifengyu/library/account/UserInfo;->c:Ljava/lang/String;

    .line 24
    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->phone:Ljava/lang/String;

    iput-object v1, v0, Lcom/ifengyu/library/account/UserInfo;->d:Ljava/lang/String;

    const/4 v1, 0x0

    .line 25
    iput v1, v0, Lcom/ifengyu/library/account/UserInfo;->e:I

    .line 26
    iget-object v2, p1, Lcom/ifengyu/intercom/bean/User;->email:Ljava/lang/String;

    iput-object v2, v0, Lcom/ifengyu/library/account/UserInfo;->f:Ljava/lang/String;

    .line 27
    iget-object v2, p1, Lcom/ifengyu/intercom/bean/User;->gender:Ljava/lang/String;

    iput-object v2, v0, Lcom/ifengyu/library/account/UserInfo;->g:Ljava/lang/String;

    .line 28
    iget-object v2, p1, Lcom/ifengyu/intercom/bean/User;->key:Ljava/lang/String;

    iput-object v2, v0, Lcom/ifengyu/library/account/UserInfo;->h:Ljava/lang/String;

    .line 29
    iget p1, p1, Lcom/ifengyu/intercom/bean/User;->expires_in:I

    int-to-long v2, p1

    iput-wide v2, v0, Lcom/ifengyu/library/account/UserInfo;->i:J

    .line 30
    iput v1, v0, Lcom/ifengyu/library/account/UserInfo;->j:I

    .line 31
    iput v1, v0, Lcom/ifengyu/library/account/UserInfo;->k:I

    .line 32
    invoke-static {v0}, Lcom/ifengyu/library/account/a;->a(Lcom/ifengyu/library/account/UserInfo;)V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Response;I)Lcom/ifengyu/intercom/bean/LoginResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LoginCallback"

    .line 3
    invoke-static {p2, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/ifengyu/intercom/bean/LoginResult;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/LoginResult;

    .line 5
    iget p2, p1, Lcom/ifengyu/intercom/bean/LoginResult;->errno:I

    if-nez p2, :cond_0

    .line 6
    iget-object p2, p1, Lcom/ifengyu/intercom/bean/LoginResult;->data:Lcom/ifengyu/intercom/bean/User;

    .line 7
    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/g/d/f;->a(Lcom/ifengyu/intercom/bean/User;)V

    :cond_0
    return-object p1
.end method

.method public bridge synthetic a(Lokhttp3/Response;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/g/d/f;->a(Lokhttp3/Response;I)Lcom/ifengyu/intercom/bean/LoginResult;

    move-result-object p1

    return-object p1
.end method
