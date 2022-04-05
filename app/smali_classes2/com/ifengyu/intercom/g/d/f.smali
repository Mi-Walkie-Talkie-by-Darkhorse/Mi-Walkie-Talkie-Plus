.class public abstract Lcom/ifengyu/intercom/g/d/f;
.super Lcom/ifengyu/intercom/g/d/b;


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

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/b;-><init>()V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/bean/User;)V
    .locals 4

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->R()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->userid:Ljava/lang/String;

    const-string v2, "userid"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->nickname:Ljava/lang/String;

    const-string v2, "nickname"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->avatar:Ljava/lang/String;

    const-string v2, "avatar"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->username:Ljava/lang/String;

    const-string v2, "username"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->phone:Ljava/lang/String;

    const-string v2, "phone"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->email:Ljava/lang/String;

    const-string v2, "email"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->gender:Ljava/lang/String;

    const-string v2, "gender"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->key:Ljava/lang/String;

    const-string v2, "key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget v1, p1, Lcom/ifengyu/intercom/bean/User;->expires_in:I

    const-string v2, "user_expires_in"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v0, Lcom/ifengyu/library/account/UserInfo;

    invoke-direct {v0}, Lcom/ifengyu/library/account/UserInfo;-><init>()V

    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->userid:Ljava/lang/String;

    iput-object v1, v0, Lcom/ifengyu/library/account/UserInfo;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->nickname:Ljava/lang/String;

    iput-object v1, v0, Lcom/ifengyu/library/account/UserInfo;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->avatar:Ljava/lang/String;

    iput-object v1, v0, Lcom/ifengyu/library/account/UserInfo;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/ifengyu/intercom/bean/User;->phone:Ljava/lang/String;

    iput-object v1, v0, Lcom/ifengyu/library/account/UserInfo;->d:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, v0, Lcom/ifengyu/library/account/UserInfo;->e:I

    iget-object v2, p1, Lcom/ifengyu/intercom/bean/User;->email:Ljava/lang/String;

    iput-object v2, v0, Lcom/ifengyu/library/account/UserInfo;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/ifengyu/intercom/bean/User;->gender:Ljava/lang/String;

    iput-object v2, v0, Lcom/ifengyu/library/account/UserInfo;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/ifengyu/intercom/bean/User;->key:Ljava/lang/String;

    iput-object v2, v0, Lcom/ifengyu/library/account/UserInfo;->h:Ljava/lang/String;

    iget p1, p1, Lcom/ifengyu/intercom/bean/User;->expires_in:I

    int-to-long v2, p1

    iput-wide v2, v0, Lcom/ifengyu/library/account/UserInfo;->i:J

    iput v1, v0, Lcom/ifengyu/library/account/UserInfo;->j:I

    iput v1, v0, Lcom/ifengyu/library/account/UserInfo;->k:I

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

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LoginCallback"

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    const-class v0, Lcom/ifengyu/intercom/bean/LoginResult;

    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ifengyu/intercom/bean/LoginResult;

    iget p2, p1, Lcom/ifengyu/intercom/bean/LoginResult;->errno:I

    if-nez p2, :cond_0

    iget-object p2, p1, Lcom/ifengyu/intercom/bean/LoginResult;->data:Lcom/ifengyu/intercom/bean/User;

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

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/g/d/f;->a(Lokhttp3/Response;I)Lcom/ifengyu/intercom/bean/LoginResult;

    move-result-object p1

    return-object p1
.end method
