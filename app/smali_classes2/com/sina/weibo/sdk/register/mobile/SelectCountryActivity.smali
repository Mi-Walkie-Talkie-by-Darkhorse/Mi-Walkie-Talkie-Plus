.class public Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;
.super Landroid/app/Activity;
.source "SelectCountryActivity.java"

# interfaces
.implements Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$a;,
        Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$b;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field private b:Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;

.field private c:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/register/mobile/Country;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/register/mobile/Country;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/sina/weibo/sdk/register/mobile/CountryList;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$b;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/widget/ListView;

.field private h:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$a;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->f:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->f:Ljava/util/List;

    return-object v0
.end method

.method private a([Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/register/mobile/Country;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$b;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_1

    :cond_0
    return-object v3

    :cond_1
    aget-object v4, p1, v0

    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v1

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    new-instance v5, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$b;

    const/4 v6, -0x1

    invoke-direct {v5, p0, v0, v6}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$b;-><init>(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;II)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    new-instance v5, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$b;

    invoke-direct {v5, p0, v0, v2}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$b;-><init>(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;II)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private a()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->i:Landroid/widget/RelativeLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/sina/weibo/sdk/component/view/TitleBar;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/component/view/TitleBar;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Lcom/sina/weibo/sdk/component/view/TitleBar;->setId(I)V

    const-string v1, "weibosdk_navigationbar_back.png"

    const-string v2, "weibosdk_navigationbar_back_highlighted.png"

    invoke-static {p0, v1, v2}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/TitleBar;->setLeftBtnBg(Landroid/graphics/drawable/Drawable;)V

    const-string v1, "Region"

    const-string v2, "\u9009\u62e9\u56fd\u5bb6"

    const-string v3, "\u9078\u64c7\u570b\u5bb6"

    invoke-static {p0, v1, v2, v3}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/TitleBar;->setTitleBarText(Ljava/lang/String;)V

    new-instance v1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$1;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$1;-><init>(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/component/view/TitleBar;->setTitleBarClickListener(Lcom/sina/weibo/sdk/component/view/TitleBar$a;)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->j:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/component/view/TitleBar;->getId()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->g:Landroid/widget/ListView;

    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->g:Landroid/widget/ListView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->g:Landroid/widget/ListView;

    invoke-static {p0, v6}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setScrollbarFadingEnabled(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$2;

    invoke-direct {v1, p0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$2;-><init>(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->j:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$a;-><init>(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$a;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->h:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$a;

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->h:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;

    invoke-direct {v0, p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->b:Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->b:Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;

    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->setIndexChangeListener(Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar$a;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->b:Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;

    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->j:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->b:Lcom/sina/weibo/sdk/register/mobile/LetterIndexBar;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-static {p0}, Lcom/sina/weibo/sdk/register/mobile/a;->a(Landroid/content/Context;)Lcom/sina/weibo/sdk/register/mobile/a;

    invoke-static {}, Lcom/sina/weibo/sdk/utils/f;->a()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "countryCode.txt"

    invoke-static {p0, v0}, Lcom/sina/weibo/sdk/utils/f;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->a:Ljava/lang/String;

    :goto_0
    new-instance v0, Lcom/sina/weibo/sdk/register/mobile/CountryList;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/register/mobile/CountryList;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->e:Lcom/sina/weibo/sdk/register/mobile/CountryList;

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->e:Lcom/sina/weibo/sdk/register/mobile/CountryList;

    iget-object v0, v0, Lcom/sina/weibo/sdk/register/mobile/CountryList;->a:Ljava/util/List;

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->d:Ljava/util/List;

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->d:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->a(Ljava/util/List;)[Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->c:[Ljava/util/List;

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->c:[Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->a([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->f:Ljava/util/List;

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->h:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$a;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$a;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_0
    sget-object v1, Ljava/util/Locale;->TRADITIONAL_CHINESE:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "countryCodeTw.txt"

    invoke-static {p0, v0}, Lcom/sina/weibo/sdk/utils/f;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "countryCodeEn.txt"

    invoke-static {p0, v0}, Lcom/sina/weibo/sdk/utils/f;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Ljava/util/List;)[Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/register/mobile/Country;",
            ">;)[",
            "Ljava/util/List",
            "<",
            "Lcom/sina/weibo/sdk/register/mobile/Country;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v0, 0x1b

    new-array v3, v0, [Ljava/util/ArrayList;

    new-instance v0, Lcom/sina/weibo/sdk/register/mobile/Country;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/register/mobile/Country;-><init>()V

    const-string v1, "0086"

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/register/mobile/Country;->a(Ljava/lang/String;)V

    const-string v1, "China"

    const-string v4, "\u4e2d\u56fd"

    const-string v5, "\u4e2d\u570b"

    invoke-static {p0, v1, v4, v5}, Lcom/sina/weibo/sdk/utils/f;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/register/mobile/Country;->b(Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v3, v2

    aget-object v1, v3, v2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return-object v3

    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/register/mobile/Country;

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/Country;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "00852"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/Country;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "00853"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/Country;->c()Ljava/lang/String;

    move-result-object v4

    const-string v5, "00886"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    aget-object v4, v3, v2

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/sina/weibo/sdk/register/mobile/Country;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x61

    add-int/lit8 v4, v4, 0x1

    aget-object v5, v3, v4

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v3, v4

    :cond_3
    aget-object v4, v3, v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static synthetic b(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)[Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->c:[Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;)Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$a;
    .locals 1

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->h:Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$a;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 4

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->c:[Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->c:[Ljava/util/List;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->c:[Ljava/util/List;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->f:Ljava/util/List;

    new-instance v2, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$b;

    const/4 v3, -0x1

    invoke-direct {v2, p0, p1, v3}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity$b;-><init>(Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/sina/weibo/sdk/register/mobile/SelectCountryActivity;->a()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method
