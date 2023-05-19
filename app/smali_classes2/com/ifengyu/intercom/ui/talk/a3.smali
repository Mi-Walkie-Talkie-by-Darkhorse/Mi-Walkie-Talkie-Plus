.class public Lcom/ifengyu/intercom/ui/talk/a3;
.super Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;
.source "GroupQrShowFragment.java"


# instance fields
.field private z:Lcom/shanlitech/et/model/Group;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;-><init>()V

    return-void
.end method

.method public static v3(Lcom/shanlitech/et/model/Group;)Lcom/ifengyu/intercom/ui/talk/a3;
    .locals 3

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/ui/talk/a3;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/talk/a3;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_group"

    .line 3
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 4
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected D2(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "key_group"

    .line 1
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/shanlitech/et/model/Group;

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/talk/a3;->z:Lcom/shanlitech/et/model/Group;

    :cond_0
    return-void
.end method

.method protected g3()Landroid/graphics/Bitmap;
    .locals 4

    .line 1
    new-instance v0, Lcom/ifengyu/intercom/bean/QRContentEntity;

    invoke-direct {v0}, Lcom/ifengyu/intercom/bean/QRContentEntity;-><init>()V

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/bean/QRContentEntity;->setT(J)V

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/bean/QRContentEntity;->setTyp(I)V

    .line 4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/a3;->z:Lcom/shanlitech/et/model/Group;

    invoke-virtual {v1}, Lcom/shanlitech/et/model/Group;->getGid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/bean/QRContentEntity;->setCid(J)V

    .line 5
    invoke-static {}, Lcom/ifengyu/talk/d;->r()Lcom/ifengyu/talk/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/talk/d;->a()Lcom/ifengyu/talk/f/a0;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ifengyu/talk/f/a0;->f()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/ifengyu/intercom/bean/QRContentEntity;->setUid(J)V

    .line 6
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/ifengyu/library/utils/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://m.ifengyu.com"

    .line 8
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "qr.html"

    .line 9
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "typ"

    const-string v3, "1"

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v2, "content"

    .line 11
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 12
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 14
    new-instance v1, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;

    invoke-direct {v1}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->setBitmapMargin(I)Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->setBitmapColor(I)Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->setBitmapBackgroundColor(I)Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption$Creator;->create()Lcom/huawei/hms/ml/scan/HmsBuildBitmapOption;

    move-result-object v1

    const/high16 v2, 0x436b0000    # 235.0f

    .line 15
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    .line 16
    :try_start_0
    sget v3, Lcom/huawei/hms/ml/scan/HmsScanBase;->QRCODE_SCAN_TYPE:I

    invoke-static {v0, v3, v2, v2, v1}, Lcom/huawei/hms/hmsscankit/ScanUtil;->buildBitmap(Ljava/lang/String;IIILcom/huawei/hms/ml/scan/HmsBuildBitmapOption;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Lcom/huawei/hms/hmsscankit/WriterException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected h3()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->h3()V

    .line 2
    new-instance v0, Lcom/ifengyu/library/widget/groupAdatar/a;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/groupAdatar/a;-><init>(Ljava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->ngivGroupAvatar:Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->setAdapter(Lcom/ifengyu/library/widget/groupAdatar/a;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->ngivGroupAvatar:Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/a3;->z:Lcom/shanlitech/et/model/Group;

    invoke-static {v1}, Lcom/ifengyu/talk/d;->c(Lcom/shanlitech/et/model/Group;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/library/widget/groupAdatar/NineGridImageView;->setImagesData([Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->tvName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/talk/a3;->z:Lcom/shanlitech/et/model/Group;

    invoke-static {v1}, Lcom/ifengyu/talk/d;->e(Lcom/shanlitech/et/model/Group;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/fragment/BaseQrShowFragment;->tvBottomPrompt:Landroid/widget/TextView;

    const v1, 0x7f1101e7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
