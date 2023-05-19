.class public Lcom/ifengyu/intercom/dialog/list/d;
.super Lcom/ifengyu/intercom/m/a/a;
.source "ItemListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/dialog/list/d$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/m/a/a<",
        "Lcom/ifengyu/intercom/dialog/list/d;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Lcom/ifengyu/intercom/dialog/list/d$c;

.field protected B:Ljava/lang/String;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/dialog/list/c;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/dialog/list/d;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/m/a/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/ifengyu/intercom/dialog/list/d;->z:Z

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/dialog/list/d;->u:Ljava/util/List;

    .line 5
    iput-boolean p2, p0, Lcom/ifengyu/intercom/dialog/list/d;->x:Z

    return-void
.end method

.method static synthetic E(Lcom/ifengyu/intercom/dialog/list/d;)Lcom/ifengyu/intercom/dialog/list/d$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/dialog/list/d;->A:Lcom/ifengyu/intercom/dialog/list/d$c;

    return-object p0
.end method


# virtual methods
.method public F(Ljava/lang/String;)Lcom/ifengyu/intercom/dialog/list/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/d;->u:Ljava/util/List;

    new-instance v1, Lcom/ifengyu/intercom/dialog/list/c;

    invoke-direct {v1, p1, p1}, Lcom/ifengyu/intercom/dialog/list/c;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected G()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/dialog/list/d;->B:Ljava/lang/String;

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

.method public H(I)Lcom/ifengyu/intercom/dialog/list/d;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/dialog/list/d;->y:I

    return-object p0
.end method

.method public I(Z)Lcom/ifengyu/intercom/dialog/list/d;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/dialog/list/d;->z:Z

    return-object p0
.end method

.method public J(Z)Lcom/ifengyu/intercom/dialog/list/d;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/dialog/list/d;->x:Z

    return-object p0
.end method

.method public K(Lcom/ifengyu/intercom/dialog/list/d$c;)Lcom/ifengyu/intercom/dialog/list/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/dialog/list/d;->A:Lcom/ifengyu/intercom/dialog/list/d$c;

    return-object p0
.end method

.method public L(Ljava/lang/String;)Lcom/ifengyu/intercom/dialog/list/d;
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->h()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f110325

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/dialog/list/d;->B:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method protected k(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/dialog/list/a;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/dialog/list/d;->x:Z

    iget-boolean v2, p0, Lcom/ifengyu/intercom/dialog/list/d;->z:Z

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/dialog/list/a;-><init>(ZZ)V

    .line 3
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 4
    new-instance v1, Lcom/ifengyu/intercom/dialog/list/d$a;

    invoke-direct {v1, p0, p3}, Lcom/ifengyu/intercom/dialog/list/d$a;-><init>(Lcom/ifengyu/intercom/dialog/list/d;Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 5
    new-instance v1, Lcom/ifengyu/intercom/dialog/list/b;

    invoke-direct {v1, p3}, Lcom/ifengyu/intercom/dialog/list/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/dialog/list/d;->v:Ljava/util/List;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 7
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 9
    iget-object v6, p0, Lcom/ifengyu/intercom/dialog/list/d;->v:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 10
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 11
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 12
    :cond_0
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    move-object v1, v4

    .line 13
    :cond_2
    iget-object v6, p0, Lcom/ifengyu/intercom/dialog/list/d;->w:Ljava/util/List;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/ifengyu/intercom/dialog/list/d;->v:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 14
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 16
    iget-object p3, p0, Lcom/ifengyu/intercom/dialog/list/d;->w:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 17
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 18
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    :cond_3
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 20
    :cond_4
    iget-object p3, p0, Lcom/ifengyu/intercom/dialog/list/d;->u:Ljava/util/List;

    invoke-virtual {v0, v1, v4, p3}, Lcom/ifengyu/intercom/dialog/list/a;->k(Landroid/view/View;Landroid/view/View;Ljava/util/List;)V

    .line 21
    new-instance p3, Lcom/ifengyu/intercom/dialog/list/d$b;

    invoke-direct {p3, p0, p1, v0}, Lcom/ifengyu/intercom/dialog/list/d$b;-><init>(Lcom/ifengyu/intercom/dialog/list/d;Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/ifengyu/intercom/dialog/list/a;)V

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/dialog/list/a;->setOnItemClickListener(Lcom/ifengyu/intercom/dialog/list/a$b;)V

    .line 22
    iget p1, p0, Lcom/ifengyu/intercom/dialog/list/d;->y:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/dialog/list/a;->j(I)V

    .line 23
    iget p1, p0, Lcom/ifengyu/intercom/dialog/list/d;->y:I

    if-nez v1, :cond_5

    const/4 v5, 0x0

    :cond_5
    add-int/2addr p1, v5

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-object p2
.end method

.method protected q(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/intercom/dialog/list/d;->G()Z

    move-result p1

    const p2, 0x7f0700b7

    const v0, 0x7f090382

    const v1, 0x7f04041b

    const v2, 0x7f040347

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p1, p3}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setId(I)V

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 7
    invoke-static {p3, v1}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v0

    .line 8
    invoke-virtual {p1, v3, v3, p2, v0}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->c(IIII)V

    .line 9
    invoke-static {p1, v2}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/widget/TextView;I)V

    .line 10
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->a()Lcom/qmuiteam/qmui/c/h;

    move-result-object p2

    const v0, 0x7f04041c

    .line 11
    invoke-static {p3, v0}, Lcom/qmuiteam/qmui/util/i;->k(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/qmuiteam/qmui/c/h;->x(Ljava/lang/String;)Lcom/qmuiteam/qmui/c/h;

    .line 12
    invoke-static {p3, v1}, Lcom/qmuiteam/qmui/util/i;->k(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/c/h;->h(Ljava/lang/String;)Lcom/qmuiteam/qmui/c/h;

    .line 13
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/c/e;->g(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 14
    invoke-virtual {p2}, Lcom/qmuiteam/qmui/c/h;->q()V

    return-object p1

    .line 15
    :cond_0
    new-instance p1, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p1, p3}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setId(I)V

    .line 17
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-static {p1, v2}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/widget/TextView;I)V

    .line 19
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    invoke-virtual {p1, v0, v4, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 20
    new-instance v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {v0, p3}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->b()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setId(I)V

    .line 22
    iget-object v4, p0, Lcom/ifengyu/intercom/dialog/list/d;->B:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-static {v0, v2}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/widget/TextView;I)V

    .line 24
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0600e0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0xd

    .line 25
    invoke-static {p3, v2}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 26
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 27
    new-instance v2, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-direct {v2, p3}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 29
    invoke-static {p3, v1}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result p3

    .line 30
    invoke-virtual {v2, v3, v3, p2, p3}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->d(IIII)V

    const/4 p2, 0x1

    .line 31
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 32
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x1

    const/4 v1, -0x2

    invoke-direct {p2, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 33
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
