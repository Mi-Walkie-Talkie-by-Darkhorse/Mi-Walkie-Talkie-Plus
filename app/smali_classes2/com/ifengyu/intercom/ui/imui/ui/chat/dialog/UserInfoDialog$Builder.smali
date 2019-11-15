.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;
.super Ljava/lang/Object;
.source "UserInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mCancel:Z

.field private mCancelable:Z

.field private mContext:Landroid/content/Context;

.field private mImageUrl:Ljava/lang/String;

.field protected mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPositiveText:Ljava/lang/String;

.field private mSubTitle:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mCancelable:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mCancel:Z

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method private loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    const v1, 0x7f020172

    new-instance v0, Lcom/bumptech/glide/request/d;

    invoke-direct {v0}, Lcom/bumptech/glide/request/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/d;->a(I)Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/d;->b(I)Lcom/bumptech/glide/request/d;

    move-result-object v0

    invoke-static {p1}, Lcom/bumptech/glide/c;->a(Landroid/view/View;)Lcom/bumptech/glide/g;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/bumptech/glide/g;->a(Ljava/lang/Object;)Lcom/bumptech/glide/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/f;->a(Lcom/bumptech/glide/request/d;)Lcom/bumptech/glide/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f;->a(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/a/h;

    return-void
.end method


# virtual methods
.method public create()Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;
    .locals 7

    new-instance v5, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f040088

    invoke-virtual {v5, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;->setContentView(I)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mCancelable:Z

    invoke-virtual {v5, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;->setCancelable(Z)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mCancel:Z

    invoke-virtual {v5, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;->setCanceledOnTouchOutside(Z)V

    const v0, 0x7f1001b7

    invoke-virtual {v5, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f100213

    invoke-virtual {v5, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;

    const v2, 0x7f1001b3

    invoke-virtual {v5, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f1001b6

    invoke-virtual {v5, v3}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f100216

    invoke-virtual {v5, v4}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/ifengyu/library/widget/view/QMUIAlphaButton;

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mImageUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mImageUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v6}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mSubTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mSubTitle:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mPositiveText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mPositiveText:Ljava/lang/String;

    invoke-virtual {v4, v0}, Lcom/ifengyu/library/widget/view/QMUIAlphaButton;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder$1;

    invoke-direct {v0, p0, v5}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;)V

    invoke-virtual {v4, v0}, Lcom/ifengyu/library/widget/view/QMUIAlphaButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder$2;

    invoke-direct {v0, p0, v5}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder$2;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;)V

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/widget/view/QMUIAlphaImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v5

    :cond_3
    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Lcom/ifengyu/library/widget/view/QMUIAlphaButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSubTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mSubTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setCancelable(Z)Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mCancelable:Z

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mCancel:Z

    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mImageUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mPositiveText:Ljava/lang/String;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setSubTitle(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mSubTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public show()Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog$Builder;->create()Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/dialog/UserInfoDialog;->show()V

    return-object v0
.end method
