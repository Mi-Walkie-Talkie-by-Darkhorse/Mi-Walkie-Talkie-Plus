.class public Lcom/ifengyu/intercom/lite/dialog/list/d;
.super Lcom/ifengyu/intercom/lite/c/a/a;
.source "ItemListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/lite/dialog/list/d$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/lite/c/a/a<",
        "Lcom/ifengyu/intercom/lite/dialog/list/d;",
        ">;"
    }
.end annotation


# instance fields
.field protected A:Ljava/lang/String;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ifengyu/intercom/lite/dialog/list/c;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
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

.field private w:Z

.field private x:I

.field private y:Z

.field private z:Lcom/ifengyu/intercom/lite/dialog/list/d$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/lite/dialog/list/d;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/c/a/a;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->y:Z

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->t:Ljava/util/List;

    .line 5
    iput-boolean p2, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->w:Z

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/dialog/list/d;)Lcom/ifengyu/intercom/lite/dialog/list/d$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->z:Lcom/ifengyu/intercom/lite/dialog/list/d$c;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3
    new-instance p2, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance v0, Lcom/ifengyu/intercom/lite/dialog/list/a;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->w:Z

    iget-boolean v2, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->y:Z

    invoke-direct {v0, v1, v2}, Lcom/ifengyu/intercom/lite/dialog/list/a;-><init>(ZZ)V

    .line 5
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 6
    new-instance v1, Lcom/ifengyu/intercom/lite/dialog/list/d$a;

    invoke-direct {v1, p0, p3}, Lcom/ifengyu/intercom/lite/dialog/list/d$a;-><init>(Lcom/ifengyu/intercom/lite/dialog/list/d;Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 7
    new-instance v1, Lcom/ifengyu/intercom/lite/dialog/list/b;

    invoke-direct {v1, p3}, Lcom/ifengyu/intercom/lite/dialog/list/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 8
    iget-object v1, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->u:Ljava/util/List;

    const/4 v2, -0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 9
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 11
    iget-object v6, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->u:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 12
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 13
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 14
    :cond_0
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    move-object v1, v4

    .line 15
    :cond_2
    iget-object v6, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->v:Ljava/util/List;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->u:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 16
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 18
    iget-object p3, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->v:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 19
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 20
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 21
    :cond_3
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 22
    :cond_4
    iget-object p3, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->t:Ljava/util/List;

    invoke-virtual {v0, v1, v4, p3}, Lcom/ifengyu/intercom/lite/dialog/list/a;->a(Landroid/view/View;Landroid/view/View;Ljava/util/List;)V

    .line 23
    new-instance p3, Lcom/ifengyu/intercom/lite/dialog/list/d$b;

    invoke-direct {p3, p0, p1}, Lcom/ifengyu/intercom/lite/dialog/list/d$b;-><init>(Lcom/ifengyu/intercom/lite/dialog/list/d;Lcom/qmuiteam/qmui/widget/dialog/b;)V

    invoke-virtual {v0, p3}, Lcom/ifengyu/intercom/lite/dialog/list/a;->setOnItemClickListener(Lcom/ifengyu/intercom/lite/dialog/list/a$b;)V

    .line 24
    iget p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->x:I

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/dialog/list/a;->a(I)V

    .line 25
    iget p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->x:I

    if-nez v1, :cond_5

    const/4 v5, 0x0

    :cond_5
    add-int/2addr p1, v5

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-object p2
.end method

.method public a(Lcom/ifengyu/intercom/lite/dialog/list/d$c;)Lcom/ifengyu/intercom/lite/dialog/list/d;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->z:Lcom/ifengyu/intercom/lite/dialog/list/d$c;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/dialog/list/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->t:Ljava/util/List;

    new-instance v1, Lcom/ifengyu/intercom/lite/dialog/list/c;

    invoke-direct {v1, p1, p1}, Lcom/ifengyu/intercom/lite/dialog/list/c;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method protected c(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/intercom/lite/dialog/list/d;->e()Z

    move-result p1

    const p2, 0x7f0700bd

    const v0, 0x7f09031e

    const v1, 0x7f04042a

    const v2, 0x7f040355

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p1, p3}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setId(I)V

    .line 8
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 10
    invoke-static {p3, v1}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/content/Context;I)I

    move-result v0

    .line 11
    invoke-virtual {p1, v3, v3, p2, v0}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->a(IIII)V

    .line 12
    invoke-static {p1, v2}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/widget/TextView;I)V

    .line 13
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->e()Lcom/qmuiteam/qmui/c/h;

    move-result-object p2

    const v0, 0x7f04042b

    .line 14
    invoke-static {p3, v0}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/qmuiteam/qmui/c/h;->d(Ljava/lang/String;)Lcom/qmuiteam/qmui/c/h;

    .line 15
    invoke-static {p3, v1}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/c/h;->b(Ljava/lang/String;)Lcom/qmuiteam/qmui/c/h;

    .line 16
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 17
    invoke-virtual {p2}, Lcom/qmuiteam/qmui/c/h;->d()V

    return-object p1

    .line 18
    :cond_0
    new-instance p1, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p1, p3}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setId(I)V

    .line 20
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    invoke-static {p1, v2}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/widget/TextView;I)V

    .line 22
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    invoke-virtual {p1, v0, v4, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 23
    new-instance v0, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {v0, p3}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-static {}, Lcom/qmuiteam/qmui/util/l;->a()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setId(I)V

    .line 25
    iget-object v4, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->A:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    invoke-static {v0, v2}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/widget/TextView;I)V

    const v2, 0x7f0600cf

    .line 27
    invoke-virtual {p3, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v2, 0xd

    .line 28
    invoke-static {p3, v2}, Lcom/qmuiteam/qmui/util/d;->a(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 29
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 30
    new-instance v2, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;

    invoke-direct {v2, p3}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 32
    invoke-static {p3, v1}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/content/Context;I)I

    move-result p3

    .line 33
    invoke-virtual {v2, v3, v3, p2, p3}, Lcom/qmuiteam/qmui/layout/QMUILinearLayout;->a(IIII)V

    const/4 p2, 0x1

    .line 34
    invoke-virtual {v2, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 35
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p3, -0x2

    const/4 v1, -0x1

    invoke-direct {p2, v1, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v2

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;)Lcom/ifengyu/intercom/lite/dialog/list/d;
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

    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->a()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f11028e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->A:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public c(Z)Lcom/ifengyu/intercom/lite/dialog/list/d;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->y:Z

    return-object p0
.end method

.method public d(I)Lcom/ifengyu/intercom/lite/dialog/list/d;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->x:I

    return-object p0
.end method

.method public d(Z)Lcom/ifengyu/intercom/lite/dialog/list/d;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->w:Z

    return-object p0
.end method

.method protected e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/dialog/list/d;->A:Ljava/lang/String;

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
