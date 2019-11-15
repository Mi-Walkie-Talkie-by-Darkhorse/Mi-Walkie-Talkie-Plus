.class public final Lcom/sina/weibo/sdk/api/b;
.super Ljava/lang/Object;
.source "WeiboMultiMessage.java"


# static fields
.field public static e:I

.field public static f:I


# instance fields
.field public a:Lcom/sina/weibo/sdk/api/TextObject;

.field public b:Lcom/sina/weibo/sdk/api/ImageObject;

.field public c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/sina/weibo/sdk/api/b;->e:I

    const/4 v0, 0x2

    sput v0, Lcom/sina/weibo/sdk/api/b;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/b;->a:Lcom/sina/weibo/sdk/api/TextObject;

    if-eqz v0, :cond_0

    const-string v0, "_weibo_message_text"

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/b;->a:Lcom/sina/weibo/sdk/api/TextObject;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "_weibo_message_text_extra"

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/b;->a:Lcom/sina/weibo/sdk/api/TextObject;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/api/TextObject;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/b;->b:Lcom/sina/weibo/sdk/api/ImageObject;

    if-eqz v0, :cond_1

    const-string v0, "_weibo_message_image"

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/b;->b:Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "_weibo_message_image_extra"

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/b;->b:Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/api/ImageObject;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/api/b;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz v0, :cond_2

    const-string v0, "_weibo_message_media"

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/b;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "_weibo_message_media_extra"

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/b;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/api/BaseMediaObject;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p1
.end method

.method public a()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/b;->a:Lcom/sina/weibo/sdk/api/TextObject;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/b;->a:Lcom/sina/weibo/sdk/api/TextObject;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/api/TextObject;->a()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "WeiboMultiMessage"

    const-string v2, "checkArgs fail, textObject is invalid"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/b;->b:Lcom/sina/weibo/sdk/api/ImageObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/b;->b:Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/api/ImageObject;->a()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "WeiboMultiMessage"

    const-string v2, "checkArgs fail, imageObject is invalid"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/b;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/b;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/api/BaseMediaObject;->a()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "WeiboMultiMessage"

    const-string v2, "checkArgs fail, mediaObject is invalid"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sina/weibo/sdk/api/b;->a:Lcom/sina/weibo/sdk/api/TextObject;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/b;->b:Lcom/sina/weibo/sdk/api/ImageObject;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sina/weibo/sdk/api/b;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-nez v1, :cond_3

    const-string v1, "WeiboMultiMessage"

    const-string v2, "checkArgs fail, textObject and imageObject and mediaObject is null"

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/sina/weibo/sdk/api/b;->d:I

    return v0
.end method

.method public b(Landroid/os/Bundle;)Lcom/sina/weibo/sdk/api/b;
    .locals 2

    const-string v0, "_weibo_message_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/api/TextObject;

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/b;->a:Lcom/sina/weibo/sdk/api/TextObject;

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/b;->a:Lcom/sina/weibo/sdk/api/TextObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/b;->a:Lcom/sina/weibo/sdk/api/TextObject;

    const-string v1, "_weibo_message_text_extra"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/api/TextObject;->a(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/BaseMediaObject;

    :cond_0
    const-string v0, "_weibo_message_image"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/api/ImageObject;

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/b;->b:Lcom/sina/weibo/sdk/api/ImageObject;

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/b;->b:Lcom/sina/weibo/sdk/api/ImageObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/b;->b:Lcom/sina/weibo/sdk/api/ImageObject;

    const-string v1, "_weibo_message_image_extra"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/api/ImageObject;->a(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/BaseMediaObject;

    :cond_1
    const-string v0, "_weibo_message_media"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/api/BaseMediaObject;

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/b;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/b;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/b;->c:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    const-string v1, "_weibo_message_media_extra"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/api/BaseMediaObject;->a(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/BaseMediaObject;

    :cond_2
    return-object p0
.end method
