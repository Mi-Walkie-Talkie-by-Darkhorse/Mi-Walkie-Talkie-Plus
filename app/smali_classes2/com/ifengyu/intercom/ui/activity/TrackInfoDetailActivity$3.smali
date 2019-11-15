.class Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$3;
.super Lcom/ifengyu/intercom/a/b/j;
.source "TrackInfoDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->r()V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-direct {p0}, Lcom/ifengyu/intercom/a/b/j;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$3;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "errno"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    const v2, 0x7f0900d0

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->e(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    const v2, 0x7f02016e

    invoke-virtual {v1, v2}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->d(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->g(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Lcom/ifengyu/intercom/greendao/bean/b;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "trackId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/greendao/bean/b;->c(Ljava/lang/String;)V

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/greendao/dao/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/greendao/dao/b;->c()Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;

    move-result-object v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v1}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->g(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)Lcom/ifengyu/intercom/greendao/bean/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/greendao/dao/TrackInfoDataDao;->insertOrReplace(Ljava/lang/Object;)J

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->n()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$3$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$3$1;-><init>(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$3;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->i(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->i(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V

    goto :goto_0
.end method

.method public a(Lokhttp3/Call;Ljava/lang/Exception;I)V
    .locals 1

    invoke-static {p2}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity$3;->b:Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;

    invoke-static {v0}, Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;->i(Lcom/ifengyu/intercom/ui/activity/TrackInfoDetailActivity;)V

    return-void
.end method
