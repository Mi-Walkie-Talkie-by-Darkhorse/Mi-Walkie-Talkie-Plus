.class public abstract Lcom/ifengyu/intercom/a/b/e;
.super Lcom/ifengyu/intercom/a/b/b;
.source "LoginCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/a/b/b",
        "<",
        "Lcom/ifengyu/intercom/bean/LoginResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/b;-><init>()V

    return-void
.end method

.method private a(Lcom/ifengyu/intercom/bean/User;)V
    .locals 3

    invoke-static {}, Lcom/ifengyu/intercom/b/w;->b()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userid"

    iget-object v2, p1, Lcom/ifengyu/intercom/bean/User;->userid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "nickname"

    iget-object v2, p1, Lcom/ifengyu/intercom/bean/User;->nickname:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "avatar"

    iget-object v2, p1, Lcom/ifengyu/intercom/bean/User;->avatar:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "username"

    iget-object v2, p1, Lcom/ifengyu/intercom/bean/User;->username:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "phone"

    iget-object v2, p1, Lcom/ifengyu/intercom/bean/User;->phone:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "email"

    iget-object v2, p1, Lcom/ifengyu/intercom/bean/User;->email:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "gender"

    iget-object v2, p1, Lcom/ifengyu/intercom/bean/User;->gender:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "key"

    iget-object v2, p1, Lcom/ifengyu/intercom/bean/User;->key:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "user_expires_in"

    iget v2, p1, Lcom/ifengyu/intercom/bean/User;->expires_in:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public a(Lokhttp3/Response;I)Lcom/ifengyu/intercom/bean/LoginResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/ifengyu/intercom/bean/LoginResult;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/intercom/bean/LoginResult;

    iget v1, v0, Lcom/ifengyu/intercom/bean/LoginResult;->errno:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/ifengyu/intercom/bean/LoginResult;->data:Lcom/ifengyu/intercom/bean/User;

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/a/b/e;->a(Lcom/ifengyu/intercom/bean/User;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic b(Lokhttp3/Response;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/a/b/e;->a(Lokhttp3/Response;I)Lcom/ifengyu/intercom/bean/LoginResult;

    move-result-object v0

    return-object v0
.end method
