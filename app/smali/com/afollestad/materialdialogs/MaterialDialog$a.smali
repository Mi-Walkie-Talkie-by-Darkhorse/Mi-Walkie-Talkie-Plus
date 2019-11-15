.class public Lcom/afollestad/materialdialogs/MaterialDialog$a;
.super Ljava/lang/Object;
.source "MaterialDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/MaterialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected A:Lcom/afollestad/materialdialogs/MaterialDialog$h;

.field protected B:Lcom/afollestad/materialdialogs/MaterialDialog$h;

.field protected C:Lcom/afollestad/materialdialogs/MaterialDialog$h;

.field protected D:Lcom/afollestad/materialdialogs/MaterialDialog$h;

.field protected E:Lcom/afollestad/materialdialogs/MaterialDialog$d;

.field protected F:Lcom/afollestad/materialdialogs/MaterialDialog$g;

.field protected G:Lcom/afollestad/materialdialogs/MaterialDialog$f;

.field protected H:Lcom/afollestad/materialdialogs/MaterialDialog$e;

.field protected I:Z

.field protected J:Z

.field protected K:Lcom/afollestad/materialdialogs/Theme;

.field protected L:Z

.field protected M:Z

.field protected N:F

.field protected O:I

.field protected P:[Ljava/lang/Integer;

.field protected Q:[Ljava/lang/Integer;

.field protected R:Z

.field protected S:Landroid/graphics/Typeface;

.field protected T:Landroid/graphics/Typeface;

.field protected U:Landroid/graphics/drawable/Drawable;

.field protected V:Z

.field protected W:I

.field protected X:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/widget/RecyclerView$Adapter",
            "<*>;"
        }
    .end annotation
.end field

.field protected Y:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field protected Z:Landroid/content/DialogInterface$OnDismissListener;

.field protected final a:Landroid/content/Context;

.field protected aA:Ljava/text/NumberFormat;

.field protected aB:Z

.field protected aC:Z

.field protected aD:Z

.field protected aE:Z

.field protected aF:Z

.field protected aG:Z

.field protected aH:Z

.field protected aI:Z

.field protected aJ:Z

.field protected aK:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field protected aL:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field protected aM:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field protected aN:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field protected aO:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field protected aa:Landroid/content/DialogInterface$OnCancelListener;

.field protected ab:Landroid/content/DialogInterface$OnKeyListener;

.field protected ac:Landroid/content/DialogInterface$OnShowListener;

.field protected ad:Lcom/afollestad/materialdialogs/StackingBehavior;

.field protected ae:Z

.field protected af:I

.field protected ag:I

.field protected ah:I

.field protected ai:Z

.field protected aj:Z

.field protected ak:I

.field protected al:I

.field protected am:Ljava/lang/CharSequence;

.field protected an:Ljava/lang/CharSequence;

.field protected ao:Lcom/afollestad/materialdialogs/MaterialDialog$c;

.field protected ap:Z

.field protected aq:I

.field protected ar:Z

.field protected as:I

.field protected at:I

.field protected au:I

.field protected av:[I

.field protected aw:Ljava/lang/CharSequence;

.field protected ax:Z

.field protected ay:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field protected az:Ljava/lang/String;

.field protected b:Ljava/lang/CharSequence;

.field protected c:Lcom/afollestad/materialdialogs/GravityEnum;

.field protected d:Lcom/afollestad/materialdialogs/GravityEnum;

.field protected e:Lcom/afollestad/materialdialogs/GravityEnum;

.field protected f:Lcom/afollestad/materialdialogs/GravityEnum;

.field protected g:Lcom/afollestad/materialdialogs/GravityEnum;

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:Ljava/lang/CharSequence;

.field protected l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field protected m:Ljava/lang/CharSequence;

.field protected n:Ljava/lang/CharSequence;

.field protected o:Ljava/lang/CharSequence;

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field protected s:Landroid/view/View;

.field protected t:I

.field protected u:Landroid/content/res/ColorStateList;

.field protected v:Landroid/content/res/ColorStateList;

.field protected w:Landroid/content/res/ColorStateList;

.field protected x:Landroid/content/res/ColorStateList;

.field protected y:Landroid/content/res/ColorStateList;

.field protected z:Lcom/afollestad/materialdialogs/MaterialDialog$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    const/16 v4, 0x15

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->a:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->a:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->d:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->e:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->a:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->f:Lcom/afollestad/materialdialogs/GravityEnum;

    sget-object v1, Lcom/afollestad/materialdialogs/GravityEnum;->a:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->g:Lcom/afollestad/materialdialogs/GravityEnum;

    iput v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->h:I

    iput v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->i:I

    iput v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->j:I

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->I:Z

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->J:Z

    sget-object v1, Lcom/afollestad/materialdialogs/Theme;->a:Lcom/afollestad/materialdialogs/Theme;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->K:Lcom/afollestad/materialdialogs/Theme;

    iput-boolean v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->L:Z

    iput-boolean v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->M:Z

    const v1, 0x3f99999a    # 1.2f

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->N:F

    iput v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->O:I

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->P:[Ljava/lang/Integer;

    iput-object v5, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->Q:[Ljava/lang/Integer;

    iput-boolean v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->R:Z

    iput v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->W:I

    const/4 v1, -0x2

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->ak:I

    iput v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->al:I

    iput v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->aq:I

    iput v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->as:I

    iput v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->at:I

    iput v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->au:I

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->aC:Z

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->aD:Z

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->aE:Z

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->aF:Z

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->aG:Z

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->aH:Z

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->aI:Z

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->aJ:Z

    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a:Landroid/content/Context;

    sget v1, Lcom/afollestad/materialdialogs/R$color;->md_material_blue_600:I

    invoke-static {p1, v1}, Lcom/afollestad/materialdialogs/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    sget v2, Lcom/afollestad/materialdialogs/R$attr;->colorAccent:I

    invoke-static {p1, v2, v1}, Lcom/afollestad/materialdialogs/a/a;->a(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->t:I

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_0

    const v1, 0x1010435

    iget v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->t:I

    invoke-static {p1, v1, v2}, Lcom/afollestad/materialdialogs/a/a;->a(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->t:I

    :cond_0
    iget v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->t:I

    invoke-static {p1, v1}, Lcom/afollestad/materialdialogs/a/a;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->v:Landroid/content/res/ColorStateList;

    iget v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->t:I

    invoke-static {p1, v1}, Lcom/afollestad/materialdialogs/a/a;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->w:Landroid/content/res/ColorStateList;

    iget v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->t:I

    invoke-static {p1, v1}, Lcom/afollestad/materialdialogs/a/a;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->x:Landroid/content/res/ColorStateList;

    sget v1, Lcom/afollestad/materialdialogs/R$attr;->md_link_color:I

    iget v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->t:I

    invoke-static {p1, v1, v2}, Lcom/afollestad/materialdialogs/a/a;->a(Landroid/content/Context;II)I

    move-result v1

    invoke-static {p1, v1}, Lcom/afollestad/materialdialogs/a/a;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->y:Landroid/content/res/ColorStateList;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_1

    const v0, 0x101042c

    invoke-static {p1, v0}, Lcom/afollestad/materialdialogs/a/a;->a(Landroid/content/Context;I)I

    move-result v0

    :cond_1
    sget v1, Lcom/afollestad/materialdialogs/R$attr;->md_btn_ripple_color:I

    sget v2, Lcom/afollestad/materialdialogs/R$attr;->colorControlHighlight:I

    invoke-static {p1, v2, v0}, Lcom/afollestad/materialdialogs/a/a;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/afollestad/materialdialogs/a/a;->a(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->h:I

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->aA:Ljava/text/NumberFormat;

    const-string v0, "%1d/%2d"

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->az:Ljava/lang/String;

    const v0, 0x1010036

    invoke-static {p1, v0}, Lcom/afollestad/materialdialogs/a/a;->a(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lcom/afollestad/materialdialogs/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/afollestad/materialdialogs/Theme;->a:Lcom/afollestad/materialdialogs/Theme;

    :goto_0
    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->K:Lcom/afollestad/materialdialogs/Theme;

    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->d()V

    sget v0, Lcom/afollestad/materialdialogs/R$attr;->md_title_gravity:I

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-static {p1, v0, v1}, Lcom/afollestad/materialdialogs/a/a;->a(Landroid/content/Context;ILcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/GravityEnum;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    sget v0, Lcom/afollestad/materialdialogs/R$attr;->md_content_gravity:I

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->d:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-static {p1, v0, v1}, Lcom/afollestad/materialdialogs/a/a;->a(Landroid/content/Context;ILcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/GravityEnum;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->d:Lcom/afollestad/materialdialogs/GravityEnum;

    sget v0, Lcom/afollestad/materialdialogs/R$attr;->md_btnstacked_gravity:I

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->e:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-static {p1, v0, v1}, Lcom/afollestad/materialdialogs/a/a;->a(Landroid/content/Context;ILcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/GravityEnum;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->e:Lcom/afollestad/materialdialogs/GravityEnum;

    sget v0, Lcom/afollestad/materialdialogs/R$attr;->md_items_gravity:I

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->f:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-static {p1, v0, v1}, Lcom/afollestad/materialdialogs/a/a;->a(Landroid/content/Context;ILcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/GravityEnum;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->f:Lcom/afollestad/materialdialogs/GravityEnum;

    sget v0, Lcom/afollestad/materialdialogs/R$attr;->md_buttons_gravity:I

    iget-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->g:Lcom/afollestad/materialdialogs/GravityEnum;

    invoke-static {p1, v0, v1}, Lcom/afollestad/materialdialogs/a/a;->a(Landroid/content/Context;ILcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/GravityEnum;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->g:Lcom/afollestad/materialdialogs/GravityEnum;

    sget v0, Lcom/afollestad/materialdialogs/R$attr;->md_medium_font:I

    invoke-static {p1, v0}, Lcom/afollestad/materialdialogs/a/a;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/afollestad/materialdialogs/R$attr;->md_regular_font:I

    invoke-static {p1, v1}, Lcom/afollestad/materialdialogs/a/a;->d(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->T:Landroid/graphics/Typeface;

    if-nez v0, :cond_2

    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v4, :cond_5

    const-string v0, "sans-serif-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->T:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->S:Landroid/graphics/Typeface;

    if-nez v0, :cond_3

    :try_start_2
    const-string v0, "sans-serif"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->S:Landroid/graphics/Typeface;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_3
    return-void

    :cond_4
    sget-object v0, Lcom/afollestad/materialdialogs/Theme;->b:Lcom/afollestad/materialdialogs/Theme;

    goto :goto_0

    :cond_5
    :try_start_3
    const-string v0, "sans-serif"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->T:Landroid/graphics/Typeface;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->T:Landroid/graphics/Typeface;

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->S:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->S:Landroid/graphics/Typeface;

    if-nez v0, :cond_3

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->S:Landroid/graphics/Typeface;

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private d()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/d;->a(Z)Lcom/afollestad/materialdialogs/internal/d;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/afollestad/materialdialogs/internal/d;->a()Lcom/afollestad/materialdialogs/internal/d;

    move-result-object v0

    iget-boolean v1, v0, Lcom/afollestad/materialdialogs/internal/d;->a:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/afollestad/materialdialogs/Theme;->b:Lcom/afollestad/materialdialogs/Theme;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->K:Lcom/afollestad/materialdialogs/Theme;

    :cond_1
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->b:I

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->b:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->i:I

    :cond_2
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->c:I

    if-eqz v1, :cond_3

    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->c:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->j:I

    :cond_3
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->d:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->d:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->v:Landroid/content/res/ColorStateList;

    :cond_4
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->e:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->e:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->x:Landroid/content/res/ColorStateList;

    :cond_5
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->f:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->f:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->w:Landroid/content/res/ColorStateList;

    :cond_6
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->h:I

    if-eqz v1, :cond_7

    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->h:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->ah:I

    :cond_7
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->i:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->U:Landroid/graphics/drawable/Drawable;

    :cond_8
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->j:I

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->j:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->ag:I

    :cond_9
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->k:I

    if-eqz v1, :cond_a

    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->k:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->af:I

    :cond_a
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->n:I

    if-eqz v1, :cond_b

    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->n:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->aL:I

    :cond_b
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->m:I

    if-eqz v1, :cond_c

    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->m:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->aK:I

    :cond_c
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->o:I

    if-eqz v1, :cond_d

    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->o:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->aM:I

    :cond_d
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->p:I

    if-eqz v1, :cond_e

    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->p:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->aN:I

    :cond_e
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->q:I

    if-eqz v1, :cond_f

    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->q:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->aO:I

    :cond_f
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->g:I

    if-eqz v1, :cond_10

    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->g:I

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->t:I

    :cond_10
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->l:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->l:Landroid/content/res/ColorStateList;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->y:Landroid/content/res/ColorStateList;

    :cond_11
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->r:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->s:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->d:Lcom/afollestad/materialdialogs/GravityEnum;

    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->t:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->e:Lcom/afollestad/materialdialogs/GravityEnum;

    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->u:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->f:Lcom/afollestad/materialdialogs/GravityEnum;

    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/d;->v:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->g:Lcom/afollestad/materialdialogs/GravityEnum;

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a(IZ)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v0

    return-object v0
.end method

.method public a(IZ)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, "<br/>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->b(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/res/ColorStateList;)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->v:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->aF:Z

    return-object p0
.end method

.method public a(Lcom/afollestad/materialdialogs/MaterialDialog$h;)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 0
    .param p1    # Lcom/afollestad/materialdialogs/MaterialDialog$h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->A:Lcom/afollestad/materialdialogs/MaterialDialog$h;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->b:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->T:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->T:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No font asset found for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/afollestad/materialdialogs/a/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->S:Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->S:Landroid/graphics/Typeface;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No font asset found for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object p0
.end method

.method public a(Z)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 0

    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->L:Z

    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->M:Z

    return-object p0
.end method

.method public a(ZI)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot set progress() when you\'re using a custom view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->ai:Z

    const/4 v0, -0x2

    iput v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->ak:I

    :goto_0
    return-object p0

    :cond_1
    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->aB:Z

    iput-boolean v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->ai:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->ak:I

    iput p2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->al:I

    goto :goto_0
.end method

.method public b(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->aD:Z

    return-object p0
.end method

.method public b(Landroid/content/res/ColorStateList;)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 1
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->w:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->aH:Z

    return-object p0
.end method

.method public b(Lcom/afollestad/materialdialogs/MaterialDialog$h;)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 0
    .param p1    # Lcom/afollestad/materialdialogs/MaterialDialog$h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->B:Lcom/afollestad/materialdialogs/MaterialDialog$h;

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->s:Landroid/view/View;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot set content() when you\'re using a custom view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->k:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public b(Z)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 0

    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->M:Z

    return-object p0
.end method

.method public b()Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog$a;)V

    return-object v0
.end method

.method public c(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/a/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->b(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->m:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(Z)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 0

    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->R:Z

    return-object p0
.end method

.method public c()Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 1
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->b()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    return-object v0
.end method

.method public d(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->c(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    goto :goto_0
.end method

.method public d(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->o:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public e(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/a/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a(Landroid/content/res/ColorStateList;)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v0

    return-object v0
.end method

.method public f(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/a/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->b(Landroid/content/res/ColorStateList;)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v0

    return-object v0
.end method

.method public g(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    if-nez p1, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->d(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object p0

    goto :goto_0
.end method

.method public h(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->t:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->aI:Z

    return-object p0
.end method

.method public i(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$a;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/a/a;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$a;->h(I)Lcom/afollestad/materialdialogs/MaterialDialog$a;

    move-result-object v0

    return-object v0
.end method
