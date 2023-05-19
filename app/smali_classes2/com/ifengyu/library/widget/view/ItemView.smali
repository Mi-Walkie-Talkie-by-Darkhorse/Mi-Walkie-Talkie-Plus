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

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/ifengyu/library/widget/view/SwitchButton;

.field private g:Landroid/view/LayoutInflater;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I

.field private k:I

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/widget/ImageView;

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/library/widget/view/ItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/library/widget/view/ItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/library/widget/view/ItemView;->a(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->g:Landroid/view/LayoutInflater;

    .line 2
    sget v1, Lcom/ifengyu/library/R$layout;->item_view_layout:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 3
    sget-object v0, Lcom/ifengyu/library/R$styleable;->ItemView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 4
    sget p3, Lcom/ifengyu/library/R$styleable;->ItemView_accessory_type:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    .line 5
    sget v0, Lcom/ifengyu/library/R$styleable;->ItemView_icon:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6
    sget v2, Lcom/ifengyu/library/R$styleable;->ItemView_titleTextColor:I

    sget v3, Lcom/ifengyu/library/R$color;->black:I

    invoke-static {p1, v3}, Landroidx/core/content/b;->b(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/ifengyu/library/widget/view/ItemView;->j:I

    .line 7
    sget v2, Lcom/ifengyu/library/R$styleable;->ItemView_detailTextColor:I

    sget v3, Lcom/ifengyu/library/R$color;->black50:I

    invoke-static {p1, v3}, Landroidx/core/content/b;->b(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {p2, v2, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/ifengyu/library/widget/view/ItemView;->k:I

    .line 8
    sget v2, Lcom/ifengyu/library/R$styleable;->ItemView_valueTextColor:I

    invoke-static {p1, v3}, Landroidx/core/content/b;->b(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, v2, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->i:I

    .line 9
    sget p1, Lcom/ifengyu/library/R$styleable;->ItemView_titleText:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 10
    sget v2, Lcom/ifengyu/library/R$styleable;->ItemView_detailText:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 11
    sget v3, Lcom/ifengyu/library/R$styleable;->ItemView_valueText:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/library/widget/view/ItemView;->h:Ljava/lang/String;

    .line 12
    sget v3, Lcom/ifengyu/library/R$styleable;->ItemView_item_theme:I

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 13
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    sget p2, Lcom/ifengyu/library/R$id;->item_imageView:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/ifengyu/library/widget/view/ItemView;->a:Landroid/widget/ImageView;

    .line 15
    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/ItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    sget p2, Lcom/ifengyu/library/R$id;->item_textContainer:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/ifengyu/library/widget/view/ItemView;->b:Landroid/widget/LinearLayout;

    .line 17
    sget p2, Lcom/ifengyu/library/R$id;->item_textView:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/ifengyu/library/widget/view/ItemView;->c:Landroid/widget/TextView;

    .line 18
    iget v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->j:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setTitleText(Ljava/lang/CharSequence;)V

    .line 20
    sget p1, Lcom/ifengyu/library/R$id;->item_detailTextView:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    .line 21
    iget p2, p0, Lcom/ifengyu/library/widget/view/ItemView;->k:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 22
    invoke-virtual {p0, v2}, Lcom/ifengyu/library/widget/view/ItemView;->setDetailText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p0, p3, v1}, Lcom/ifengyu/library/widget/view/ItemView;->setAccessoryType(II)V

    return-void
.end method

.method private b(Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getAccessoryLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->m:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->m:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public getAccessoryImageView()Landroid/widget/ImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->l:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->l:Landroid/widget/ImageView;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/ItemView;->getAccessoryLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->l:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->l:Landroid/widget/ImageView;

    sget v1, Lcom/ifengyu/library/R$drawable;->arrow_icon_right_gray:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getAccessoryType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->n:I

    return v0
.end method

.method public getDetailText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDotImageView()Landroid/widget/ImageView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->m:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->m:Landroid/widget/ImageView;

    .line 3
    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/ItemView;->getAccessoryLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->m:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->m:Landroid/widget/ImageView;

    sget v1, Lcom/ifengyu/library/R$drawable;->dot_red:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getSwitch()Lcom/ifengyu/library/widget/view/SwitchButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->f:Lcom/ifengyu/library/widget/view/SwitchButton;

    return-object v0
.end method

.method public getTitleText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getValueText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public setAccessoryType(II)V
    .locals 13

    .line 1
    iput p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->n:I

    const/16 p2, 0x10

    const/high16 v0, 0x41400000    # 12.0f

    const/16 v1, 0xb

    const/4 v2, 0x1

    const/16 v3, 0xf

    const/4 v4, -0x1

    const/4 v5, -0x2

    if-eq p1, v2, :cond_5

    const/4 v6, 0x2

    const/high16 v7, 0x41600000    # 14.0f

    const/4 v8, 0x4

    const/4 v9, 0x5

    const/4 v10, 0x3

    const/4 v11, 0x0

    if-eq p1, v6, :cond_2

    if-eq p1, v10, :cond_2

    if-eq p1, v8, :cond_1

    if-eq p1, v9, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    .line 3
    invoke-static {v7}, Lcom/ifengyu/library/utils/s;->x(F)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, v11, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    iget p2, p0, Lcom/ifengyu/library/widget/view/ItemView;->i:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 7
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 8
    invoke-virtual {p1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 9
    invoke-virtual {p1, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 10
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result p2

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 11
    iget-object p2, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 12
    iget-object p2, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    invoke-virtual {p0, p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->f:Lcom/ifengyu/library/widget/view/SwitchButton;

    if-nez p1, :cond_6

    .line 15
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->g:Landroid/view/LayoutInflater;

    sget p2, Lcom/ifengyu/library/R$layout;->item_view_switch_button:I

    invoke-virtual {p1, p2, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    sget p1, Lcom/ifengyu/library/R$id;->item_switch:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/ifengyu/library/widget/view/SwitchButton;

    iput-object p2, p0, Lcom/ifengyu/library/widget/view/ItemView;->f:Lcom/ifengyu/library/widget/view/SwitchButton;

    .line 17
    invoke-virtual {p2, v11}, Landroid/view/View;->setClickable(Z)V

    .line 18
    sget p2, Lcom/ifengyu/library/R$id;->item_textContainer:I

    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 19
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 20
    invoke-virtual {p2, v11, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_2

    .line 21
    :cond_2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/ItemView;->getAccessoryImageView()Landroid/widget/ImageView;

    move-result-object v6

    .line 22
    invoke-static {}, Lcom/ifengyu/library/utils/s;->c()I

    move-result v12

    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setId(I)V

    .line 23
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v12, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 24
    invoke-virtual {v12, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 25
    invoke-virtual {v12, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 26
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v0

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-ne p1, v10, :cond_3

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    .line 27
    :goto_0
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    invoke-virtual {p0, v6, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 29
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    .line 30
    invoke-static {v7}, Lcom/ifengyu/library/utils/s;->x(F)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v0, v11, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 31
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    iget v7, p0, Lcom/ifengyu/library/widget/view/ItemView;->i:I

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 33
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 34
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v2, 0x11

    .line 36
    iget-object v3, p0, Lcom/ifengyu/library/widget/view/ItemView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    if-ne p1, v10, :cond_4

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    .line 38
    :cond_4
    invoke-virtual {v6}, Landroid/widget/ImageView;->getId()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 39
    :goto_1
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 40
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->h:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->setValueText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 42
    :cond_5
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/ItemView;->getAccessoryImageView()Landroid/widget/ImageView;

    move-result-object p1

    .line 43
    invoke-static {}, Lcom/ifengyu/library/utils/s;->c()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setId(I)V

    .line 44
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45
    invoke-virtual {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 46
    invoke-virtual {v2, v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 47
    invoke-static {v0}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v0

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 48
    invoke-virtual {p0, p1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/ItemView;->getDotImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->m:Landroid/widget/ImageView;

    .line 50
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 51
    invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52
    invoke-virtual {p1}, Landroid/widget/ImageView;->getId()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->m:Landroid/widget/ImageView;

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->m:Landroid/widget/ImageView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setActive(Z)V
    .locals 2

    if-eqz p1, :cond_3

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/ifengyu/library/widget/view/ItemView;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 4
    iget v1, p0, Lcom/ifengyu/library/widget/view/ItemView;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 6
    iget v1, p0, Lcom/ifengyu/library/widget/view/ItemView;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 8
    sget v1, Lcom/ifengyu/library/R$drawable;->arrow_icon_right_gray:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 10
    sget v1, Lcom/ifengyu/library/R$color;->black20:I

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 12
    sget v1, Lcom/ifengyu/library/R$color;->black20:I

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    :cond_5
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 14
    sget v1, Lcom/ifengyu/library/R$color;->black20:I

    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->d(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 15
    :cond_6
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->l:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 16
    sget v1, Lcom/ifengyu/library/R$drawable;->arrow_icon_right_gray:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 17
    :cond_7
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    return-void
.end method

.method public setDetailText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/ifengyu/library/utils/r;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->b(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->b(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->a:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setTitleText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {p1}, Lcom/ifengyu/library/utils/r;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->c:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->b(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->c:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->c:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->b(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->c:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setValueText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p1}, Lcom/ifengyu/library/utils/r;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->b(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/view/ItemView;->b(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/ItemView;->e:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
