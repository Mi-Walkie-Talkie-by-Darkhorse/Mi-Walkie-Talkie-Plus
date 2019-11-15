.class public Lcom/ifengyu/library/widget/view/ItemView;
.super Landroid/widget/RelativeLayout;
.source "ItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/library/widget/view/ItemView$ItemTheme;,
        Lcom/ifengyu/library/widget/view/ItemView$ItemAccessoryType;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/ifengyu/library/widget/view/SwitchButton;

.field private f:Landroid/view/LayoutInflater;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/library/widget/view/ItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/library/widget/view/ItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->j:I

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/library/widget/view/ItemView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(I)Landroid/widget/ImageView;
    .locals 2

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/ItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/ItemView;->getAccessoryLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    sget v1, Lcom/ifengyu/library/R$drawable;->icon_more_black:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const/4 v2, 0x1

    const/4 v8, 0x0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->f:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->f:Landroid/view/LayoutInflater;

    sget v1, Lcom/ifengyu/library/R$layout;->item_view_layout:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v0, Lcom/ifengyu/library/R$styleable;->ItemView:[I

    invoke-virtual {p1, p2, v0, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/ifengyu/library/R$styleable;->ItemView_accessory_type:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v2, Lcom/ifengyu/library/R$styleable;->ItemView_icon:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lcom/ifengyu/library/R$styleable;->ItemView_titleTextColor:I

    sget v4, Lcom/ifengyu/library/R$color;->black:I

    invoke-static {p1, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    sget v4, Lcom/ifengyu/library/R$styleable;->ItemView_detailTextColor:I

    sget v5, Lcom/ifengyu/library/R$color;->black50:I

    invoke-static {p1, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    sget v5, Lcom/ifengyu/library/R$styleable;->ItemView_valueTextColor:I

    sget v6, Lcom/ifengyu/library/R$color;->black50:I

    invoke-static {p1, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/ifengyu/library/widget/view/ItemView;->h:I

    sget v5, Lcom/ifengyu/library/R$styleable;->ItemView_titleText:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/ifengyu/library/R$styleable;->ItemView_detailText:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/ifengyu/library/R$styleable;->ItemView_valueText:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/ifengyu/library/widget/view/ItemView;->g:Ljava/lang/String;

    sget v7, Lcom/ifengyu/library/R$styleable;->ItemView_item_theme:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget v0, Lcom/ifengyu/library/R$id;->item_imageView:I

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/ifengyu/library/widget/view/ItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/ifengyu/library/R$id;->item_textView:I

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v5}, Lcom/ifengyu/library/widget/view/ItemView;->setTitleText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/ifengyu/library/R$id;->item_detailTextView:I

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0, v6}, Lcom/ifengyu/library/widget/view/ItemView;->setDetailText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1, v7}, Lcom/ifengyu/library/widget/view/ItemView;->setAccessoryType(II)V

    return-void
.end method

.method private a(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAccessoryLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v1, -0x2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public getAccessoryType()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->i:I

    return v0
.end method

.method public getDetailText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->c:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Lcom/ifengyu/library/widget/view/SwitchButton;

    return-object v0
.end method

.method public getTitleText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getValueText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public setAccessoryType(II)V
    .locals 8

    const/16 v7, 0xf

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    const/4 v3, -0x1

    iput p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->i:I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/ifengyu/library/widget/view/ItemView;->a(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/library/util/l;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/ifengyu/library/widget/view/ItemView;->a(I)Landroid/widget/ImageView;

    move-result-object v0

    invoke-static {}, Lcom/ifengyu/library/util/l;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setId(I)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0xb

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/ItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    const/high16 v2, 0x41500000    # 13.0f

    invoke-static {v2}, Lcom/ifengyu/library/util/l;->b(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    iget v2, p0, Lcom/ifengyu/library/widget/view/ItemView;->h:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    sget v2, Lcom/ifengyu/library/R$id;->item_textContainer:I

    invoke-virtual {v1, v6, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getId()I

    move-result v0

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/library/widget/view/ItemView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Lcom/ifengyu/library/widget/view/SwitchButton;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->f:Landroid/view/LayoutInflater;

    sget v1, Lcom/ifengyu/library/R$layout;->item_view_switch_button:I

    invoke-virtual {v0, v1, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/ifengyu/library/R$id;->item_switch:I

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/ItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/library/widget/view/SwitchButton;

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Lcom/ifengyu/library/widget/view/SwitchButton;

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Lcom/ifengyu/library/widget/view/SwitchButton;

    invoke-virtual {v0, v5}, Lcom/ifengyu/library/widget/view/SwitchButton;->setClickable(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public setDetailText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ifengyu/library/util/i;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/view/ItemView;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/view/ItemView;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/ifengyu/library/util/i;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->b:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/view/ItemView;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->b:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/view/ItemView;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setValueText(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/ifengyu/library/util/i;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/view/ItemView;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/view/ItemView;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
