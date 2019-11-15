.class Lcom/afollestad/materialdialogs/a;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "DefaultRvAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afollestad/materialdialogs/a$a;,
        Lcom/afollestad/materialdialogs/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/afollestad/materialdialogs/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/afollestad/materialdialogs/MaterialDialog;

.field private final b:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private final c:Lcom/afollestad/materialdialogs/GravityEnum;

.field private d:Lcom/afollestad/materialdialogs/a$b;


# direct methods
.method constructor <init>(Lcom/afollestad/materialdialogs/MaterialDialog;I)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/LayoutRes;
        .end annotation
    .end param

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iput p2, p0, Lcom/afollestad/materialdialogs/a;->b:I

    iget-object v0, p1, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->f:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/a;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    return-void
.end method

.method static synthetic a(Lcom/afollestad/materialdialogs/a;)Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    move-object v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/afollestad/materialdialogs/a;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/GravityEnum;->a()I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/a;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/a;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->a:Lcom/afollestad/materialdialogs/GravityEnum;

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private a()Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/MaterialDialog;->b()Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/afollestad/materialdialogs/a;)Lcom/afollestad/materialdialogs/a$b;
    .locals 1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/a;->d:Lcom/afollestad/materialdialogs/a$b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/afollestad/materialdialogs/a$a;
    .locals 3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/afollestad/materialdialogs/a;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-virtual {v1}, Lcom/afollestad/materialdialogs/MaterialDialog;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afollestad/materialdialogs/a/a;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lcom/afollestad/materialdialogs/a$a;

    invoke-direct {v1, v0, p0}, Lcom/afollestad/materialdialogs/a$a;-><init>(Landroid/view/View;Lcom/afollestad/materialdialogs/a;)V

    return-object v1
.end method

.method public a(Lcom/afollestad/materialdialogs/a$a;I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v1, p1, Lcom/afollestad/materialdialogs/a$a;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v2, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v2, v2, Lcom/afollestad/materialdialogs/MaterialDialog$a;->Q:[Ljava/lang/Integer;

    invoke-static {v0, v2}, Lcom/afollestad/materialdialogs/a/a;->a(Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v0, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->ah:I

    const v2, 0x3ecccccd    # 0.4f

    invoke-static {v0, v2}, Lcom/afollestad/materialdialogs/a/a;->a(IF)I

    move-result v0

    move v2, v0

    :goto_0
    iget-object v5, p1, Lcom/afollestad/materialdialogs/a$a;->itemView:Landroid/view/View;

    if-nez v6, :cond_3

    move v0, v3

    :goto_1
    invoke-virtual {v5, v0}, Landroid/view/View;->setEnabled(Z)V

    sget-object v0, Lcom/afollestad/materialdialogs/a$1;->a:[I

    iget-object v5, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v5, v5, Lcom/afollestad/materialdialogs/MaterialDialog;->r:Lcom/afollestad/materialdialogs/MaterialDialog$ListType;

    invoke-virtual {v5}, Lcom/afollestad/materialdialogs/MaterialDialog$ListType;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    :goto_2
    iget-object v5, p1, Lcom/afollestad/materialdialogs/a$a;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/afollestad/materialdialogs/a$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v2, p1, Lcom/afollestad/materialdialogs/a$a;->b:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v5, v5, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v5, v5, Lcom/afollestad/materialdialogs/MaterialDialog$a;->S:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2, v5}, Lcom/afollestad/materialdialogs/MaterialDialog;->a(Landroid/widget/TextView;Landroid/graphics/Typeface;)V

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/afollestad/materialdialogs/a;->a(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->av:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->av:[I

    array-length v0, v0

    if-ge p2, v0, :cond_9

    iget-object v0, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->av:[I

    aget v0, v0, p2

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    :goto_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_a

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_4
    return-void

    :cond_2
    iget-object v0, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->ah:I

    move v2, v0

    goto/16 :goto_0

    :cond_3
    move v0, v4

    goto :goto_1

    :pswitch_0
    iget-object v0, p1, Lcom/afollestad/materialdialogs/a$a;->a:Landroid/widget/CompoundButton;

    check-cast v0, Landroid/widget/RadioButton;

    iget-object v5, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v5, v5, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget v5, v5, Lcom/afollestad/materialdialogs/MaterialDialog$a;->O:I

    if-ne v5, p2, :cond_4

    move v5, v3

    :goto_5
    iget-object v7, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog$a;->u:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog$a;->u:Landroid/content/res/ColorStateList;

    invoke-static {v0, v7}, Lcom/afollestad/materialdialogs/internal/c;->a(Landroid/widget/RadioButton;Landroid/content/res/ColorStateList;)V

    :goto_6
    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    if-nez v6, :cond_6

    move v5, v3

    :goto_7
    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_4
    move v5, v4

    goto :goto_5

    :cond_5
    iget-object v7, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog$a;->t:I

    invoke-static {v0, v7}, Lcom/afollestad/materialdialogs/internal/c;->a(Landroid/widget/RadioButton;I)V

    goto :goto_6

    :cond_6
    move v5, v4

    goto :goto_7

    :pswitch_1
    iget-object v0, p1, Lcom/afollestad/materialdialogs/a$a;->a:Landroid/widget/CompoundButton;

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v5, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v5, v5, Lcom/afollestad/materialdialogs/MaterialDialog;->s:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    iget-object v7, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog$a;->u:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog$a;->u:Landroid/content/res/ColorStateList;

    invoke-static {v0, v7}, Lcom/afollestad/materialdialogs/internal/c;->a(Landroid/widget/CheckBox;Landroid/content/res/ColorStateList;)V

    :goto_8
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-nez v6, :cond_8

    move v5, v3

    :goto_9
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_7
    iget-object v7, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget v7, v7, Lcom/afollestad/materialdialogs/MaterialDialog$a;->t:I

    invoke-static {v0, v7}, Lcom/afollestad/materialdialogs/internal/c;->a(Landroid/widget/CheckBox;I)V

    goto :goto_8

    :cond_8
    move v5, v4

    goto :goto_9

    :cond_9
    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/CompoundButton;

    if-eqz v0, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(Lcom/afollestad/materialdialogs/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/afollestad/materialdialogs/a;->d:Lcom/afollestad/materialdialogs/a$b;

    return-void
.end method

.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/a;->a:Lcom/afollestad/materialdialogs/MaterialDialog;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog;->b:Lcom/afollestad/materialdialogs/MaterialDialog$a;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/afollestad/materialdialogs/a$a;

    invoke-virtual {p0, p1, p2}, Lcom/afollestad/materialdialogs/a;->a(Lcom/afollestad/materialdialogs/a$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/afollestad/materialdialogs/a;->a(Landroid/view/ViewGroup;I)Lcom/afollestad/materialdialogs/a$a;

    move-result-object v0

    return-object v0
.end method
