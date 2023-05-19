.class public Lcom/zhihu/matisse/internal/ui/widget/a;
.super Ljava/lang/Object;
.source "AlbumsSpinner.java"


# instance fields
.field private a:Landroid/widget/CursorAdapter;

.field private b:Landroid/widget/TextView;

.field private c:Landroidx/appcompat/widget/ListPopupWindow;

.field private d:Landroid/widget/AdapterView$OnItemSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroidx/appcompat/widget/ListPopupWindow;

    sget v1, Lcom/zhihu/matisse/R$attr;->listPopupWindowStyle:I

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Landroidx/appcompat/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->c:Landroidx/appcompat/widget/ListPopupWindow;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->J(Z)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 5
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->c:Landroidx/appcompat/widget/ListPopupWindow;

    const/high16 v1, 0x43580000    # 216.0f

    mul-float v1, v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->E(I)V

    .line 6
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->c:Landroidx/appcompat/widget/ListPopupWindow;

    const/high16 v1, 0x41800000    # 16.0f

    mul-float v1, v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ListPopupWindow;->d(I)V

    .line 7
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->c:Landroidx/appcompat/widget/ListPopupWindow;

    const/high16 v1, -0x3dc00000    # -48.0f

    mul-float p1, p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->j(I)V

    .line 8
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->c:Landroidx/appcompat/widget/ListPopupWindow;

    new-instance v0, Lcom/zhihu/matisse/internal/ui/widget/a$a;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/internal/ui/widget/a$a;-><init>(Lcom/zhihu/matisse/internal/ui/widget/a;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/zhihu/matisse/internal/ui/widget/a;Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/zhihu/matisse/internal/ui/widget/a;->e(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic b(Lcom/zhihu/matisse/internal/ui/widget/a;)Landroid/widget/AdapterView$OnItemSelectedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->d:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-object p0
.end method

.method static synthetic c(Lcom/zhihu/matisse/internal/ui/widget/a;)Landroid/widget/CursorAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->a:Landroid/widget/CursorAdapter;

    return-object p0
.end method

.method static synthetic d(Lcom/zhihu/matisse/internal/ui/widget/a;)Landroidx/appcompat/widget/ListPopupWindow;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->c:Landroidx/appcompat/widget/ListPopupWindow;

    return-object p0
.end method

.method private e(Landroid/content/Context;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->c:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ListPopupWindow;->dismiss()V

    .line 2
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->a:Landroid/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3
    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4
    invoke-static {v0}, Lcom/zhihu/matisse/internal/entity/Album;->h(Landroid/database/Cursor;)Lcom/zhihu/matisse/internal/entity/Album;

    move-result-object p2

    .line 5
    invoke-virtual {p2, p1}, Lcom/zhihu/matisse/internal/entity/Album;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Lcom/zhihu/matisse/d/c/e;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->b:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 10
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p2, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->b:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0002

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public f(Landroid/widget/CursorAdapter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->c:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->n(Landroid/widget/ListAdapter;)V

    .line 2
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->a:Landroid/widget/CursorAdapter;

    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->c:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->C(Landroid/view/View;)V

    return-void
.end method

.method public h(Landroid/widget/TextView;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->b:Landroid/widget/TextView;

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x2

    .line 3
    aget-object p1, p1, v0

    .line 4
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    sget v2, Lcom/zhihu/matisse/R$attr;->album_element_color:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 8
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->b:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->b:Landroid/widget/TextView;

    new-instance v0, Lcom/zhihu/matisse/internal/ui/widget/a$b;

    invoke-direct {v0, p0}, Lcom/zhihu/matisse/internal/ui/widget/a$b;-><init>(Lcom/zhihu/matisse/internal/ui/widget/a;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->c:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ListPopupWindow;->q(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public i(Landroid/content/Context;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->c:Landroidx/appcompat/widget/ListPopupWindow;

    invoke-virtual {v0, p2}, Landroidx/appcompat/widget/ListPopupWindow;->N(I)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/zhihu/matisse/internal/ui/widget/a;->e(Landroid/content/Context;I)V

    return-void
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zhihu/matisse/internal/ui/widget/a;->d:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method
