.class public Lcom/qmuiteam/qmui/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field private static final d:[Ljava/lang/String;

.field private static final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/res/Resources$Theme;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "android.widget."

    const-string v1, "android.webkit."

    const-string v2, "android.app."

    const-string v3, "android.view."

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qmuiteam/qmui/c/f;->d:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qmuiteam/qmui/c/f;->e:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/LayoutInflater;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/c/f;->b:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/qmuiteam/qmui/c/f;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/qmuiteam/qmui/c/h;)V
    .locals 7
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/qmuiteam/qmui/c/f;->a:Landroid/content/res/Resources$Theme;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lcom/qmuiteam/qmui/c/f;->a:Landroid/content/res/Resources$Theme;

    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/c/f;->a:Landroid/content/res/Resources$Theme;

    sget-object v1, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    :goto_0
    if-ge v2, v0, :cond_1a

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qmuiteam/qmui/util/g;->a(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "attr"

    invoke-virtual {v4, v3, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_1

    :cond_3
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_background:I

    if-ne v1, v4, :cond_4

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->b(I)Lcom/qmuiteam/qmui/c/h;

    goto/16 :goto_1

    :cond_4
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_alpha:I

    if-ne v1, v4, :cond_5

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->a(I)Lcom/qmuiteam/qmui/c/h;

    goto/16 :goto_1

    :cond_5
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_border:I

    if-ne v1, v4, :cond_6

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->d(I)Lcom/qmuiteam/qmui/c/h;

    goto/16 :goto_1

    :cond_6
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_text_color:I

    if-ne v1, v4, :cond_7

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->n(I)Lcom/qmuiteam/qmui/c/h;

    goto/16 :goto_1

    :cond_7
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_second_text_color:I

    if-ne v1, v4, :cond_8

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->l(I)Lcom/qmuiteam/qmui/c/h;

    goto/16 :goto_1

    :cond_8
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_src:I

    if-ne v1, v4, :cond_9

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->m(I)Lcom/qmuiteam/qmui/c/h;

    goto/16 :goto_1

    :cond_9
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_tint_color:I

    if-ne v1, v4, :cond_a

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->t(I)Lcom/qmuiteam/qmui/c/h;

    goto/16 :goto_1

    :cond_a
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_separator_top:I

    if-ne v1, v4, :cond_b

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->u(I)Lcom/qmuiteam/qmui/c/h;

    goto/16 :goto_1

    :cond_b
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_separator_right:I

    if-ne v1, v4, :cond_c

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->k(I)Lcom/qmuiteam/qmui/c/h;

    goto/16 :goto_1

    :cond_c
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_separator_bottom:I

    if-ne v1, v4, :cond_d

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->e(I)Lcom/qmuiteam/qmui/c/h;

    goto/16 :goto_1

    :cond_d
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_separator_left:I

    if-ne v1, v4, :cond_e

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->g(I)Lcom/qmuiteam/qmui/c/h;

    goto :goto_1

    :cond_e
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_bg_tint_color:I

    if-ne v1, v4, :cond_f

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->c(I)Lcom/qmuiteam/qmui/c/h;

    goto :goto_1

    :cond_f
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_progress_color:I

    if-ne v1, v4, :cond_10

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->j(I)Lcom/qmuiteam/qmui/c/h;

    goto :goto_1

    :cond_10
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_underline:I

    if-ne v1, v4, :cond_11

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->v(I)Lcom/qmuiteam/qmui/c/h;

    goto :goto_1

    :cond_11
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_more_bg_color:I

    if-ne v1, v4, :cond_12

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->h(I)Lcom/qmuiteam/qmui/c/h;

    goto :goto_1

    :cond_12
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_more_text_color:I

    if-ne v1, v4, :cond_13

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->i(I)Lcom/qmuiteam/qmui/c/h;

    goto :goto_1

    :cond_13
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_hint_color:I

    if-ne v1, v4, :cond_14

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->f(I)Lcom/qmuiteam/qmui/c/h;

    goto :goto_1

    :cond_14
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_text_compound_tint_color:I

    if-ne v1, v4, :cond_15

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->r(I)Lcom/qmuiteam/qmui/c/h;

    goto :goto_1

    :cond_15
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_text_compound_src_left:I

    if-ne v1, v4, :cond_16

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->p(I)Lcom/qmuiteam/qmui/c/h;

    goto :goto_1

    :cond_16
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_text_compound_src_top:I

    if-ne v1, v4, :cond_17

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->s(I)Lcom/qmuiteam/qmui/c/h;

    goto :goto_1

    :cond_17
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_text_compound_src_right:I

    if-ne v1, v4, :cond_18

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->q(I)Lcom/qmuiteam/qmui/c/h;

    goto :goto_1

    :cond_18
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUISkinDef_qmui_skin_text_compound_src_bottom:I

    if-ne v1, v4, :cond_19

    invoke-virtual {p3, v3}, Lcom/qmuiteam/qmui/c/h;->o(I)Lcom/qmuiteam/qmui/c/h;

    :cond_19
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1a
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/qmuiteam/qmui/c/f;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/appcompat/app/AppCompatDelegate;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/qmuiteam/qmui/c/f;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget-object v1, Lcom/qmuiteam/qmui/c/f;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p3, p2, v1, p4}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    goto :goto_2

    :cond_1
    sget-object p3, Lcom/qmuiteam/qmui/c/f;->d:[Ljava/lang/String;

    array-length v1, p3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, p3, v2

    iget-object v4, p0, Lcom/qmuiteam/qmui/c/f;->c:Landroid/view/LayoutInflater;

    invoke-virtual {v4, p2, v3, p4}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p3, Lcom/qmuiteam/qmui/c/f;->e:Ljava/util/HashMap;

    invoke-virtual {p3, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/qmuiteam/qmui/c/f;->c:Landroid/view/LayoutInflater;

    invoke-virtual {p3, p2, v2, p4}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to inflate view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; error: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/Object;

    const-string v0, "QMUISkin"

    invoke-static {v0, p2, p3}, Lcom/qmuiteam/qmui/b;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    nop

    :cond_4
    :goto_2
    if-eqz p1, :cond_6

    invoke-static {}, Lcom/qmuiteam/qmui/c/h;->e()Lcom/qmuiteam/qmui/c/h;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p0, p3, p4, p2}, Lcom/qmuiteam/qmui/c/f;->a(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/qmuiteam/qmui/c/h;)V

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/c/h;->c()Z

    move-result p3

    if-nez p3, :cond_5

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;Lcom/qmuiteam/qmui/c/h;)V

    :cond_5
    invoke-static {p2}, Lcom/qmuiteam/qmui/c/h;->a(Lcom/qmuiteam/qmui/c/h;)V

    :cond_6
    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/qmuiteam/qmui/c/f;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
