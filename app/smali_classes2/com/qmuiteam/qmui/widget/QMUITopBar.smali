.class public Lcom/qmuiteam/qmui/widget/QMUITopBar;
.super Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;
.source "QMUITopBar.java"

# interfaces
.implements Lcom/qmuiteam/qmui/c/d;
.implements Lcom/qmuiteam/qmui/c/i/a;


# static fields
.field private static D:La/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Lcom/qmuiteam/qmui/c/i/a;

.field private C:Lcom/qmuiteam/qmui/c/i/a;

.field private c:I

.field private d:I

.field private e:Landroid/view/View;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

.field private h:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:Landroid/content/res/ColorStateList;

.field private x:I

.field private y:I

.field private z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, La/b/g;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, La/b/g;-><init>(I)V

    sput-object v0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->D:La/b/g;

    .line 2
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_topbar_separator_color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bottomSeparator"

    invoke-virtual {v0, v2, v1}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->D:La/b/g;

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_topbar_bg:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "background"

    invoke-virtual {v0, v2, v1}, La/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lcom/qmuiteam/qmui/R$attr;->QMUITopBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->y:I

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->A:Z

    .line 6
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->z()V

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private A()Landroid/widget/LinearLayout;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->f:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->f:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->f:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->f:Landroid/widget/LinearLayout;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->s:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->f:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->t()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private E()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->g:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->h:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/qmuiteam/qmui/util/g;->f(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->g:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->n:I

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setTextSize(I)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->g:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->m:I

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setTextSize(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method private getSubTitleView()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->h:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->h:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    const/16 v1, 0x11

    .line 3
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setGravity(I)V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->h:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setSingleLine(Z)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->h:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->h:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->o:I

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setTextSize(I)V

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->h:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->q:I

    invoke-virtual {v0, v2}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setTextColor(I)V

    .line 8
    new-instance v0, Lcom/qmuiteam/qmui/c/i/b;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/c/i/b;-><init>()V

    .line 9
    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_topbar_subtitle_color:I

    const-string v3, "textColor"

    invoke-virtual {v0, v3, v2}, Lcom/qmuiteam/qmui/c/i/b;->a(Ljava/lang/String;I)V

    .line 10
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->h:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    sget v3, Lcom/qmuiteam/qmui/R$id;->qmui_skin_default_attr_provider:I

    invoke-virtual {v2, v3, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 11
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->u()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 13
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->A()Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->h:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->h:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    return-object v0
.end method

.method private getTitleView()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->g:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->g:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    const/16 v1, 0x11

    .line 3
    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setGravity(I)V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->g:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setSingleLine(Z)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->g:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->g:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->p:I

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setTextColor(I)V

    .line 7
    new-instance v0, Lcom/qmuiteam/qmui/c/i/b;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/c/i/b;-><init>()V

    .line 8
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_topbar_title_color:I

    const-string v2, "textColor"

    invoke-virtual {v0, v2, v1}, Lcom/qmuiteam/qmui/c/i/b;->a(Ljava/lang/String;I)V

    .line 9
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->g:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    sget v2, Lcom/qmuiteam/qmui/R$id;->qmui_skin_default_attr_provider:I

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 10
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->E()V

    .line 11
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->u()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 12
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->A()Landroid/widget/LinearLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->g:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->g:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    return-object v0
.end method

.method private t()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_topbar_height:I

    invoke-static {v1, v2}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private u()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 2
    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->k:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object v0
.end method

.method private v(IZ)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .locals 3

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->C:Lcom/qmuiteam/qmui/c/i/a;

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Lcom/qmuiteam/qmui/c/i/b;

    invoke-direct {p2}, Lcom/qmuiteam/qmui/c/i/b;-><init>()V

    .line 4
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_topbar_image_tint_color:I

    const-string v2, "tintColor"

    invoke-virtual {p2, v2, v1}, Lcom/qmuiteam/qmui/c/i/b;->a(Ljava/lang/String;I)V

    .line 5
    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->C:Lcom/qmuiteam/qmui/c/i/a;

    .line 6
    :cond_0
    sget p2, Lcom/qmuiteam/qmui/R$id;->qmui_skin_default_attr_provider:I

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->C:Lcom/qmuiteam/qmui/c/i/a;

    invoke-virtual {v0, p2, v1}, Landroid/widget/ImageButton;->setTag(ILjava/lang/Object;)V

    :cond_1
    const/4 p2, 0x0

    .line 7
    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 8
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    return-object v0
.end method

.method private x(Ljava/lang/String;)Landroid/widget/Button;
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->B:Lcom/qmuiteam/qmui/c/i/a;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lcom/qmuiteam/qmui/c/i/b;

    invoke-direct {v1}, Lcom/qmuiteam/qmui/c/i/b;-><init>()V

    .line 4
    sget v2, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_topbar_text_btn_color_state_list:I

    const-string v3, "textColor"

    invoke-virtual {v1, v3, v2}, Lcom/qmuiteam/qmui/c/i/b;->a(Ljava/lang/String;I)V

    .line 5
    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->B:Lcom/qmuiteam/qmui/c/i/a;

    .line 6
    :cond_0
    sget v1, Lcom/qmuiteam/qmui/R$id;->qmui_skin_default_attr_provider:I

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->B:Lcom/qmuiteam/qmui/c/i/a;

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinWidth(I)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 12
    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->v:I

    invoke-virtual {v0, v2, v1, v2, v1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 13
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->w:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 14
    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->x:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    const/16 v1, 0x11

    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 16
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private z()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->c:I

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->d:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->i:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->j:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public B(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->C(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    move-result-object p1

    return-object p1
.end method

.method public C(Ljava/lang/String;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->getTitleView()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {p1}, Lcom/qmuiteam/qmui/util/g;->f(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-object v0
.end method

.method public D(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->g:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public a(Lcom/qmuiteam/qmui/c/g;ILandroid/content/res/Resources$Theme;La/b/g;)V
    .locals 3
    .param p1    # Lcom/qmuiteam/qmui/c/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # La/b/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/c/g;",
            "I",
            "Landroid/content/res/Resources$Theme;",
            "La/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-eqz p4, :cond_3

    const/4 p2, 0x0

    .line 1
    :goto_0
    invoke-virtual {p4}, La/b/g;->size()I

    move-result v0

    if-ge p2, v0, :cond_3

    .line 2
    invoke-virtual {p4, p2}, La/b/g;->i(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-virtual {p4, p2}, La/b/g;->m(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/qmuiteam/qmui/widget/QMUITopBarLayout;

    if-eqz v2, :cond_1

    const-string v2, "background"

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "bottomSeparator"

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, p0, p3, v0, v1}, Lcom/qmuiteam/qmui/c/g;->e(Landroid/view/View;Landroid/content/res/Resources$Theme;Ljava/lang/String;I)V

    :cond_2
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method b(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 2
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_left_back_drawable_id:I

    sget v0, Lcom/qmuiteam/qmui/R$drawable;->qmui_icon_topbar_back:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->l:I

    .line 3
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_title_gravity:I

    const/16 v0, 0x11

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->k:I

    .line 4
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_title_text_size:I

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/d;->l(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->m:I

    const/16 v0, 0x10

    .line 5
    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/d;->l(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->n:I

    .line 6
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_subtitle_text_size:I

    const/16 v1, 0xb

    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/d;->l(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->o:I

    .line 7
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_title_color:I

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_config_color_gray_1:I

    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->p:I

    .line 8
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_subtitle_color:I

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_config_color_gray_4:I

    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->q:I

    .line 9
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_title_margin_horizontal_when_no_btn_aside:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->r:I

    .line 10
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_title_container_padding_horizontal:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->s:I

    .line 11
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_image_btn_width:I

    const/16 v1, 0x30

    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->t:I

    .line 12
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_image_btn_height:I

    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->u:I

    .line 13
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_text_btn_padding_horizontal:I

    const/16 v1, 0xc

    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->v:I

    .line 14
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_text_btn_color_state_list:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p3

    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->w:Landroid/content/res/ColorStateList;

    .line 15
    sget p3, Lcom/qmuiteam/qmui/R$styleable;->QMUITopBar_qmui_topbar_text_btn_text_size:I

    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/util/d;->l(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->x:I

    .line 16
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public d()Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->l:I

    sget v1, Lcom/qmuiteam/qmui/R$id;->qmui_topbar_item_left_back:I

    invoke-virtual {p0, v0, v1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->f(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object v0

    return-object v0
.end method

.method public f(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->h(IZI)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultSkinAttrs()La/b/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->D:La/b/g;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->g:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleContainerRect()Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->z:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->z:Landroid/graphics/Rect;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->f:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->z:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->z:Landroid/graphics/Rect;

    invoke-static {p0, v0, v1}, Lcom/qmuiteam/qmui/util/l;->c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->z:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getTitleContainerView()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method getTopBarHeight()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->y:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_topbar_height:I

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->y:I

    .line 3
    :cond_0
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->y:I

    return v0
.end method

.method public h(IZI)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->v(IZ)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->w()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->m(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    return-object p1
.end method

.method public k(II)Landroid/widget/Button;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->l(Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;I)Landroid/widget/Button;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->x(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->y()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->m(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    return-object p1
.end method

.method public m(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->c:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    const/16 v0, 0x9

    .line 2
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 4
    :goto_0
    iput-boolean v1, p3, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 5
    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->c:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 7
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->i:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0, p1, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public n(II)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->o(IZI)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object p1

    return-object p1
.end method

.method public o(IZI)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->v(IZ)Lcom/qmuiteam/qmui/alpha/QMUIAlphaImageButton;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->w()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p0, p1, p3, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->r(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3
    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 4
    instance-of v1, v0, Lcom/qmuiteam/qmui/widget/QMUICollapsingTopBarLayout;

    if-eqz v1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->A()Landroid/widget/LinearLayout;

    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->f:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    sub-int/2addr p5, p3

    .line 5
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    sub-int/2addr p5, p3

    div-int/lit8 p5, p5, 0x2

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result p3

    .line 7
    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->k:I

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sub-int/2addr p4, p2

    .line 8
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    .line 9
    :goto_0
    iget-object p4, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->i:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p2, p4, :cond_2

    .line 10
    iget-object p4, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->i:Ljava/util/List;

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    .line 11
    invoke-virtual {p4}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    .line 12
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p4

    add-int/2addr p3, p4

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 13
    :cond_2
    iget p2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->r:I

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 14
    :goto_1
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->f:Landroid/widget/LinearLayout;

    add-int/2addr p1, p4

    add-int/2addr v0, p5

    invoke-virtual {p2, p4, p5, p1, v0}, Landroid/widget/LinearLayout;->layout(IIII)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Lcom/qmuiteam/qmui/layout/QMUIRelativeLayout;->onMeasure(II)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->f:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->i:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x8

    if-ge v2, v3, :cond_1

    .line 5
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->i:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_0

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v2

    .line 9
    :goto_1
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 10
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->j:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 11
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 12
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_3
    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->r:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 14
    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->r:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 15
    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->k:I

    and-int/lit8 v2, v2, 0x7

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 16
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    goto :goto_2

    .line 18
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sub-int/2addr p1, v0

    sub-int/2addr p1, v1

    :goto_2
    const/high16 v0, 0x40000000    # 2.0f

    .line 19
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 20
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/LinearLayout;->measure(II)V

    :cond_5
    return-void
.end method

.method public p(II)Landroid/widget/Button;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->q(Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/lang/String;I)Landroid/widget/Button;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->x(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->y()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->r(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    return-object p1
.end method

.method public r(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0xb

    .line 2
    invoke-virtual {p3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {p3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :goto_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p3, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 5
    iput p2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->d:I

    .line 6
    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 7
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->j:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0, p1, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method s()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->A:Z

    const/4 v0, 0x0

    .line 2
    invoke-super {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setBackgroundAlpha(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->A:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setCenterView(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->e:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 3
    :cond_1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->e:Landroid/view/View;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :cond_2
    const/16 v1, 0xd

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 7
    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTitleGravity(I)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->k:I

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->g:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->g:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;->setPadding(IIII)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->h:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceView;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public w()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->t:I

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->u:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->getTopBarHeight()I

    move-result v1

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->u:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    return-object v0
.end method

.method public y()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->u:I

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/QMUITopBar;->getTopBarHeight()I

    move-result v1

    iget v2, p0, Lcom/qmuiteam/qmui/widget/QMUITopBar;->u:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    return-object v0
.end method
