.class public Lcom/amap/api/mapcore/util/ep;
.super Landroid/widget/ScrollView;
.source "IndoorFloorSwitchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/ep$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field b:I

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/LinearLayout;

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Bitmap;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/Runnable;

.field private q:I

.field private r:Lcom/amap/api/mapcore/util/ep$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amap/api/mapcore/util/ep;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/mapcore/util/ep;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/ep;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/ep;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ep;->i:Landroid/graphics/Bitmap;

    const-string v0, "#eeffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/ep;->j:I

    const-string v0, "#44383838"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/ep;->k:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/amap/api/mapcore/util/ep;->l:I

    iput v1, p0, Lcom/amap/api/mapcore/util/ep;->m:I

    iput v1, p0, Lcom/amap/api/mapcore/util/ep;->b:I

    const/16 v0, 0x32

    iput v0, p0, Lcom/amap/api/mapcore/util/ep;->q:I

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/ep;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;F)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    invoke-static {p0}, Lcom/amap/api/mapcore/util/ep;->b(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/ep;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/ep;->o:I

    return v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/ep;I)I
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore/util/ep;->o:I

    return p1
.end method

.method private a(I)V
    .locals 5

    iget v0, p0, Lcom/amap/api/mapcore/util/ep;->e:I

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore/util/ep;->e:I

    div-int v0, p1, v0

    iget v1, p0, Lcom/amap/api/mapcore/util/ep;->m:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/mapcore/util/ep;->e:I

    rem-int v1, p1, v1

    iget v2, p0, Lcom/amap/api/mapcore/util/ep;->e:I

    div-int v2, p1, v2

    if-nez v1, :cond_2

    iget v0, p0, Lcom/amap/api/mapcore/util/ep;->m:I

    add-int/2addr v0, v2

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-ne v1, v2, :cond_3

    const-string v4, "#0288ce"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/amap/api/mapcore/util/ep;->e:I

    div-int/lit8 v3, v3, 0x2

    if-le v1, v3, :cond_4

    iget v0, p0, Lcom/amap/api/mapcore/util/ep;->m:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const-string v4, "#bbbbbb"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ep;->c:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ep;->setVerticalScrollBarEnabled(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/amap/api/mapcore/util/dz;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "map_indoor_select.png"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ep;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ep;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->d:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ep;->addView(Landroid/view/View;)V

    new-instance v0, Lcom/amap/api/mapcore/util/ep$1;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/ep$1;-><init>(Lcom/amap/api/mapcore/util/ep;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ep;->p:Ljava/lang/Runnable;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/mapcore/util/ep;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/ep;->e:I

    return v0
.end method

.method private b(Ljava/lang/String;)Landroid/widget/TextView;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, -0x2

    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ep;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ep;->c:Landroid/content/Context;

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/ep;->a(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ep;->c:Landroid/content/Context;

    const/high16 v3, 0x40c00000    # 6.0f

    invoke-static {v2, v3}, Lcom/amap/api/mapcore/util/ep;->a(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget v1, p0, Lcom/amap/api/mapcore/util/ep;->e:I

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/ep;->a(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/ep;->e:I

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ep;->d:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/amap/api/mapcore/util/ep;->e:I

    iget v4, p0, Lcom/amap/api/mapcore/util/ep;->n:I

    mul-int/2addr v3, v4

    invoke-direct {v2, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/amap/api/mapcore/util/ep;->e:I

    iget v3, p0, Lcom/amap/api/mapcore/util/ep;->n:I

    mul-int/2addr v2, v3

    invoke-direct {v1, v5, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/ep;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-object v0
.end method

.method public static b(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const v1, 0x1fffffff

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/ep;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/ep;->m:I

    return v0
.end method

.method static synthetic d(Lcom/amap/api/mapcore/util/ep;)V
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ep;->g()V

    return-void
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/ep;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->p:Ljava/lang/Runnable;

    return-object v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget v0, p0, Lcom/amap/api/mapcore/util/ep;->m:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/ep;->n:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ep;->d:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ep;->b(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/ep;->a(I)V

    goto :goto_0
.end method

.method static synthetic f(Lcom/amap/api/mapcore/util/ep;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/ep;->q:I

    return v0
.end method

.method private f()[I
    .locals 4

    const/4 v0, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/amap/api/mapcore/util/ep;->e:I

    iget v3, p0, Lcom/amap/api/mapcore/util/ep;->m:I

    mul-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/amap/api/mapcore/util/ep;->e:I

    iget v3, p0, Lcom/amap/api/mapcore/util/ep;->m:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    aput v2, v0, v1

    :cond_0
    return-object v0
.end method

.method static synthetic g(Lcom/amap/api/mapcore/util/ep;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/ep;->j:I

    return v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->r:Lcom/amap/api/mapcore/util/ep$a;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->r:Lcom/amap/api/mapcore/util/ep$a;

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ep;->c()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/amap/api/mapcore/util/ep$a;->a(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic h(Lcom/amap/api/mapcore/util/ep;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->i:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic i(Lcom/amap/api/mapcore/util/ep;)[I
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ep;->f()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/amap/api/mapcore/util/ep;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/ep;->h:I

    return v0
.end method

.method static synthetic k(Lcom/amap/api/mapcore/util/ep;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/ep;->k:I

    return v0
.end method

.method static synthetic l(Lcom/amap/api/mapcore/util/ep;)I
    .locals 1

    iget v0, p0, Lcom/amap/api/mapcore/util/ep;->l:I

    return v0
.end method


# virtual methods
.method public a()V
    .locals 4

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ep;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/ep;->o:I

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->p:Ljava/lang/Runnable;

    iget v1, p0, Lcom/amap/api/mapcore/util/ep;->q:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/amap/api/mapcore/util/ep;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Lcom/amap/api/mapcore/util/ep$a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/mapcore/util/ep;->r:Lcom/amap/api/mapcore/util/ep$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ep;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/amap/api/mapcore/util/ep;->m:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    sub-int v0, v1, v0

    iget v1, p0, Lcom/amap/api/mapcore/util/ep;->m:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amap/api/mapcore/util/ep;->b:I

    new-instance v1, Lcom/amap/api/mapcore/util/ep$3;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/mapcore/util/ep$3;-><init>(Lcom/amap/api/mapcore/util/ep;I)V

    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/ep;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ep;->setVisibility(I)V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a([Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->f:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ep;->f:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ep;->f:Ljava/util/List;

    aget-object v3, p1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    iget v2, p0, Lcom/amap/api/mapcore/util/ep;->m:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ep;->f:Ljava/util/List;

    const-string v3, ""

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ep;->f:Ljava/util/List;

    const-string v3, ""

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/ep;->e()V

    return-void
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->i:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ep;->i:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->r:Lcom/amap/api/mapcore/util/ep$a;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/ep;->r:Lcom/amap/api/mapcore/util/ep$a;

    :cond_1
    return-void
.end method

.method public c()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ep;->f:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/ep;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/ep;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/amap/api/mapcore/util/ep;->b:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/amap/api/mapcore/util/ep;->m:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/ep;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/amap/api/mapcore/util/ep;->m:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ep;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public fling(I)V
    .locals 1

    div-int/lit8 v0, p1, 0x3

    invoke-super {p0, v0}, Landroid/widget/ScrollView;->fling(I)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore/util/ep;->a(I)V

    if-le p2, p4, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/mapcore/util/ep;->g:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/mapcore/util/ep;->g:I

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/amap/api/mapcore/util/ep;->h:I

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/ep;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/ep;->a()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/mapcore/util/ep;->j:I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget v0, p0, Lcom/amap/api/mapcore/util/ep;->h:I

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/ep;->c:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/ep;->h:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v0, Lcom/amap/api/mapcore/util/ep$2;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/ep$2;-><init>(Lcom/amap/api/mapcore/util/ep;)V

    invoke-super {p0, v0}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
