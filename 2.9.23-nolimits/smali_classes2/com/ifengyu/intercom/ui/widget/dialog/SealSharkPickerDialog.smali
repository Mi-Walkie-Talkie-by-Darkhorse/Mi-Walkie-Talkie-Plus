.class public Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;
.super Lcom/ifengyu/intercom/ui/widget/dialog/b;
.source "SealSharkPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog$a;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:[Ljava/lang/String;

.field public static final c:[Ljava/lang/String;


# instance fields
.field private final d:[Ljava/lang/String;

.field private e:Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog$a;

.field private f:Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog$a;

.field mButtonNegative:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001dd
    .end annotation
.end field

.field mButtonPositive:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001de
    .end annotation
.end field

.field mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100204
    .end annotation
.end field

.field mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f100205
    .end annotation
.end field

.field mTvTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/BindView;
        value = 0x7f1001b2
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const v0, 0x7f0a000a

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->b(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->a:[Ljava/lang/String;

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->b:[Ljava/lang/String;

    sput-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->b:[Ljava/lang/String;

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/PickerDialog;->c:[Ljava/lang/String;

    sput-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/ifengyu/intercom/ui/baseui/BaseActivity;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/b;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0a000b

    invoke-static {v0}, Lcom/ifengyu/intercom/b/ad;->b(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->d:[Ljava/lang/String;

    const v0, 0x7f040083

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->setContentView(I)V

    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Dialog;)Lbutterknife/Unbinder;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->a(Landroid/app/Activity;)V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mButtonNegative:Landroid/widget/TextView;

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mButtonPositive:Landroid/widget/TextView;

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->a([Landroid/view/View;)V

    invoke-virtual {p0, v4}, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    new-instance v1, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog$1;

    invoke-direct {v1, p0}, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog$1;-><init>(Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;)V

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setOnValueChangedListener(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$b;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->d:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v1, Lcom/ifengyu/intercom/b/l;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setContentTextTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v1, Lcom/ifengyu/intercom/b/l;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setHintTextTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v0, v3}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setValue(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v1, Lcom/ifengyu/intercom/b/l;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setContentTextTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v1, Lcom/ifengyu/intercom/b/l;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setHintTextTypeface(Landroid/graphics/Typeface;)V

    const-string v0, "zh"

    invoke-virtual {p1}, Lcom/ifengyu/intercom/ui/baseui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->c(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setTextSizeSelected(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-static {v2}, Lcom/ifengyu/intercom/b/v;->c(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setTextSizeSelected(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(II)Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object p0

    :pswitch_0
    const-string v0, "PickerDialog"

    const-string v1, "TYPE_CSS_NONE"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setValue(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/String;)V

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->a:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setValue(I)V

    goto :goto_0

    :pswitch_1
    const-string v0, "PickerDialog"

    const-string v1, "TYPE_CSS_DIGITAL,normal"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setValue(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/String;)V

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->b:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setValue(I)V

    goto :goto_0

    :pswitch_2
    const-string v0, "PickerDialog"

    const-string v1, "TYPE_CSS_ANALOG"

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setValue(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->c:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/String;)V

    sget-object v0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->c:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setValue(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(ILcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog$a;)Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mButtonNegative:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->f:Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog$a;

    return-object p0
.end method

.method protected a(I)V
    .locals 6

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->f:Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->f:Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog$a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getValue()I

    move-result v2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getContentByCurrValue()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getValue()I

    move-result v4

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getContentByCurrValue()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog$a;->a(Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;ILjava/lang/String;ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->dismiss()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->e:Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->e:Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog$a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getValue()I

    move-result v2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp1:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getContentByCurrValue()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getValue()I

    move-result v4

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mNp2:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getContentByCurrValue()Ljava/lang/String;

    move-result-object v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog$a;->a(Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;ILjava/lang/String;ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->dismiss()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f1001dd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(I)Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mTvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-object p0
.end method

.method public b(ILcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog$a;)Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->mButtonPositive:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog;->e:Lcom/ifengyu/intercom/ui/widget/dialog/SealSharkPickerDialog$a;

    return-object p0
.end method
