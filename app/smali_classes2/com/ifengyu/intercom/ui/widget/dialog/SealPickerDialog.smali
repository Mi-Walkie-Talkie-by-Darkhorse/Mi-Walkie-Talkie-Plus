.class public Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;
.super Lcom/ifengyu/intercom/ui/widget/dialog/d;
.source "SealPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;
    }
.end annotation


# static fields
.field public static final d:[Ljava/lang/String;

.field public static final e:[Ljava/lang/String;

.field public static final f:[Ljava/lang/String;


# instance fields
.field private final a:[Ljava/lang/String;

.field private b:Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;

.field private c:Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;

.field mButtonNegative:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900af
    .end annotation
.end field

.field mButtonPositive:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900b1
    .end annotation
.end field

.field mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902e6
    .end annotation
.end field

.field mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902e7
    .end annotation
.end field

.field mTvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090499
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f030010

    .line 1
    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->d(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->d:[Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->e:[Ljava/lang/String;

    sput-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->e:[Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->f:[Ljava/lang/String;

    sput-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;-><init>(Landroid/content/Context;)V

    const v0, 0x7f030018

    .line 2
    invoke-static {v0}, Lcom/ifengyu/intercom/i/k0;->d(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->a:[Ljava/lang/String;

    const v0, 0x7f0c0089

    .line 3
    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->setContentView(I)V

    .line 4
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Dialog;)Lbutterknife/Unbinder;

    .line 5
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    .line 6
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mButtonNegative:Landroid/widget/TextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mButtonPositive:Landroid/widget/TextView;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/d;->a([Landroid/view/View;)V

    .line 7
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$a;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$a;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setOnValueChangedListener(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v1, Lcom/ifengyu/intercom/i/p;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setContentTextTypeface(Landroid/graphics/Typeface;)V

    .line 11
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v1, Lcom/ifengyu/intercom/i/p;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setHintTextTypeface(Landroid/graphics/Typeface;)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setValue(I)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v1, Lcom/ifengyu/intercom/i/p;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setContentTextTypeface(Landroid/graphics/Typeface;)V

    .line 15
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v1, Lcom/ifengyu/intercom/i/p;->c:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setHintTextTypeface(Landroid/graphics/Typeface;)V

    .line 16
    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "en"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 17
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->c(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setTextSizeSelected(I)V

    .line 18
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v0}, Lcom/ifengyu/intercom/i/c0;->c(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setTextSizeSelected(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(II)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;
    .locals 3

    const-string v0, "PickerDialog"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "TYPE_CSS_ANALOG"

    .line 1
    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setValue(I)V

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->f:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->f:[Ljava/lang/String;

    array-length p1, p1

    if-ge p2, p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setValue(I)V

    goto :goto_0

    :cond_1
    const-string v2, "TYPE_CSS_DIGITAL,normal"

    .line 6
    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setValue(I)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->e:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/String;)V

    .line 9
    sget-object p1, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->e:[Ljava/lang/String;

    array-length p1, p1

    if-ge p2, p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setValue(I)V

    goto :goto_0

    :cond_2
    const-string v2, "TYPE_CSS_NONE"

    .line 11
    invoke-static {v0, v2}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setValue(I)V

    .line 13
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->d:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/String;)V

    .line 14
    sget-object p1, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->d:[Ljava/lang/String;

    array-length p1, p1

    if-ge p2, p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setValue(I)V

    :cond_3
    :goto_0
    return-object p0
.end method

.method public a(ILcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 16
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mButtonNegative:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 17
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->c:Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;

    return-object p0
.end method

.method protected a(I)V
    .locals 13

    const v0, 0x7f0900af

    if-eq p1, v0, :cond_2

    const v0, 0x7f0900b1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->b:Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;

    if-eqz v1, :cond_1

    .line 19
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getValue()I

    move-result v3

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getContentByCurrValue()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getValue()I

    move-result v5

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getContentByCurrValue()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    invoke-interface/range {v1 .. v6}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;->a(Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;ILjava/lang/String;ILjava/lang/String;)V

    .line 20
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 21
    :cond_2
    iget-object v7, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->c:Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;

    if-eqz v7, :cond_3

    .line 22
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getValue()I

    move-result v9

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getContentByCurrValue()Ljava/lang/String;

    move-result-object v10

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getValue()I

    move-result v11

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getContentByCurrValue()Ljava/lang/String;

    move-result-object v12

    move-object v8, p0

    invoke-interface/range {v7 .. v12}, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;->a(Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;ILjava/lang/String;ILjava/lang/String;)V

    .line 23
    :cond_3
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void
.end method

.method public b(I)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-object p0
.end method

.method public b(ILcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;)Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->mButtonPositive:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog;->b:Lcom/ifengyu/intercom/ui/widget/dialog/SealPickerDialog$b;

    return-object p0
.end method
