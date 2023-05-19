.class public final Lcom/blankj/utilcode/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ToastUtils$UtilsMaxWidthRelativeLayout;,
        Lcom/blankj/utilcode/util/ToastUtils$e;,
        Lcom/blankj/utilcode/util/ToastUtils$c;,
        Lcom/blankj/utilcode/util/ToastUtils$d;,
        Lcom/blankj/utilcode/util/ToastUtils$g;,
        Lcom/blankj/utilcode/util/ToastUtils$f;,
        Lcom/blankj/utilcode/util/ToastUtils$MODE;
    }
.end annotation


# static fields
.field private static final k:Lcom/blankj/utilcode/util/ToastUtils;

.field private static l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/blankj/utilcode/util/ToastUtils$e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:[Landroid/graphics/drawable/Drawable;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->n()Lcom/blankj/utilcode/util/ToastUtils;

    move-result-object v0

    sput-object v0, Lcom/blankj/utilcode/util/ToastUtils;->k:Lcom/blankj/utilcode/util/ToastUtils;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->b:I

    .line 3
    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->c:I

    .line 4
    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->d:I

    const v1, -0x1000001

    .line 5
    iput v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->e:I

    .line 6
    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->f:I

    .line 7
    iput v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->g:I

    .line 8
    iput v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->h:I

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 9
    iput-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->i:[Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->j:Z

    return-void
.end method

.method static synthetic a()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->l:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    sput-object p0, Lcom/blankj/utilcode/util/ToastUtils;->l:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic c(Lcom/blankj/utilcode/util/ToastUtils;)Lcom/blankj/utilcode/util/ToastUtils$e;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->o(Lcom/blankj/utilcode/util/ToastUtils;)Lcom/blankj/utilcode/util/ToastUtils$e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/blankj/utilcode/util/ToastUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->f:I

    return p0
.end method

.method static synthetic e(Lcom/blankj/utilcode/util/ToastUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->e:I

    return p0
.end method

.method static synthetic f(Lcom/blankj/utilcode/util/ToastUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->b:I

    return p0
.end method

.method static synthetic g(Lcom/blankj/utilcode/util/ToastUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->c:I

    return p0
.end method

.method static synthetic h(Lcom/blankj/utilcode/util/ToastUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->d:I

    return p0
.end method

.method static synthetic i(Lcom/blankj/utilcode/util/ToastUtils;Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->s(Ljava/lang/CharSequence;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcom/blankj/utilcode/util/ToastUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->g:I

    return p0
.end method

.method static synthetic k(Lcom/blankj/utilcode/util/ToastUtils;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/blankj/utilcode/util/ToastUtils;->h:I

    return p0
.end method

.method public static l()V
    .locals 1

    .line 1
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$a;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/ToastUtils$a;-><init>()V

    invoke-static {v0}, Lcom/blankj/utilcode/util/y;->C(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static m(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "toast null"

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "toast nothing"

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static n()Lcom/blankj/utilcode/util/ToastUtils;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/ToastUtils;-><init>()V

    return-object v0
.end method

.method private static o(Lcom/blankj/utilcode/util/ToastUtils;)Lcom/blankj/utilcode/util/ToastUtils$e;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->j:Z

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lcom/blankj/utilcode/util/w;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/j;->b(Landroid/content/Context;)Landroidx/core/app/j;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/j;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 4
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$f;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ToastUtils$f;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/y;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$f;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ToastUtils$f;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    return-object v0

    .line 7
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ge v0, v1, :cond_2

    .line 8
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$g;

    const/16 v1, 0x7d5

    invoke-direct {v0, p0, v1}, Lcom/blankj/utilcode/util/ToastUtils$g;-><init>(Lcom/blankj/utilcode/util/ToastUtils;I)V

    return-object v0

    .line 9
    :cond_2
    invoke-static {}, Lcom/blankj/utilcode/util/y;->u()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_3

    .line 10
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$g;

    const/16 v1, 0x7f6

    invoke-direct {v0, p0, v1}, Lcom/blankj/utilcode/util/ToastUtils$g;-><init>(Lcom/blankj/utilcode/util/ToastUtils;I)V

    return-object v0

    .line 11
    :cond_3
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$g;

    const/16 v1, 0x7d2

    invoke-direct {v0, p0, v1}, Lcom/blankj/utilcode/util/ToastUtils$g;-><init>(Lcom/blankj/utilcode/util/ToastUtils;I)V

    return-object v0

    .line 12
    :cond_4
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$d;

    invoke-direct {v0, p0}, Lcom/blankj/utilcode/util/ToastUtils$d;-><init>(Lcom/blankj/utilcode/util/ToastUtils;)V

    return-object v0
.end method

.method private static p(Landroid/view/View;Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/blankj/utilcode/util/ToastUtils;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Argument \'utils\' of type ToastUtils (#3 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    .line 1
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$b;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/blankj/utilcode/util/ToastUtils$b;-><init>(Lcom/blankj/utilcode/util/ToastUtils;Landroid/view/View;Ljava/lang/CharSequence;I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/y;->C(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static q(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V
    .locals 1
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->m(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {v0, p0, p1, p2}, Lcom/blankj/utilcode/util/ToastUtils;->p(Landroid/view/View;Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method

.method public static r(Ljava/lang/CharSequence;)V
    .locals 2
    .param p0    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->k:Lcom/blankj/utilcode/util/ToastUtils;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/blankj/utilcode/util/ToastUtils;->q(Ljava/lang/CharSequence;ILcom/blankj/utilcode/util/ToastUtils;)V

    return-void
.end method

.method private s(Ljava/lang/CharSequence;)Landroid/view/View;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->a:Ljava/lang/String;

    const-string v1, "dark"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->a:Ljava/lang/String;

    const-string v6, "light"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/blankj/utilcode/util/ToastUtils;->i:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v0, v5

    if-nez v6, :cond_0

    aget-object v6, v0, v4

    if-nez v6, :cond_0

    aget-object v6, v0, v3

    if-nez v6, :cond_0

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    sget v0, Lcom/blankj/utilcode/R$layout;->utils_toast_view:I

    invoke-static {v0}, Lcom/blankj/utilcode/util/y;->y(I)Landroid/view/View;

    move-result-object v0

    const v6, 0x102000b

    .line 3
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 4
    iget-object v7, p0, Lcom/blankj/utilcode/util/ToastUtils;->a:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    const-string v7, "#BB000000"

    .line 6
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v1, -0x1

    .line 7
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    :cond_1
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->i:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v5

    if-eqz p1, :cond_2

    .line 10
    sget p1, Lcom/blankj/utilcode/R$id;->utvLeftIconView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 11
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->i:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v5

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->v0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 12
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->i:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v4

    if-eqz p1, :cond_3

    .line 14
    sget p1, Lcom/blankj/utilcode/R$id;->utvTopIconView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 15
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->i:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v4

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->v0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->i:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v3

    if-eqz p1, :cond_4

    .line 18
    sget p1, Lcom/blankj/utilcode/R$id;->utvRightIconView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 19
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->i:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v3

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->v0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 20
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 21
    :cond_4
    iget-object p1, p0, Lcom/blankj/utilcode/util/ToastUtils;->i:[Landroid/graphics/drawable/Drawable;

    aget-object p1, p1, v2

    if-eqz p1, :cond_5

    .line 22
    sget p1, Lcom/blankj/utilcode/R$id;->utvBottomIconView:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 23
    iget-object v1, p0, Lcom/blankj/utilcode/util/ToastUtils;->i:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v2

    invoke-static {p1, v1}, Landroidx/core/view/ViewCompat;->v0(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 24
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    return-object v0
.end method
