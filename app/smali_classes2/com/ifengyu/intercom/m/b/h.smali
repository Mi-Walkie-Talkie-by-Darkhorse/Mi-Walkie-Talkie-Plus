.class public Lcom/ifengyu/intercom/m/b/h;
.super Lcom/ifengyu/intercom/m/a/a;
.source "PickerDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/m/b/h$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/m/a/a<",
        "Lcom/ifengyu/intercom/m/b/h;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Lcom/ifengyu/intercom/m/b/h$c;

.field private B:Lcom/ifengyu/intercom/m/b/h$c;

.field private u:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

.field private v:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

.field private w:[Ljava/lang/String;

.field private x:[[Ljava/lang/String;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/m/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic E(Lcom/ifengyu/intercom/m/b/h;)[[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/m/b/h;->x:[[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic F(Lcom/ifengyu/intercom/m/b/h;)Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/m/b/h;->v:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    return-object p0
.end method

.method static synthetic G(Lcom/ifengyu/intercom/m/b/h;)Lcom/ifengyu/intercom/m/b/h$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/m/b/h;->A:Lcom/ifengyu/intercom/m/b/h$c;

    return-object p0
.end method

.method static synthetic H(Lcom/ifengyu/intercom/m/b/h;)Lcom/ifengyu/intercom/m/b/h$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/m/b/h;->B:Lcom/ifengyu/intercom/m/b/h$c;

    return-object p0
.end method


# virtual methods
.method public I()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/m/b/h;->u:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getValue()I

    move-result v0

    return v0
.end method

.method public J()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/m/b/h;->v:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getContentByCurrValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public K()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/m/b/h;->v:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getValue()I

    move-result v0

    return v0
.end method

.method public L(I)Lcom/ifengyu/intercom/m/b/h;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/m/b/h;->y:I

    return-object p0
.end method

.method public M([Ljava/lang/String;)Lcom/ifengyu/intercom/m/b/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/m/b/h;->w:[Ljava/lang/String;

    return-object p0
.end method

.method public N(I)Lcom/ifengyu/intercom/m/b/h;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/m/b/h;->z:I

    return-object p0
.end method

.method public O([[Ljava/lang/String;)Lcom/ifengyu/intercom/m/b/h;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/m/b/h;->x:[[Ljava/lang/String;

    return-object p0
.end method

.method protected j(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/ifengyu/intercom/m/a/a;->j(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;Landroid/content/Context;)V

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/m/b/h;->w:[Ljava/lang/String;

    if-eqz p1, :cond_2

    array-length p2, p1

    if-lez p2, :cond_2

    .line 3
    iget-object p2, p0, Lcom/ifengyu/intercom/m/b/h;->u:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->P([Ljava/lang/String;)V

    .line 4
    iget p1, p0, Lcom/ifengyu/intercom/m/b/h;->y:I

    iget-object p2, p0, Lcom/ifengyu/intercom/m/b/h;->w:[Ljava/lang/String;

    array-length p2, p2

    const/4 p3, 0x0

    if-ge p1, p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/ifengyu/intercom/m/b/h;->u:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setValue(I)V

    .line 6
    iget p1, p0, Lcom/ifengyu/intercom/m/b/h;->y:I

    iget-object p2, p0, Lcom/ifengyu/intercom/m/b/h;->x:[[Ljava/lang/String;

    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 7
    aget-object p1, p2, p1

    .line 8
    iget-object p2, p0, Lcom/ifengyu/intercom/m/b/h;->v:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->P([Ljava/lang/String;)V

    .line 9
    iget p2, p0, Lcom/ifengyu/intercom/m/b/h;->z:I

    array-length p1, p1

    if-ge p2, p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/m/b/h;->v:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setValue(I)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/m/b/h;->v:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->P([Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/m/b/h;->u:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setValue(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected k(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c0153

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090348

    .line 2
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iput-object p3, p0, Lcom/ifengyu/intercom/m/b/h;->u:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    const p3, 0x7f090349

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iput-object p3, p0, Lcom/ifengyu/intercom/m/b/h;->v:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    .line 4
    iget-object p3, p0, Lcom/ifengyu/intercom/m/b/h;->u:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v0, Lcom/ifengyu/intercom/j/a;->a:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setContentTextTypeface(Landroid/graphics/Typeface;)V

    .line 5
    iget-object p3, p0, Lcom/ifengyu/intercom/m/b/h;->u:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p3, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setHintTextTypeface(Landroid/graphics/Typeface;)V

    .line 6
    iget-object p3, p0, Lcom/ifengyu/intercom/m/b/h;->v:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p3, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setContentTextTypeface(Landroid/graphics/Typeface;)V

    .line 7
    iget-object p3, p0, Lcom/ifengyu/intercom/m/b/h;->v:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p3, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setHintTextTypeface(Landroid/graphics/Typeface;)V

    .line 8
    iget-object p3, p0, Lcom/ifengyu/intercom/m/b/h;->u:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    new-instance v0, Lcom/ifengyu/intercom/m/b/h$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/m/b/h$a;-><init>(Lcom/ifengyu/intercom/m/b/h;Lcom/qmuiteam/qmui/widget/dialog/b;)V

    invoke-virtual {p3, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setOnValueChangedListener(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;)V

    .line 9
    iget-object p3, p0, Lcom/ifengyu/intercom/m/b/h;->v:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    new-instance v0, Lcom/ifengyu/intercom/m/b/h$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/m/b/h$b;-><init>(Lcom/ifengyu/intercom/m/b/h;Lcom/qmuiteam/qmui/widget/dialog/b;)V

    invoke-virtual {p3, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setOnValueChangedListener(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;)V

    return-object p2
.end method

.method protected q(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p1, p3}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;)V

    const p2, 0x7f090382

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setId(I)V

    .line 4
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    const v0, 0x7f04041b

    .line 5
    invoke-static {p3, v0}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {p1, v2, v2, p2, v1}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->c(IIII)V

    const p2, 0x7f040347

    .line 7
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/widget/TextView;I)V

    .line 8
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->a()Lcom/qmuiteam/qmui/c/h;

    move-result-object p2

    const v1, 0x7f04041c

    .line 9
    invoke-static {p3, v1}, Lcom/qmuiteam/qmui/util/i;->k(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/qmuiteam/qmui/c/h;->x(Ljava/lang/String;)Lcom/qmuiteam/qmui/c/h;

    .line 10
    invoke-static {p3, v0}, Lcom/qmuiteam/qmui/util/i;->k(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/c/h;->h(Ljava/lang/String;)Lcom/qmuiteam/qmui/c/h;

    .line 11
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/c/e;->g(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 12
    invoke-virtual {p2}, Lcom/qmuiteam/qmui/c/h;->q()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
