.class public Lcom/ifengyu/intercom/lite/c/b/f;
.super Lcom/ifengyu/intercom/lite/c/a/a;
.source "PickerDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/lite/c/b/f$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/lite/c/a/a<",
        "Lcom/ifengyu/intercom/lite/c/b/f;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Lcom/ifengyu/intercom/lite/c/b/f$c;

.field private t:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

.field private u:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

.field private v:[Ljava/lang/String;

.field private w:[[Ljava/lang/String;

.field private x:I

.field private y:I

.field private z:Lcom/ifengyu/intercom/lite/c/b/f$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/lite/c/a/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/lite/c/b/f;)[[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/lite/c/b/f;->w:[[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/lite/c/b/f;)Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/lite/c/b/f;->u:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    return-object p0
.end method

.method static synthetic c(Lcom/ifengyu/intercom/lite/c/b/f;)Lcom/ifengyu/intercom/lite/c/b/f$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/lite/c/b/f;->z:Lcom/ifengyu/intercom/lite/c/b/f$c;

    return-object p0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/lite/c/b/f;)Lcom/ifengyu/intercom/lite/c/b/f$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ifengyu/intercom/lite/c/b/f;->A:Lcom/ifengyu/intercom/lite/c/b/f$c;

    return-object p0
.end method


# virtual methods
.method protected a(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c0129

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0902e4

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iput-object p3, p0, Lcom/ifengyu/intercom/lite/c/b/f;->t:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    const p3, 0x7f0902e5

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iput-object p3, p0, Lcom/ifengyu/intercom/lite/c/b/f;->u:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    .line 7
    iget-object p3, p0, Lcom/ifengyu/intercom/lite/c/b/f;->t:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v0, Lcom/ifengyu/intercom/i/p;->c:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setContentTextTypeface(Landroid/graphics/Typeface;)V

    .line 8
    iget-object p3, p0, Lcom/ifengyu/intercom/lite/c/b/f;->t:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v0, Lcom/ifengyu/intercom/i/p;->c:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setHintTextTypeface(Landroid/graphics/Typeface;)V

    .line 9
    iget-object p3, p0, Lcom/ifengyu/intercom/lite/c/b/f;->u:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v0, Lcom/ifengyu/intercom/i/p;->c:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setContentTextTypeface(Landroid/graphics/Typeface;)V

    .line 10
    iget-object p3, p0, Lcom/ifengyu/intercom/lite/c/b/f;->u:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v0, Lcom/ifengyu/intercom/i/p;->c:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setHintTextTypeface(Landroid/graphics/Typeface;)V

    .line 11
    iget-object p3, p0, Lcom/ifengyu/intercom/lite/c/b/f;->t:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/f$a;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/c/b/f$a;-><init>(Lcom/ifengyu/intercom/lite/c/b/f;Lcom/qmuiteam/qmui/widget/dialog/b;)V

    invoke-virtual {p3, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setOnValueChangedListener(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;)V

    .line 12
    iget-object p3, p0, Lcom/ifengyu/intercom/lite/c/b/f;->u:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    new-instance v0, Lcom/ifengyu/intercom/lite/c/b/f$b;

    invoke-direct {v0, p0, p1}, Lcom/ifengyu/intercom/lite/c/b/f$b;-><init>(Lcom/ifengyu/intercom/lite/c/b/f;Lcom/qmuiteam/qmui/widget/dialog/b;)V

    invoke-virtual {p3, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setOnValueChangedListener(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;)V

    return-object p2
.end method

.method public a([Ljava/lang/String;)Lcom/ifengyu/intercom/lite/c/b/f;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/f;->v:[Ljava/lang/String;

    return-object p0
.end method

.method public a([[Ljava/lang/String;)Lcom/ifengyu/intercom/lite/c/b/f;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/f;->w:[[Ljava/lang/String;

    return-object p0
.end method

.method protected a(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;Landroid/content/Context;)V
    .locals 1

    .line 13
    invoke-super {p0, p1, p2, p3}, Lcom/ifengyu/intercom/lite/c/a/a;->a(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogRootLayout;Landroid/content/Context;)V

    .line 14
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/f;->v:[Ljava/lang/String;

    if-eqz p1, :cond_2

    array-length p2, p1

    if-lez p2, :cond_2

    .line 15
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/f;->t:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/String;)V

    .line 16
    iget p1, p0, Lcom/ifengyu/intercom/lite/c/b/f;->x:I

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/f;->v:[Ljava/lang/String;

    array-length p2, p2

    const/4 p3, 0x0

    if-ge p1, p2, :cond_1

    .line 17
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/f;->t:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setValue(I)V

    .line 18
    iget p1, p0, Lcom/ifengyu/intercom/lite/c/b/f;->x:I

    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/f;->w:[[Ljava/lang/String;

    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 19
    aget-object p1, p2, p1

    .line 20
    iget-object p2, p0, Lcom/ifengyu/intercom/lite/c/b/f;->u:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p2, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/String;)V

    .line 21
    iget p2, p0, Lcom/ifengyu/intercom/lite/c/b/f;->y:I

    array-length p1, p1

    if-ge p2, p1, :cond_2

    .line 22
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/f;->u:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setValue(I)V

    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/f;->u:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/lite/c/b/f;->t:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p1, p3}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setValue(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected c(Lcom/qmuiteam/qmui/widget/dialog/b;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogView;Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;

    invoke-direct {p1, p3}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;-><init>(Landroid/content/Context;)V

    const p2, 0x7f09031e

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setId(I)V

    .line 5
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogBuilder;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x1

    const v0, 0x7f04042a

    .line 6
    invoke-static {p3, v0}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v2, v2, p2, v1}, Lcom/qmuiteam/qmui/widget/textview/QMUISpanTouchFixTextView;->a(IIII)V

    const p2, 0x7f040355

    .line 8
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->a(Landroid/widget/TextView;I)V

    .line 9
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->e()Lcom/qmuiteam/qmui/c/h;

    move-result-object p2

    const v1, 0x7f04042b

    .line 10
    invoke-static {p3, v1}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/qmuiteam/qmui/c/h;->d(Ljava/lang/String;)Lcom/qmuiteam/qmui/c/h;

    .line 11
    invoke-static {p3, v0}, Lcom/qmuiteam/qmui/util/i;->e(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/qmuiteam/qmui/c/h;->b(Ljava/lang/String;)Lcom/qmuiteam/qmui/c/h;

    .line 12
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 13
    invoke-virtual {p2}, Lcom/qmuiteam/qmui/c/h;->d()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(I)Lcom/ifengyu/intercom/lite/c/b/f;
    .locals 0

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/lite/c/b/f;->x:I

    return-object p0
.end method

.method public e()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/f;->t:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getValue()I

    move-result v0

    return v0
.end method

.method public e(I)Lcom/ifengyu/intercom/lite/c/b/f;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/lite/c/b/f;->y:I

    return-object p0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/f;->u:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getContentByCurrValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/lite/c/b/f;->u:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getValue()I

    move-result v0

    return v0
.end method
