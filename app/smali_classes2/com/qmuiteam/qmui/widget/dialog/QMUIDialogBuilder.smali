.class public abstract Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
.super Ljava/lang/Object;
.source "QMUIDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$Orientation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field protected b:Lcom/qmuiteam/qmui/widget/dialog/b;

.field protected c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field protected f:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;

.field protected g:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$a;

.field private j:I

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Lcom/qmuiteam/qmui/c/g;

.field private s:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->d:Z

    .line 3
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->e:Z

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->h:Ljava/util/List;

    const/4 v1, 0x0

    .line 5
    iput v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->j:I

    .line 6
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->k:Z

    .line 7
    iput v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->l:I

    .line 8
    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_dialog_action_divider_color:I

    iput v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->m:I

    .line 9
    iput v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->n:I

    .line 10
    iput v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->o:I

    .line 11
    iput v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->p:I

    .line 12
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->q:Z

    const/high16 v0, 0x3f400000    # 0.75f

    .line 13
    iput v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->s:F

    .line 14
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a:Landroid/content/Context;

    return-object p0
.end method

.method private d(Landroid/view/View;I)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    :cond_0
    return-void
.end method

.method private g(Landroid/content/Context;)Landroid/view/View;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/Space;

    invoke-direct {v0, p1}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method protected A(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->a()Lcom/qmuiteam/qmui/c/h;

    move-result-object v0

    .line 2
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_dialog_bg:I

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/c/h;->c(I)Lcom/qmuiteam/qmui/c/h;

    .line 3
    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/c/e;->g(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 4
    invoke-static {v0}, Lcom/qmuiteam/qmui/c/h;->r(Lcom/qmuiteam/qmui/c/h;)V

    return-void
.end method

.method protected B(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->a()Lcom/qmuiteam/qmui/c/h;

    move-result-object v0

    .line 2
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_dialog_title_text_color:I

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/c/h;->w(I)Lcom/qmuiteam/qmui/c/h;

    .line 3
    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/c/e;->g(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 4
    invoke-static {v0}, Lcom/qmuiteam/qmui/c/h;->r(Lcom/qmuiteam/qmui/c/h;)V

    return-void
.end method

.method protected C(Landroid/view/View;)Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/widget/QMUIWrapContentScrollView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    return-object v0
.end method

.method public b(IIILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c(ILjava/lang/CharSequence;ILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    return-object p0
.end method

.method public c(ILjava/lang/CharSequence;ILcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "I",
            "Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;",
            ")TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;

    invoke-direct {v0, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->f(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;

    .line 3
    invoke-virtual {v0, p3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->h(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;

    .line 4
    invoke-virtual {v0, p4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->g(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->h:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected e(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;)V
    .locals 0
    .param p1    # Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public f(I)Lcom/qmuiteam/qmui/widget/dialog/b;
    .locals 6
    .param p1    # I
        .annotation build Landroidx/annotation/StyleRes;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/b;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->n(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->g:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    .line 4
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->g:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->m()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;-><init>(Landroid/content/Context;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/widget/FrameLayout$LayoutParams;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;

    .line 5
    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->q:Z

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->setCheckKeyboardOverlay(Z)V

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;

    new-instance v1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$a;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$a;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;)V

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->setOverlayOccurInMeasureCallback(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout$a;)V

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;

    iget v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->s:F

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->setMaxPercent(F)V

    .line 8
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->e(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;)V

    .line 9
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;->getDialogView()Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->g:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    .line 10
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->i:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$a;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;->setOnDecorationListener(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView$a;)V

    .line 11
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->g:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-virtual {p0, v0, v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->q(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->g:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-virtual {p0, v1, v2, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->o(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->g:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-virtual {p0, v2, v3, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->k(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    .line 14
    sget v3, Lcom/qmuiteam/qmui/R$id;->qmui_dialog_title_id:I

    invoke-direct {p0, v0, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->d(Landroid/view/View;I)V

    .line 15
    sget v3, Lcom/qmuiteam/qmui/R$id;->qmui_dialog_operator_layout_id:I

    invoke-direct {p0, v1, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->d(Landroid/view/View;I)V

    .line 16
    sget v3, Lcom/qmuiteam/qmui/R$id;->qmui_dialog_content_id:I

    invoke-direct {p0, v2, v3}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->d(Landroid/view/View;I)V

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->r(Landroid/content/Context;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v4

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    goto :goto_0

    .line 20
    :cond_1
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 21
    :goto_0
    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->g:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-virtual {v5, v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    if-eqz v2, :cond_5

    .line 22
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->l(Landroid/content/Context;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v4

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    goto :goto_1

    .line 24
    :cond_3
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    :goto_1
    if-eqz v1, :cond_4

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v5

    iput v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    goto :goto_2

    .line 26
    :cond_4
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 27
    :goto_2
    iget-object v5, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->g:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-virtual {v5, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    if-eqz v1, :cond_8

    .line 28
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->p(Landroid/content/Context;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v4

    if-eqz v2, :cond_6

    .line 29
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    goto :goto_3

    .line 31
    :cond_7
    iput v3, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 32
    :goto_3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->g:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    :cond_8
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/d;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 34
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->d:Z

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/a;->setCancelable(Z)V

    .line 35
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    iget-boolean v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->e:Z

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/a;->setCanceledOnTouchOutside(Z)V

    .line 36
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->r:Lcom/qmuiteam/qmui/c/g;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/a;->b(Lcom/qmuiteam/qmui/c/g;)V

    .line 37
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->f:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;

    invoke-virtual {p0, v0, v1, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->j(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;Landroid/content/Context;)V

    .line 38
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    return-object p1
.end method

.method public h()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a:Landroid/content/Context;

    return-object v0
.end method

.method protected i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected j(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/qmuiteam/qmui/widget/dialog/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method protected abstract k(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .param p1    # Lcom/qmuiteam/qmui/widget/dialog/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method protected l(Landroid/content/Context;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 2
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 3
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:Z

    return-object p1
.end method

.method protected m()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected n(Landroid/content/Context;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;

    invoke-direct {v0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_dialog_bg:I

    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/i;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 3
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_radius:I

    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/qmuiteam/qmui/layout/QMUIConstraintLayout;->setRadius(I)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->A(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;)V

    return-object v0
.end method

.method protected o(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .locals 16
    .param p1    # Lcom/qmuiteam/qmui/widget/dialog/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 1
    iget-object v2, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v2, :cond_14

    .line 2
    sget-object v4, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionContainerCustomDef:[I

    sget v5, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_action_container_style:I

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    :goto_0
    if-ge v9, v5, :cond_4

    .line 4
    invoke-virtual {v4, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v14

    .line 5
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionContainerCustomDef_qmui_dialog_action_container_justify_content:I

    if-ne v14, v15, :cond_0

    .line 6
    invoke-virtual {v4, v14, v10}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    goto :goto_1

    .line 7
    :cond_0
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionContainerCustomDef_qmui_dialog_action_container_custom_space_index:I

    if-ne v14, v15, :cond_1

    .line 8
    invoke-virtual {v4, v14, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v11

    goto :goto_1

    .line 9
    :cond_1
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionContainerCustomDef_qmui_dialog_action_space:I

    if-ne v14, v15, :cond_2

    .line 10
    invoke-virtual {v4, v14, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    goto :goto_1

    .line 11
    :cond_2
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionContainerCustomDef_qmui_dialog_action_height:I

    if-ne v14, v15, :cond_3

    .line 12
    invoke-virtual {v4, v14, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 14
    iget v4, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->j:I

    if-eq v4, v8, :cond_7

    if-nez v10, :cond_5

    move v11, v2

    goto :goto_2

    :cond_5
    if-ne v10, v8, :cond_6

    const/4 v11, 0x0

    goto :goto_2

    :cond_6
    const/4 v4, 0x3

    if-ne v10, v4, :cond_7

    goto :goto_2

    :cond_7
    const/4 v11, -0x1

    .line 15
    :goto_2
    new-instance v4, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    sget v5, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_action_container_style:I

    invoke-direct {v4, v1, v3, v5}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    sget v3, Lcom/qmuiteam/qmui/R$id;->qmui_dialog_operator_layout_id:I

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setId(I)V

    .line 17
    iget v3, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->j:I

    if-ne v3, v8, :cond_8

    const/4 v3, 0x1

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 18
    invoke-virtual {v0, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->z(Landroid/view/ViewGroup;)V

    :goto_4
    if-ge v6, v2, :cond_11

    if-ne v11, v6, :cond_9

    .line 19
    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->g(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 20
    :cond_9
    iget-object v3, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->h:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;

    .line 21
    iget v5, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->m:I

    invoke-virtual {v3, v5}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->i(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;

    .line 22
    iget v5, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->j:I

    if-ne v5, v8, :cond_a

    .line 23
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_6

    .line 24
    :cond_a
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v5, v9, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    if-ltz v11, :cond_c

    if-lt v6, v11, :cond_b

    .line 25
    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_5

    .line 26
    :cond_b
    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :cond_c
    :goto_5
    const/4 v9, 0x2

    if-ne v10, v9, :cond_d

    const/high16 v9, 0x3f800000    # 1.0f

    .line 27
    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 28
    :cond_d
    :goto_6
    iget-object v9, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b:Lcom/qmuiteam/qmui/widget/dialog/b;

    invoke-virtual {v3, v9, v6}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->c(Lcom/qmuiteam/qmui/widget/dialog/b;I)Lcom/qmuiteam/qmui/layout/QMUIButton;

    move-result-object v3

    .line 29
    iget v9, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->l:I

    if-lez v9, :cond_10

    if-lez v6, :cond_10

    if-eq v11, v6, :cond_10

    .line 30
    iget v9, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->m:I

    if-nez v9, :cond_e

    iget v9, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->p:I

    goto :goto_7

    .line 31
    :cond_e
    invoke-static {v3, v9}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;I)I

    move-result v9

    .line 32
    :goto_7
    iget v14, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->j:I

    if-ne v14, v8, :cond_f

    .line 33
    iget v14, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->n:I

    iget v15, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->o:I

    iget v7, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->l:I

    invoke-virtual {v3, v14, v15, v7, v9}, Lcom/qmuiteam/qmui/layout/QMUIButton;->c(IIII)V

    goto :goto_8

    .line 34
    :cond_f
    iget v7, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->n:I

    iget v14, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->o:I

    iget v15, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->l:I

    invoke-virtual {v3, v7, v14, v15, v9}, Lcom/qmuiteam/qmui/layout/QMUIButton;->b(IIII)V

    .line 35
    :cond_10
    :goto_8
    iget-boolean v7, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->k:Z

    invoke-virtual {v3, v7}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenDisable(Z)V

    .line 36
    iget-boolean v7, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->k:Z

    invoke-virtual {v3, v7}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 37
    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v6, v6, 0x1

    const/4 v7, -0x1

    goto :goto_4

    :cond_11
    if-ne v11, v2, :cond_12

    .line 38
    invoke-direct {v0, v1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->g(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 39
    :cond_12
    iget v1, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->j:I

    if-nez v1, :cond_13

    .line 40
    new-instance v1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$b;

    invoke-direct {v1, v0, v4}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder$b;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;Lcom/qmuiteam/qmui/layout/QMUILinearLayout;)V

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_13
    return-object v4

    :cond_14
    return-object v3
.end method

.method protected p(Landroid/content/Context;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 2
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 3
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 4
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    const/4 v0, 0x2

    .line 5
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    return-object p1
.end method

.method protected q(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .locals 0
    .param p1    # Lcom/qmuiteam/qmui/widget/dialog/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p1, p3}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;)V

    .line 3
    sget p2, Lcom/qmuiteam/qmui/R$id;->qmui_dialog_title_id:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setId(I)V

    .line 4
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_title_style:I

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/widget/TextView;I)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->B(Landroid/widget/TextView;)V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected r(Landroid/content/Context;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 2
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 3
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 4
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    const/4 v0, 0x2

    .line 5
    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    return-object p1
.end method

.method protected s()V
    .locals 0

    return-void
.end method

.method public t(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->d:Z

    return-object p0
.end method

.method public u(Z)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->e:Z

    return-object p0
.end method

.method public v(F)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->s:F

    return-object p0
.end method

.method public w(Lcom/qmuiteam/qmui/c/g;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 0
    .param p1    # Lcom/qmuiteam/qmui/c/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qmuiteam/qmui/c/g;",
            ")TT;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->r:Lcom/qmuiteam/qmui/c/g;

    return-object p0
.end method

.method public x(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->y(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;

    return-object p0
.end method

.method public y(Ljava/lang/String;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a:Landroid/content/Context;

    sget v1, Lcom/qmuiteam/qmui/R$string;->qmui_tool_fixellipsize:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method protected z(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->a()Lcom/qmuiteam/qmui/c/h;

    move-result-object v0

    .line 2
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_dialog_action_container_separator_color:I

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/c/h;->E(I)Lcom/qmuiteam/qmui/c/h;

    .line 3
    invoke-static {p1, v0}, Lcom/qmuiteam/qmui/c/e;->g(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 4
    invoke-static {v0}, Lcom/qmuiteam/qmui/c/h;->r(Lcom/qmuiteam/qmui/c/h;)V

    return-void
.end method