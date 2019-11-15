.class public Lcom/sina/weibo/sdk/component/view/TitleBar;
.super Landroid/widget/RelativeLayout;
.source "TitleBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/component/view/TitleBar$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Lcom/sina/weibo/sdk/component/view/TitleBar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/view/TitleBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/view/TitleBar;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/sina/weibo/sdk/component/view/TitleBar;->a()V

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/component/view/TitleBar;)Lcom/sina/weibo/sdk/component/view/TitleBar$a;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->c:Lcom/sina/weibo/sdk/component/view/TitleBar$a;

    return-object v0
.end method

.method private a()V
    .locals 7

    const/16 v6, 0xa

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x2

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->a:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->a:Landroid/widget/TextView;

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->a:Landroid/widget/TextView;

    const/16 v1, -0x7e00

    const v2, 0x66ff8200

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/f;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/sina/weibo/sdk/component/view/TitleBar$1;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/component/view/TitleBar$1;-><init>(Lcom/sina/weibo/sdk/component/view/TitleBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/component/view/TitleBar;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->b:Landroid/widget/TextView;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->b:Landroid/widget/TextView;

    const v1, -0xadadae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->b:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->b:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->b:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-static {v1, v2}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/component/view/TitleBar;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-static {v2, v3}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/component/view/TitleBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/sina/weibo/sdk/component/view/TitleBar;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "weibosdk_navigationbar_background.9.png"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/utils/f;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/component/view/TitleBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public setLeftBtnBg(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLeftBtnText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleBarClickListener(Lcom/sina/weibo/sdk/component/view/TitleBar$a;)V
    .locals 0

    iput-object p1, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->c:Lcom/sina/weibo/sdk/component/view/TitleBar$a;

    return-void
.end method

.method public setTitleBarText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/component/view/TitleBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
