.class Lcom/ifengyu/intercom/MiTalkiApp$c;
.super Lcom/ifengyu/intercom/g/d/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/MiTalkiApp;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/MiTalkiApp;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/MiTalkiApp;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/MiTalkiApp$c;->b:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/l;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/qmuiteam/qmui/widget/dialog/b;I)V
    .locals 0

    invoke-virtual {p1}, Landroidx/appcompat/app/d;->dismiss()V

    iget-object p1, p0, Lcom/ifengyu/intercom/MiTalkiApp$c;->b:Lcom/ifengyu/intercom/MiTalkiApp;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->p()V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/MiTalkiApp$c;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    const-string p2, "gender"

    const-string v0, "avatar"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "errno"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/i/w;->b()Lcom/ifengyu/intercom/i/w;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/a;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/a;-><init>(Lcom/ifengyu/intercom/MiTalkiApp$c;)V

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/i/w;->a(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)V

    goto :goto_0

    :cond_0
    const-string p1, "success"

    const-string v2, "msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "data"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/ifengyu/intercom/i/d0;->R()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v2, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    return-void
.end method
