.class Lcom/ifengyu/intercom/lite/login/LoginFragment$c;
.super Lcom/ifengyu/intercom/g/d/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/lite/login/LoginFragment;->a(Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

.field final synthetic c:Lcom/ifengyu/intercom/lite/login/LoginFragment;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/lite/login/LoginFragment;Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment$c;->c:Lcom/ifengyu/intercom/lite/login/LoginFragment;

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment$c;->b:Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/ifengyu/intercom/bean/LoginResult;I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment$c;->c:Lcom/ifengyu/intercom/lite/login/LoginFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->e(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V

    return-void

    :cond_0
    iget p2, p1, Lcom/ifengyu/intercom/bean/LoginResult;->errno:I

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment$c;->b:Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/ifengyu/intercom/bean/LoginResult;->data:Lcom/ifengyu/intercom/bean/User;

    iget-object v0, v0, Lcom/ifengyu/intercom/bean/User;->userid:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/umeng/analytics/MobclickAgent;->onProfileSignIn(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p1, Lcom/ifengyu/intercom/bean/LoginResult;->data:Lcom/ifengyu/intercom/bean/User;

    iget-object v0, v0, Lcom/ifengyu/intercom/bean/User;->userid:Ljava/lang/String;

    const-string v1, "userId"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lcom/ifengyu/intercom/bean/LoginResult;->data:Lcom/ifengyu/intercom/bean/User;

    iget-object p1, p1, Lcom/ifengyu/intercom/bean/User;->nickname:Ljava/lang/String;

    const-string v0, "nickname"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment$c;->c:Lcom/ifengyu/intercom/lite/login/LoginFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Login_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment$c;->b:Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/umeng/analytics/MobclickAgent;->onEventObject(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->R()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment$c;->b:Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;

    invoke-virtual {p2}, Lcom/ifengyu/intercom/lite/enums/LoginTypeEnum;->a()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const-string v0, "user_login_type"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment$c;->c:Lcom/ifengyu/intercom/lite/login/LoginFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->f(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment$c;->c:Lcom/ifengyu/intercom/lite/login/LoginFragment;

    invoke-static {p2}, Lcom/ifengyu/intercom/i/x;->a(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->a(Lcom/ifengyu/intercom/lite/login/LoginFragment;I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/ifengyu/intercom/bean/LoginResult;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/lite/login/LoginFragment$c;->a(Lcom/ifengyu/intercom/bean/LoginResult;I)V

    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onError:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LoginFragment"

    invoke-static {p2, p1}, Lcom/ifengyu/intercom/i/z;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment$c;->c:Lcom/ifengyu/intercom/lite/login/LoginFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->e(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V

    return-void
.end method

.method public a(Lokhttp3/Request;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/ifengyu/intercom/g/d/b;->a(Lokhttp3/Request;I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/lite/login/LoginFragment$c;->c:Lcom/ifengyu/intercom/lite/login/LoginFragment;

    invoke-static {p1}, Lcom/ifengyu/intercom/lite/login/LoginFragment;->d(Lcom/ifengyu/intercom/lite/login/LoginFragment;)V

    return-void
.end method
