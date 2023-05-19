.class public abstract Lcom/qmuiteam/qmui/widget/popup/a;
.super Ljava/lang/Object;
.source "QMUIBasePopup.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/qmuiteam/qmui/widget/popup/a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/widget/PopupWindow;

.field protected b:Landroid/view/WindowManager;

.field protected c:Landroid/content/Context;

.field protected d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:F

.field private f:I

.field private g:Landroid/widget/PopupWindow$OnDismissListener;

.field private h:Z

.field private i:Lcom/qmuiteam/qmui/c/g;

.field private j:Lcom/qmuiteam/qmui/c/g$c;

.field private k:Landroid/view/View$OnAttachStateChangeListener;

.field private l:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->e:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->f:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->h:Z

    .line 5
    new-instance v0, Lcom/qmuiteam/qmui/widget/popup/a$a;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/popup/a$a;-><init>(Lcom/qmuiteam/qmui/widget/popup/a;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->j:Lcom/qmuiteam/qmui/c/g$c;

    .line 6
    new-instance v0, Lcom/qmuiteam/qmui/widget/popup/a$b;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/popup/a$b;-><init>(Lcom/qmuiteam/qmui/widget/popup/a;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->k:Landroid/view/View$OnAttachStateChangeListener;

    .line 7
    new-instance v0, Lcom/qmuiteam/qmui/widget/popup/a$c;

    invoke-direct {v0, p0}, Lcom/qmuiteam/qmui/widget/popup/a$c;-><init>(Lcom/qmuiteam/qmui/widget/popup/a;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->l:Landroid/view/View$OnTouchListener;

    .line 8
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->c:Landroid/content/Context;

    const-string v0, "window"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->b:Landroid/view/WindowManager;

    .line 10
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    .line 11
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/popup/a;->f()V

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/popup/a;)Landroid/widget/PopupWindow$OnDismissListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->g:Landroid/widget/PopupWindow$OnDismissListener;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 4
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/qmuiteam/qmui/widget/popup/a$d;

    invoke-direct {v1, p0}, Lcom/qmuiteam/qmui/widget/popup/a$d;-><init>(Lcom/qmuiteam/qmui/widget/popup/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 5
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->h:Z

    invoke-virtual {p0, v0}, Lcom/qmuiteam/qmui/widget/popup/a;->d(Z)Lcom/qmuiteam/qmui/widget/popup/a;

    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->k:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    return-void
.end method

.method private l(F)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/popup/a;->e()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    .line 3
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 4
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 5
    invoke-virtual {p0, v1}, Lcom/qmuiteam/qmui/widget/popup/a;->g(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->b:Landroid/view/WindowManager;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b(F)Lcom/qmuiteam/qmui/widget/popup/a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->e:F

    return-object p0
.end method

.method public final c()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/popup/a;->i()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->d:Ljava/lang/ref/WeakReference;

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->i:Lcom/qmuiteam/qmui/c/g;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/c/g;->x(Landroid/widget/PopupWindow;)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->i:Lcom/qmuiteam/qmui/c/g;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->j:Lcom/qmuiteam/qmui/c/g$c;

    invoke-virtual {v0, v1}, Lcom/qmuiteam/qmui/c/g;->removeSkinChangeListener(Lcom/qmuiteam/qmui/c/g$c;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public d(Z)Lcom/qmuiteam/qmui/widget/popup/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->h:Z

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->l:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-object p0
.end method

.method public e()Landroid/view/View;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x17

    if-nez v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected g(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    return-void
.end method

.method protected h()V
    .locals 0

    return-void
.end method

.method protected j(Landroid/view/View;II)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->V(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/qmuiteam/qmui/widget/popup/a;->i()V

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->k:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->d:Ljava/lang/ref/WeakReference;

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 6
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/popup/a;->i:Lcom/qmuiteam/qmui/c/g;

    if-eqz p2, :cond_2

    .line 7
    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/popup/a;->a:Landroid/widget/PopupWindow;

    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/c/g;->s(Landroid/widget/PopupWindow;)V

    .line 8
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/popup/a;->i:Lcom/qmuiteam/qmui/c/g;

    iget-object p3, p0, Lcom/qmuiteam/qmui/widget/popup/a;->j:Lcom/qmuiteam/qmui/c/g$c;

    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/c/g;->addSkinChangeListener(Lcom/qmuiteam/qmui/c/g$c;)V

    .line 9
    iget p2, p0, Lcom/qmuiteam/qmui/widget/popup/a;->f:I

    if-eqz p2, :cond_2

    .line 10
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/popup/a;->i:Lcom/qmuiteam/qmui/c/g;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/c/g;->j()Landroid/content/res/Resources$Theme;

    move-result-object p2

    if-nez p2, :cond_1

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    .line 12
    :cond_1
    iget p1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->f:I

    invoke-static {p2, p1}, Lcom/qmuiteam/qmui/util/i;->j(Landroid/content/res/Resources$Theme;I)F

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->e:F

    .line 13
    :cond_2
    iget p1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->e:F

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_3

    .line 14
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/popup/a;->l(F)V

    :cond_3
    return-void
.end method

.method public k(Lcom/qmuiteam/qmui/c/g;)Lcom/qmuiteam/qmui/widget/popup/a;
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
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/a;->i:Lcom/qmuiteam/qmui/c/g;

    return-object p0
.end method
