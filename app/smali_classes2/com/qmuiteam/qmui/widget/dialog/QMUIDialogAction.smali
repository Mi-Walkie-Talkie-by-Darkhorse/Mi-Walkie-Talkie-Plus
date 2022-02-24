.class public Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;
.super Ljava/lang/Object;
.source "QMUIDialogAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;,
        Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$Prop;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;

.field private i:Lcom/qmuiteam/qmui/layout/QMUIButton;

.field private j:Z


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;-><init>(Ljava/lang/CharSequence;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)V
    .locals 2
    .param p2    # Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->b:I

    const/4 v1, 0x1

    .line 4
    iput v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->c:I

    .line 5
    iput v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->d:I

    .line 6
    iput v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->e:I

    .line 7
    iput v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->f:I

    .line 8
    sget v0, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_dialog_action_divider_color:I

    iput v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->g:I

    .line 9
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->j:Z

    .line 10
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->a:Ljava/lang/CharSequence;

    .line 11
    iput-object p2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->h:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/CharSequence;IIII)Lcom/qmuiteam/qmui/layout/QMUIButton;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 7
    new-instance v7, Lcom/qmuiteam/qmui/layout/QMUIButton;

    invoke-direct {v7, v1}, Lcom/qmuiteam/qmui/layout/QMUIButton;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v7, v3}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    .line 9
    invoke-virtual {v7, v4}, Landroid/widget/Button;->setMinHeight(I)V

    .line 10
    invoke-virtual {v7, v4}, Landroid/widget/Button;->setMinimumHeight(I)V

    const/4 v8, 0x1

    .line 11
    invoke-virtual {v7, v8}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenDisable(Z)V

    .line 12
    invoke-virtual {v7, v8}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setChangeAlphaWhenPress(Z)V

    .line 13
    sget-object v5, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionStyleDef:[I

    sget v6, Lcom/qmuiteam/qmui/R$attr;->qmui_dialog_action_style:I

    invoke-virtual {v1, v3, v5, v6, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 14
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    move-object v12, v3

    move-object v13, v12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v10, v6, :cond_a

    .line 15
    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v14

    .line 16
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionStyleDef_android_gravity:I

    const/4 v8, -0x1

    if-ne v14, v15, :cond_0

    .line 17
    invoke-virtual {v5, v14, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setGravity(I)V

    goto :goto_1

    .line 18
    :cond_0
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionStyleDef_android_textColor:I

    if-ne v14, v15, :cond_1

    .line 19
    invoke-virtual {v5, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 20
    :cond_1
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionStyleDef_android_textSize:I

    if-ne v14, v15, :cond_2

    .line 21
    invoke-virtual {v5, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v4, v8}, Landroidx/appcompat/widget/AppCompatButton;->setTextSize(IF)V

    goto :goto_1

    .line 22
    :cond_2
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionStyleDef_qmui_dialog_action_button_padding_horizontal:I

    if-ne v14, v15, :cond_3

    .line 23
    invoke-virtual {v5, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v11

    goto :goto_1

    .line 24
    :cond_3
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionStyleDef_android_background:I

    if-ne v14, v15, :cond_4

    .line 25
    invoke-virtual {v5, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 26
    :cond_4
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionStyleDef_android_minWidth:I

    if-ne v14, v15, :cond_5

    .line 27
    invoke-virtual {v5, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 28
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setMinWidth(I)V

    .line 29
    invoke-virtual {v7, v8}, Landroid/widget/Button;->setMinimumWidth(I)V

    goto :goto_1

    .line 30
    :cond_5
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionStyleDef_qmui_dialog_positive_action_text_color:I

    if-ne v14, v15, :cond_6

    .line 31
    invoke-virtual {v5, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    goto :goto_1

    .line 32
    :cond_6
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionStyleDef_qmui_dialog_negative_action_text_color:I

    if-ne v14, v15, :cond_7

    .line 33
    invoke-virtual {v5, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v12

    goto :goto_1

    .line 34
    :cond_7
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUIDialogActionStyleDef_qmui_dialog_action_icon_space:I

    if-ne v14, v15, :cond_8

    .line 35
    invoke-virtual {v5, v14, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    goto :goto_1

    .line 36
    :cond_8
    sget v15, Lcom/qmuiteam/qmui/R$styleable;->QMUITextCommonStyleDef_android_textStyle:I

    if-ne v14, v15, :cond_9

    .line 37
    invoke-virtual {v5, v14, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 38
    invoke-virtual {v7, v3, v8}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_9
    :goto_1
    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x1

    goto :goto_0

    .line 39
    :cond_a
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 40
    invoke-virtual {v7, v11, v4, v11, v4}, Landroid/widget/Button;->setPadding(IIII)V

    if-gtz v2, :cond_b

    move-object/from16 v3, p2

    .line 41
    invoke-virtual {v7, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_b
    move-object/from16 v3, p2

    const/4 v4, 0x1

    .line 42
    invoke-static {v1, v2}, Landroidx/core/content/b;->c(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move v1, v4

    move v2, v9

    move-object v4, v5

    move/from16 v5, p6

    move-object v6, v7

    .line 43
    invoke-static/range {v1 .. v6}, Lcom/qmuiteam/qmui/util/j;->a(ZILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;ILandroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    const/4 v1, 0x1

    .line 44
    invoke-virtual {v7, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 45
    iget-boolean v1, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->j:Z

    invoke-virtual {v7, v1}, Lcom/qmuiteam/qmui/alpha/QMUIAlphaButton;->setEnabled(Z)V

    .line 46
    iget v1, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->c:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 47
    invoke-virtual {v7, v12}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-nez p5, :cond_e

    .line 48
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_dialog_negative_action_text_color:I

    goto :goto_3

    :cond_c
    if-nez v1, :cond_d

    .line 49
    invoke-virtual {v7, v13}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    if-nez p5, :cond_e

    .line 50
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_dialog_positive_action_text_color:I

    goto :goto_3

    :cond_d
    if-nez p5, :cond_e

    .line 51
    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_dialog_action_text_color:I

    goto :goto_3

    :cond_e
    move/from16 v1, p5

    .line 52
    :goto_3
    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->e()Lcom/qmuiteam/qmui/c/h;

    move-result-object v2

    if-nez p4, :cond_f

    .line 53
    sget v3, Lcom/qmuiteam/qmui/R$attr;->qmui_skin_support_dialog_action_bg:I

    goto :goto_4

    :cond_f
    move/from16 v3, p4

    .line 54
    :goto_4
    invoke-virtual {v2, v3}, Lcom/qmuiteam/qmui/c/h;->b(I)Lcom/qmuiteam/qmui/c/h;

    .line 55
    invoke-virtual {v2, v1}, Lcom/qmuiteam/qmui/c/h;->n(I)Lcom/qmuiteam/qmui/c/h;

    .line 56
    iget v1, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->g:I

    if-eqz v1, :cond_10

    .line 57
    invoke-virtual {v2, v1}, Lcom/qmuiteam/qmui/c/h;->u(I)Lcom/qmuiteam/qmui/c/h;

    .line 58
    iget v1, v0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->g:I

    invoke-virtual {v2, v1}, Lcom/qmuiteam/qmui/c/h;->g(I)Lcom/qmuiteam/qmui/c/h;

    .line 59
    :cond_10
    invoke-static {v7, v2}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    .line 60
    invoke-virtual {v2}, Lcom/qmuiteam/qmui/c/h;->d()V

    return-object v7
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->h:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;

    return-object p0
.end method

.method static synthetic b(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;)Lcom/qmuiteam/qmui/layout/QMUIButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->i:Lcom/qmuiteam/qmui/layout/QMUIButton;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/qmuiteam/qmui/widget/dialog/b;I)Lcom/qmuiteam/qmui/layout/QMUIButton;
    .locals 7

    .line 4
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->a:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->b:I

    iget v4, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->e:I

    iget v5, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->d:I

    iget v6, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->f:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->a(Landroid/content/Context;Ljava/lang/CharSequence;IIII)Lcom/qmuiteam/qmui/layout/QMUIButton;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->i:Lcom/qmuiteam/qmui/layout/QMUIButton;

    .line 5
    new-instance v1, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$a;-><init>(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;Lcom/qmuiteam/qmui/widget/dialog/b;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->i:Lcom/qmuiteam/qmui/layout/QMUIButton;

    return-object p1
.end method

.method public a(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;
    .locals 0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->b:I

    return-object p0
.end method

.method public a(Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->h:Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction$b;

    return-object p0
.end method

.method public b(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;
    .locals 0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->c:I

    return-object p0
.end method

.method c(I)Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/widget/dialog/QMUIDialogAction;->g:I

    return-object p0
.end method
