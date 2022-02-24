.class public final Lcom/sina/weibo/sdk/api/a;
.super Ljava/lang/Object;
.source "WeiboMessage.java"


# instance fields
.field public a:Lcom/sina/weibo/sdk/api/BaseMediaObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/a;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz v0, :cond_0

    const-string v1, "_weibo_message_media"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/a;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_weibo_message_media_extra"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public a()Z
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/a;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    const/4 v1, 0x0

    const-string v2, "Weibo.WeiboMessage"

    if-nez v0, :cond_0

    const-string v0, "checkArgs fail, mediaObject is null"

    .line 5
    invoke-static {v2, v0}, Lcom/sina/weibo/sdk/utils/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "checkArgs fail, mediaObject is invalid"

    .line 7
    invoke-static {v2, v0}, Lcom/sina/weibo/sdk/utils/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
