.class public Lcom/ifengyu/intercom/ui/widget/dialog/aa;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "TrackShareDialog.java"


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

.field private b:Ljava/lang/String;

.field private c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private d:Lcom/tencent/tauth/Tencent;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const-string v1, "com.tencent.mm"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;

    invoke-direct {v1, v0}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    iput-object v1, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/lit16 v1, v1, 0x96

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    float-to-int v1, v1

    const/16 v3, 0x96

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/g;->a(Landroid/graphics/Bitmap;Z)[B

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    const-string v1, "trackShare"

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v1, 0x7f090230

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method private d()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const-string v1, "com.tencent.mm"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v1, 0x7f090162

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;

    invoke-direct {v1, v0}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v2}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    iput-object v1, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/lit16 v1, v1, 0x96

    int-to-float v1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    float-to-int v1, v1

    const/16 v3, 0x96

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/b/g;->a(Landroid/graphics/Bitmap;Z)[B

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    const-string v1, "trackShare"

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v1, 0x7f090230

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method private e()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const-string v1, "com.tencent.mobileqq"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v1, 0x7f090160

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "req_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "title"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v3, 0x7f090231

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "imageLocalUrl"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->d:Lcom/tencent/tauth/Tencent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v1, 0x7f090230

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method private f()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const-string v1, "com.tencent.mobileqq"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v1, 0x7f090160

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "req_type"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "title"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v3, 0x7f090231

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "imageLocalUrl"

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cflag"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->d:Lcom/tencent/tauth/Tencent;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v1, 0x7f090230

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method private g()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const-string v1, "com.sina.weibo"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v1, 0x7f090161

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const-string v1, "249179559"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/api/share/j;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/d;->a()Z

    new-instance v1, Lcom/sina/weibo/sdk/api/a;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/a;-><init>()V

    new-instance v2, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v2}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sina/weibo/sdk/api/ImageObject;->a(Landroid/graphics/Bitmap;)V

    iput-object v2, v1, Lcom/sina/weibo/sdk/api/a;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    new-instance v2, Lcom/sina/weibo/sdk/api/share/e;

    invoke-direct {v2}, Lcom/sina/weibo/sdk/api/share/e;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sina/weibo/sdk/api/share/e;->a:Ljava/lang/String;

    iput-object v1, v2, Lcom/sina/weibo/sdk/api/share/e;->b:Lcom/sina/weibo/sdk/api/a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    invoke-interface {v0, v1, v2}, Lcom/sina/weibo/sdk/api/share/d;->a(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/share/b;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v1, 0x7f090230

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 6

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mitalki"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/trackScreenShot/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected a(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->c()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->dismiss()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->d()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->dismiss()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->e()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->dismiss()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->f()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->dismiss()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->g()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->dismiss()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->dismiss()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v1, 0x7f0900d1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/v;->a(Ljava/lang/CharSequence;Z)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->dismiss()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.STREAM"

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v3, 0x7f09022f

    invoke-virtual {v2, v3}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f10020c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040087

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->setContentView(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a(Landroid/app/Activity;)V

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a([I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const-string v1, "wxef025e7faa0241ac"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    const-string v1, "wxef025e7faa0241ac"

    invoke-interface {v0, v1}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    const-string v0, "101388710"

    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->a()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/aa;->d:Lcom/tencent/tauth/Tencent;

    return-void

    :array_0
    .array-data 4
        0x7f10020c
        0x7f10020d
        0x7f10020e
        0x7f10020f
        0x7f100210
        0x7f100211
        0x7f100212
    .end array-data
.end method
