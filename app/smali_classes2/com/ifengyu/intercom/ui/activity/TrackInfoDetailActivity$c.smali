.class Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$c;
.super Lcom/ifengyu/intercom/g/d/l;
.source "TrackInfoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->D()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/g/d/l;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$c;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 4
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "errno"

    .line 5
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    const v0, 0x7f1100fe

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->c(I)V

    .line 7
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    const v0, 0x7f080191

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->b(I)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->h(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Lcom/ifengyu/intercom/greendao/bean/b;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v0, "trackId"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/greendao/bean/b;->e(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/MiTalkiApp;->g()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/greendao/dao/b;->d()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object p1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {p2}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->h(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Lcom/ifengyu/intercom/greendao/bean/b;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/greenrobot/greendao/AbstractDao;->insertOrReplace(Ljava/lang/Object;)J

    .line 10
    invoke-static {}, Lcom/ifengyu/library/base/BaseApp;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$c$a;

    invoke-direct {p2, p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$c$a;-><init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$c;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->j(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->j(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V

    :goto_0
    return-void
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 0

    .line 2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$c;->b:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {p1}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->j(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V

    return-void
.end method
