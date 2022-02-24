.class Landroidx/appcompat/widget/h0;
.super Ljava/lang/Object;
.source "TooltipCompatHandler.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->c:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static j:Landroidx/appcompat/widget/h0;

.field private static k:Landroidx/appcompat/widget/h0;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Ljava/lang/CharSequence;

.field private final c:I

.field private final d:Ljava/lang/Runnable;

.field private final e:Ljava/lang/Runnable;

.field private f:I

.field private g:I

.field private h:Landroidx/appcompat/widget/i0;

.field private i:Z


# direct methods
.method private constructor <init>(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/appcompat/widget/h0$a;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/h0$a;-><init>(Landroidx/appcompat/widget/h0;)V

    iput-object v0, p0, Landroidx/appcompat/widget/h0;->d:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Landroidx/appcompat/widget/h0$b;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/h0$b;-><init>(Landroidx/appcompat/widget/h0;)V

    iput-object v0, p0, Landroidx/appcompat/widget/h0;->e:Ljava/lang/Runnable;

    .line 4
    iput-object p1, p0, Landroidx/appcompat/widget/h0;->a:Landroid/view/View;

    .line 5
    iput-object p2, p0, Landroidx/appcompat/widget/h0;->b:Ljava/lang/CharSequence;

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 7
    invoke-static {p1}, Landroidx/core/view/x;->a(Landroid/view/ViewConfiguration;)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/widget/h0;->c:I

    .line 8
    invoke-direct {p0}, Landroidx/appcompat/widget/h0;->c()V

    .line 9
    iget-object p1, p0, Landroidx/appcompat/widget/h0;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 10
    iget-object p1, p0, Landroidx/appcompat/widget/h0;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    sget-object v0, Landroidx/appcompat/widget/h0;->j:Landroidx/appcompat/widget/h0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/appcompat/widget/h0;->a:Landroid/view/View;

    if-ne v0, p0, :cond_0

    .line 2
    invoke-static {v1}, Landroidx/appcompat/widget/h0;->a(Landroidx/appcompat/widget/h0;)V

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    sget-object p1, Landroidx/appcompat/widget/h0;->k:Landroidx/appcompat/widget/h0;

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroidx/appcompat/widget/h0;->a:Landroid/view/View;

    if-ne v0, p0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroidx/appcompat/widget/h0;->a()V

    .line 6
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 8
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0

    .line 9
    :cond_2
    new-instance v0, Landroidx/appcompat/widget/h0;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/widget/h0;-><init>(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private static a(Landroidx/appcompat/widget/h0;)V
    .locals 1

    .line 36
    sget-object v0, Landroidx/appcompat/widget/h0;->j:Landroidx/appcompat/widget/h0;

    if-eqz v0, :cond_0

    .line 37
    invoke-direct {v0}, Landroidx/appcompat/widget/h0;->b()V

    .line 38
    :cond_0
    sput-object p0, Landroidx/appcompat/widget/h0;->j:Landroidx/appcompat/widget/h0;

    if-eqz p0, :cond_1

    .line 39
    invoke-direct {p0}, Landroidx/appcompat/widget/h0;->d()V

    :cond_1
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 42
    iget v1, p0, Landroidx/appcompat/widget/h0;->f:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/h0;->c:I

    if-gt v1, v2, :cond_0

    iget v1, p0, Landroidx/appcompat/widget/h0;->g:I

    sub-int v1, p1, v1

    .line 43
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Landroidx/appcompat/widget/h0;->c:I

    if-gt v1, v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 44
    :cond_0
    iput v0, p0, Landroidx/appcompat/widget/h0;->f:I

    .line 45
    iput p1, p0, Landroidx/appcompat/widget/h0;->g:I

    const/4 p1, 0x1

    return p1
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->a:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/h0;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c()V
    .locals 1

    const v0, 0x7fffffff

    .line 1
    iput v0, p0, Landroidx/appcompat/widget/h0;->f:I

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/h0;->g:I

    return-void
.end method

.method private d()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->a:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/h0;->d:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 25
    sget-object v0, Landroidx/appcompat/widget/h0;->k:Landroidx/appcompat/widget/h0;

    const/4 v1, 0x0

    if-ne v0, p0, :cond_1

    .line 26
    sput-object v1, Landroidx/appcompat/widget/h0;->k:Landroidx/appcompat/widget/h0;

    .line 27
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->h:Landroidx/appcompat/widget/i0;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Landroidx/appcompat/widget/i0;->a()V

    .line 29
    iput-object v1, p0, Landroidx/appcompat/widget/h0;->h:Landroidx/appcompat/widget/i0;

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/widget/h0;->c()V

    .line 31
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "TooltipCompatHandler"

    const-string v2, "sActiveHandler.mPopup == null"

    .line 32
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_1
    :goto_0
    sget-object v0, Landroidx/appcompat/widget/h0;->j:Landroidx/appcompat/widget/h0;

    if-ne v0, p0, :cond_2

    .line 34
    invoke-static {v1}, Landroidx/appcompat/widget/h0;->a(Landroidx/appcompat/widget/h0;)V

    .line 35
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->a:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/widget/h0;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method a(Z)V
    .locals 7

    .line 10
    iget-object v0, p0, Landroidx/appcompat/widget/h0;->a:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->M(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-static {v0}, Landroidx/appcompat/widget/h0;->a(Landroidx/appcompat/widget/h0;)V

    .line 12
    sget-object v0, Landroidx/appcompat/widget/h0;->k:Landroidx/appcompat/widget/h0;

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Landroidx/appcompat/widget/h0;->a()V

    .line 14
    :cond_1
    sput-object p0, Landroidx/appcompat/widget/h0;->k:Landroidx/appcompat/widget/h0;

    .line 15
    iput-boolean p1, p0, Landroidx/appcompat/widget/h0;->i:Z

    .line 16
    new-instance v1, Landroidx/appcompat/widget/i0;

    iget-object p1, p0, Landroidx/appcompat/widget/h0;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Landroidx/appcompat/widget/i0;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroidx/appcompat/widget/h0;->h:Landroidx/appcompat/widget/i0;

    .line 17
    iget-object v2, p0, Landroidx/appcompat/widget/h0;->a:Landroid/view/View;

    iget v3, p0, Landroidx/appcompat/widget/h0;->f:I

    iget v4, p0, Landroidx/appcompat/widget/h0;->g:I

    iget-boolean v5, p0, Landroidx/appcompat/widget/h0;->i:Z

    iget-object v6, p0, Landroidx/appcompat/widget/h0;->b:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v6}, Landroidx/appcompat/widget/i0;->a(Landroid/view/View;IIZLjava/lang/CharSequence;)V

    .line 18
    iget-object p1, p0, Landroidx/appcompat/widget/h0;->a:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 19
    iget-boolean p1, p0, Landroidx/appcompat/widget/h0;->i:Z

    if-eqz p1, :cond_2

    const-wide/16 v0, 0x9c4

    goto :goto_1

    .line 20
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/h0;->a:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->G(Landroid/view/View;)I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_3

    const-wide/16 v0, 0xbb8

    .line 21
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x3a98

    .line 22
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    :goto_0
    int-to-long v2, p1

    sub-long/2addr v0, v2

    .line 23
    :goto_1
    iget-object p1, p0, Landroidx/appcompat/widget/h0;->a:Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/h0;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 24
    iget-object p1, p0, Landroidx/appcompat/widget/h0;->a:Landroid/view/View;

    iget-object v2, p0, Landroidx/appcompat/widget/h0;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/appcompat/widget/h0;->h:Landroidx/appcompat/widget/i0;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Landroidx/appcompat/widget/h0;->i:Z

    if-eqz p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/h0;->a:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 4
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 5
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_3

    const/16 p2, 0xa

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-direct {p0}, Landroidx/appcompat/widget/h0;->c()V

    .line 7
    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->a()V

    goto :goto_0

    .line 8
    :cond_3
    iget-object p1, p0, Landroidx/appcompat/widget/h0;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroidx/appcompat/widget/h0;->h:Landroidx/appcompat/widget/i0;

    if-nez p1, :cond_4

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/h0;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    invoke-static {p0}, Landroidx/appcompat/widget/h0;->a(Landroidx/appcompat/widget/h0;)V

    :cond_4
    :goto_0
    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/appcompat/widget/h0;->f:I

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroidx/appcompat/widget/h0;->g:I

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/h0;->a(Z)V

    return p1
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/widget/h0;->a()V

    return-void
.end method
