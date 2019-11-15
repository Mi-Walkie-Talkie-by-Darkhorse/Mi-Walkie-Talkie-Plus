.class public Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;
.super Ljava/lang/Object;
.source "TipDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/library/widget/dialog/TipDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/library/widget/dialog/TipDialog$Builder$IconType;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/CharSequence;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->a:I

    iput-object p1, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;
    .locals 0

    iput p1, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->a:I

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->c:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Z)Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->d:Z

    return-object p0
.end method

.method public a()Lcom/ifengyu/library/widget/dialog/TipDialog;
    .locals 9

    const/4 v5, -0x1

    const/high16 v8, 0x41600000    # 14.0f

    const/4 v7, 0x2

    const/4 v6, -0x2

    new-instance v1, Lcom/ifengyu/library/widget/dialog/TipDialog;

    iget-object v0, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->b:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/ifengyu/library/widget/dialog/TipDialog;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/ifengyu/library/R$layout;->qmui_tip_dialog_layout:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/widget/dialog/TipDialog;->setContentView(I)V

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->d:Z

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/widget/dialog/TipDialog;->setCancelable(Z)V

    sget v0, Lcom/ifengyu/library/R$id;->contentWrap:I

    invoke-virtual {v1, v0}, Lcom/ifengyu/library/widget/dialog/TipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget v2, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->a:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->c:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->c:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iget v4, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->a:I

    if-eqz v4, :cond_0

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v4}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_0
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->b:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v4, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->b:Landroid/content/Context;

    sget v5, Lcom/ifengyu/library/R$color;->qmui_config_color_white:I

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v7, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v4, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->c:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;

    iget-object v5, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->b:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v7, v8}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->setTextSize(IF)V

    iget-object v5, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->b:Landroid/content/Context;

    sget v6, Lcom/ifengyu/library/R$color;->qmui_config_color_white:I

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/ifengyu/library/widget/waitingdots/DotsTextView;->setTextColor(I)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-object v1

    :pswitch_0
    new-instance v2, Lcom/ifengyu/library/widget/view/QMUILoadingView;

    iget-object v3, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/ifengyu/library/widget/view/QMUILoadingView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->setColor(I)V

    const/high16 v3, 0x42000000    # 32.0f

    invoke-static {v3}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->setSize(I)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v3, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->a:I

    if-ne v3, v7, :cond_2

    iget-object v3, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ifengyu/library/R$drawable;->qmui_icon_notify_done:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    iget v3, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->a:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ifengyu/library/R$drawable;->qmui_icon_notify_error:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/ifengyu/library/widget/dialog/TipDialog$Builder;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/ifengyu/library/R$drawable;->qmui_icon_notify_info:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
