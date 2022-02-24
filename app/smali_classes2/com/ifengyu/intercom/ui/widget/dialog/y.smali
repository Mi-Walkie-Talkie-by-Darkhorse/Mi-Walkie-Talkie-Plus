.class public Lcom/ifengyu/intercom/ui/widget/dialog/y;
.super Lcom/ifengyu/intercom/ui/widget/dialog/d;
.source "TrackShareDialog.java"


# instance fields
.field private a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

.field private b:Ljava/lang/String;

.field private c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

.field private d:Lcom/tencent/tauth/Tencent;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/content/Context;)V

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 2
    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->e:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    .line 4
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method static synthetic b(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110053

    .line 3
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/dialog/a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/a;

    const v2, 0x7f110093

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/b;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/y;)V

    const v2, 0x7f110144

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const-string v1, "com.tencent.mobileqq"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v2, 0x7f110256

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "req_type"

    const/4 v3, 0x5

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "title"

    .line 5
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v4, 0x7f110355

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "imageLocalUrl"

    .line 6
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->d:Lcom/tencent/tauth/Tencent;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v2, 0x7f110354

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method private e()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const-string v1, "com.tencent.mobileqq"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v2, 0x7f110256

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "req_type"

    const/4 v3, 0x5

    .line 4
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "title"

    .line 5
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v4, 0x7f110355

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "imageLocalUrl"

    .line 6
    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "cflag"

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 8
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->d:Lcom/tencent/tauth/Tencent;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v2, 0x7f110354

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const-string v1, "com.tencent.mm"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v2, 0x7f110258

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;

    invoke-direct {v2, v0}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    new-instance v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v3}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 6
    iput-object v2, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const/16 v4, 0x96

    mul-int/lit16 v2, v2, 0x96

    int-to-float v2, v2

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v2, v2, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    float-to-int v2, v2

    const/4 v5, 0x1

    .line 8
    invoke-static {v0, v2, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 10
    invoke-static {v2, v5}, Lcom/ifengyu/intercom/i/l;->a(Landroid/graphics/Bitmap;Z)[B

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 11
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    const-string v2, "trackShare"

    .line 12
    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->transaction:Ljava/lang/String;

    .line 13
    iput-object v3, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 14
    iput v1, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 15
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v2, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v2, 0x7f110354

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method private g()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const-string v1, "com.tencent.mm"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v2, 0x7f110258

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4
    new-instance v2, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;

    invoke-direct {v2, v0}, Lcom/tencent/mm/opensdk/modelmsg/WXImageObject;-><init>(Landroid/graphics/Bitmap;)V

    .line 5
    new-instance v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    invoke-direct {v3}, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;-><init>()V

    .line 6
    iput-object v2, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->mediaObject:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const/16 v4, 0x96

    mul-int/lit16 v2, v2, 0x96

    int-to-float v2, v2

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float v2, v2, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    float-to-int v2, v2

    const/4 v5, 0x1

    .line 8
    invoke-static {v0, v2, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 10
    invoke-static {v2, v5}, Lcom/ifengyu/intercom/i/l;->a(Landroid/graphics/Bitmap;Z)[B

    move-result-object v0

    iput-object v0, v3, Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;->thumbData:[B

    .line 11
    new-instance v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v0}, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;-><init>()V

    const-string v2, "trackShare"

    .line 12
    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/mm/opensdk/modelbase/BaseReq;->transaction:Ljava/lang/String;

    .line 13
    iput-object v3, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage;

    .line 14
    iput v5, v0, Lcom/tencent/mm/opensdk/modelmsg/SendMessageToWX$Req;->scene:I

    .line 15
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    invoke-interface {v2, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/opensdk/modelbase/BaseReq;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v2, 0x7f110354

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method

.method private h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const-string v1, "com.sina.weibo"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v2, 0x7f110257

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const-string v2, "249179559"

    invoke-static {v0, v2}, Lcom/sina/weibo/sdk/api/c/j;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/c/d;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/c/d;->a()Z

    .line 5
    new-instance v2, Lcom/sina/weibo/sdk/api/a;

    invoke-direct {v2}, Lcom/sina/weibo/sdk/api/a;-><init>()V

    .line 6
    new-instance v3, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v3}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    .line 7
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 8
    invoke-virtual {v3, v4}, Lcom/sina/weibo/sdk/api/ImageObject;->a(Landroid/graphics/Bitmap;)V

    .line 9
    iput-object v3, v2, Lcom/sina/weibo/sdk/api/a;->a:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    .line 10
    new-instance v3, Lcom/sina/weibo/sdk/api/c/e;

    invoke-direct {v3}, Lcom/sina/weibo/sdk/api/c/e;-><init>()V

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sina/weibo/sdk/api/c/a;->a:Ljava/lang/String;

    .line 12
    iput-object v2, v3, Lcom/sina/weibo/sdk/api/c/e;->b:Lcom/sina/weibo/sdk/api/a;

    .line 13
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    invoke-interface {v0, v2, v3}, Lcom/sina/weibo/sdk/api/c/d;->a(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/c/b;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v2, 0x7f110354

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1
    :pswitch_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/y;->f()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 3
    :pswitch_2
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/y;->h()V

    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 5
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 6
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lpub/devrel/easypermissions/EasyPermissions;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/y;->b()V

    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/y;->c()V

    goto :goto_0

    .line 9
    :pswitch_4
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/y;->e()V

    .line 10
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 11
    :pswitch_5
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/y;->d()V

    .line 12
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 13
    :pswitch_6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/y;->g()V

    .line 14
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 15
    :pswitch_7
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 16
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v0, "image/jpeg"

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v1, 0x7f110353

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0903a3
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public synthetic a(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 20
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 21
    invoke-static {}, Lcom/ifengyu/intercom/i/i;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 22
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const-string p2, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x14

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 6

    .line 2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Mitalk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "-track.jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->b:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 9
    :goto_0
    invoke-virtual {v1, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_1

    .line 10
    invoke-virtual {v3, v4, v0, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 12
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 13
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 14
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 17
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 18
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const v2, 0x7f1100ff

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/c0;->a(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c008d

    .line 2
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->setContentView(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Landroid/content/Context;)V

    const/4 p1, 0x7

    new-array p1, p1, [I

    .line 4
    fill-array-data p1, :array_0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a([I)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->a:Lcom/ifengyu/intercom/ui/baseui/BaseActivity;

    const-string v0, "wxef025e7faa0241ac"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/tencent/mm/opensdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->c:Lcom/tencent/mm/opensdk/openapi/IWXAPI;

    .line 6
    invoke-interface {p1, v0}, Lcom/tencent/mm/opensdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 7
    invoke-static {}, Lcom/ifengyu/intercom/MiTalkiApp;->b()Lcom/ifengyu/intercom/MiTalkiApp;

    move-result-object p1

    const-string v0, "101388710"

    invoke-static {v0, p1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/y;->d:Lcom/tencent/tauth/Tencent;

    return-void

    :array_0
    .array-data 4
        0x7f0903aa
        0x7f0903a5
        0x7f0903a6
        0x7f0903a9
        0x7f0903a7
        0x7f0903a8
        0x7f0903a3
    .end array-data
.end method
