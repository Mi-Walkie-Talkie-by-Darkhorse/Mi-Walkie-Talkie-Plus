.class public Lcom/afollestad/materialdialogs/MaterialDialog$d;
.super Ljava/lang/Object;
.source "MaterialDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afollestad/materialdialogs/MaterialDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field protected A:Lcom/afollestad/materialdialogs/MaterialDialog$k;

.field protected A0:Ljava/text/NumberFormat;

.field protected B:Lcom/afollestad/materialdialogs/MaterialDialog$k;

.field protected B0:Z

.field protected C:Lcom/afollestad/materialdialogs/MaterialDialog$k;

.field protected C0:Z

.field protected D:Lcom/afollestad/materialdialogs/MaterialDialog$k;

.field protected D0:Z

.field protected E:Lcom/afollestad/materialdialogs/MaterialDialog$g;

.field protected E0:Z

.field protected F:Lcom/afollestad/materialdialogs/MaterialDialog$j;

.field protected F0:Z

.field protected G:Lcom/afollestad/materialdialogs/MaterialDialog$i;

.field protected G0:Z

.field protected H:Lcom/afollestad/materialdialogs/MaterialDialog$h;

.field protected H0:Z

.field protected I:Z

.field protected I0:Z

.field protected J:Z

.field protected J0:Z

.field protected K:Lcom/afollestad/materialdialogs/Theme;

.field protected K0:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field protected L:Z

.field protected L0:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field protected M:Z

.field protected M0:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field protected N:F

.field protected N0:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field protected O:I

.field protected O0:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field protected P:[Ljava/lang/Integer;

.field protected Q:[Ljava/lang/Integer;

.field protected R:Z

.field protected S:Landroid/graphics/Typeface;

.field protected T:Landroid/graphics/Typeface;

.field protected U:Landroid/graphics/drawable/Drawable;

.field protected V:Z

.field protected W:I

.field protected X:Landroidx/recyclerview/widget/RecyclerView$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/recyclerview/widget/RecyclerView$g<",
            "*>;"
        }
    .end annotation
.end field

.field protected Y:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field protected Z:Landroid/content/DialogInterface$OnDismissListener;

.field protected final a:Landroid/content/Context;

.field protected a0:Landroid/content/DialogInterface$OnCancelListener;

.field protected b:Ljava/lang/CharSequence;

.field protected b0:Landroid/content/DialogInterface$OnKeyListener;

.field protected c:Lcom/afollestad/materialdialogs/GravityEnum;

.field protected c0:Landroid/content/DialogInterface$OnShowListener;

.field protected d:Lcom/afollestad/materialdialogs/GravityEnum;

.field protected d0:Lcom/afollestad/materialdialogs/StackingBehavior;

.field protected e:Lcom/afollestad/materialdialogs/GravityEnum;

.field protected e0:Z

.field protected f:Lcom/afollestad/materialdialogs/GravityEnum;

.field protected f0:I

.field protected g:Lcom/afollestad/materialdialogs/GravityEnum;

.field protected g0:I

.field protected h:I

.field protected h0:I

.field protected i:I

.field protected i0:Z

.field protected j:I

.field protected j0:Z

.field protected k:Ljava/lang/CharSequence;

.field protected k0:I

.field protected l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field protected l0:I

.field protected m:Ljava/lang/CharSequence;

.field protected m0:Ljava/lang/CharSequence;

.field protected n:Ljava/lang/CharSequence;

.field protected n0:Ljava/lang/CharSequence;

.field protected o:Ljava/lang/CharSequence;

.field protected o0:Lcom/afollestad/materialdialogs/MaterialDialog$f;

.field protected p:Z

.field protected p0:Z

.field protected q:Z

.field protected q0:I

.field protected r:Z

.field protected r0:Z

.field protected s:Landroid/view/View;

.field protected s0:I

.field protected t:I

.field protected t0:I

.field protected u:Landroid/content/res/ColorStateList;

.field protected u0:I

.field protected v:Landroid/content/res/ColorStateList;

.field protected v0:[I

.field protected w:Landroid/content/res/ColorStateList;

.field protected w0:Ljava/lang/CharSequence;

.field protected x:Landroid/content/res/ColorStateList;

.field protected x0:Z

.field protected y:Landroid/content/res/ColorStateList;

.field protected y0:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field protected z:Lcom/afollestad/materialdialogs/MaterialDialog$e;

.field protected z0:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->a:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 3
    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->d:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 4
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->e:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 5
    sget-object v0, Lcom/afollestad/materialdialogs/GravityEnum;->a:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->f:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 6
    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->g:Lcom/afollestad/materialdialogs/GravityEnum;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->h:I

    const/4 v1, -0x1

    .line 8
    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->i:I

    .line 9
    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->j:I

    .line 10
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->I:Z

    .line 11
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->J:Z

    .line 12
    sget-object v2, Lcom/afollestad/materialdialogs/Theme;->a:Lcom/afollestad/materialdialogs/Theme;

    iput-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->K:Lcom/afollestad/materialdialogs/Theme;

    const/4 v2, 0x1

    .line 13
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->L:Z

    .line 14
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->M:Z

    const v3, 0x3f99999a    # 1.2f

    .line 15
    iput v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->N:F

    .line 16
    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->O:I

    const/4 v3, 0x0

    .line 17
    iput-object v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->P:[Ljava/lang/Integer;

    .line 18
    iput-object v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->Q:[Ljava/lang/Integer;

    .line 19
    iput-boolean v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->R:Z

    .line 20
    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->W:I

    const/4 v3, -0x2

    .line 21
    iput v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->k0:I

    .line 22
    iput v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->l0:I

    .line 23
    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->q0:I

    .line 24
    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->s0:I

    .line 25
    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->t0:I

    .line 26
    iput v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->u0:I

    .line 27
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->C0:Z

    .line 28
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->D0:Z

    .line 29
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->E0:Z

    .line 30
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->F0:Z

    .line 31
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->G0:Z

    .line 32
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->H0:Z

    .line 33
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->I0:Z

    .line 34
    iput-boolean v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->J0:Z

    .line 35
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->a:Landroid/content/Context;

    .line 36
    sget v1, Lcom/afollestad/materialdialogs/R$color;->md_material_blue_600:I

    invoke-static {p1, v1}, Lcom/afollestad/materialdialogs/d/a;->c(Landroid/content/Context;I)I

    move-result v1

    .line 37
    sget v3, Lcom/afollestad/materialdialogs/R$attr;->colorAccent:I

    invoke-static {p1, v3, v1}, Lcom/afollestad/materialdialogs/d/a;->a(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->t:I

    .line 38
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    const v3, 0x1010435

    .line 39
    invoke-static {p1, v3, v1}, Lcom/afollestad/materialdialogs/d/a;->a(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->t:I

    .line 40
    :cond_0
    iget v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->t:I

    invoke-static {p1, v1}, Lcom/afollestad/materialdialogs/d/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->v:Landroid/content/res/ColorStateList;

    .line 41
    iget v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->t:I

    invoke-static {p1, v1}, Lcom/afollestad/materialdialogs/d/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->w:Landroid/content/res/ColorStateList;

    .line 42
    iget v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->t:I

    invoke-static {p1, v1}, Lcom/afollestad/materialdialogs/d/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->x:Landroid/content/res/ColorStateList;

    .line 43
    sget v1, Lcom/afollestad/materialdialogs/R$attr;->md_link_color:I

    iget v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->t:I

    .line 44
    invoke-static {p1, v1, v3}, Lcom/afollestad/materialdialogs/d/a;->a(Landroid/content/Context;II)I

    move-result v1

    .line 45
    invoke-static {p1, v1}, Lcom/afollestad/materialdialogs/d/a;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->y:Landroid/content/res/ColorStateList;

    .line 46
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v4, :cond_1

    const v1, 0x101042c

    .line 47
    invoke-static {p1, v1}, Lcom/afollestad/materialdialogs/d/a;->e(Landroid/content/Context;I)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 48
    :goto_0
    sget v3, Lcom/afollestad/materialdialogs/R$attr;->md_btn_ripple_color:I

    sget v5, Lcom/afollestad/materialdialogs/R$attr;->colorControlHighlight:I

    .line 49
    invoke-static {p1, v5, v1}, Lcom/afollestad/materialdialogs/d/a;->a(Landroid/content/Context;II)I

    move-result v1

    .line 50
    invoke-static {p1, v3, v1}, Lcom/afollestad/materialdialogs/d/a;->a(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->h:I

    .line 51
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->A0:Ljava/text/NumberFormat;

    const-string v1, "%1d/%2d"

    .line 52
    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->z0:Ljava/lang/String;

    const v1, 0x1010036

    .line 53
    invoke-static {p1, v1}, Lcom/afollestad/materialdialogs/d/a;->e(Landroid/content/Context;I)I

    move-result v1

    .line 54
    invoke-static {v1}, Lcom/afollestad/materialdialogs/d/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/afollestad/materialdialogs/Theme;->a:Lcom/afollestad/materialdialogs/Theme;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/afollestad/materialdialogs/Theme;->b:Lcom/afollestad/materialdialogs/Theme;

    :goto_1
    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->K:Lcom/afollestad/materialdialogs/Theme;

    .line 55
    invoke-direct {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$d;->d()V

    .line 56
    sget v1, Lcom/afollestad/materialdialogs/R$attr;->md_title_gravity:I

    iget-object v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 57
    invoke-static {p1, v1, v3}, Lcom/afollestad/materialdialogs/d/a;->a(Landroid/content/Context;ILcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/GravityEnum;

    move-result-object v1

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 58
    sget v1, Lcom/afollestad/materialdialogs/R$attr;->md_content_gravity:I

    iget-object v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->d:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 59
    invoke-static {p1, v1, v3}, Lcom/afollestad/materialdialogs/d/a;->a(Landroid/content/Context;ILcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/GravityEnum;

    move-result-object v1

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->d:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 60
    sget v1, Lcom/afollestad/materialdialogs/R$attr;->md_btnstacked_gravity:I

    iget-object v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->e:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 61
    invoke-static {p1, v1, v3}, Lcom/afollestad/materialdialogs/d/a;->a(Landroid/content/Context;ILcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/GravityEnum;

    move-result-object v1

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->e:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 62
    sget v1, Lcom/afollestad/materialdialogs/R$attr;->md_items_gravity:I

    iget-object v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->f:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 63
    invoke-static {p1, v1, v3}, Lcom/afollestad/materialdialogs/d/a;->a(Landroid/content/Context;ILcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/GravityEnum;

    move-result-object v1

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->f:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 64
    sget v1, Lcom/afollestad/materialdialogs/R$attr;->md_buttons_gravity:I

    iget-object v3, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->g:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 65
    invoke-static {p1, v1, v3}, Lcom/afollestad/materialdialogs/d/a;->a(Landroid/content/Context;ILcom/afollestad/materialdialogs/GravityEnum;)Lcom/afollestad/materialdialogs/GravityEnum;

    move-result-object v1

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->g:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 66
    sget v1, Lcom/afollestad/materialdialogs/R$attr;->md_medium_font:I

    invoke-static {p1, v1}, Lcom/afollestad/materialdialogs/d/a;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 67
    sget v3, Lcom/afollestad/materialdialogs/R$attr;->md_regular_font:I

    invoke-static {p1, v3}, Lcom/afollestad/materialdialogs/d/a;->h(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    .line 68
    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/afollestad/materialdialogs/MaterialDialog$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    nop

    .line 69
    :goto_2
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->T:Landroid/graphics/Typeface;

    const-string v1, "sans-serif"

    if-nez p1, :cond_4

    .line 70
    :try_start_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v4, :cond_3

    const-string p1, "sans-serif-medium"

    .line 71
    invoke-static {p1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->T:Landroid/graphics/Typeface;

    goto :goto_3

    .line 72
    :cond_3
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->T:Landroid/graphics/Typeface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 73
    :catchall_1
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->T:Landroid/graphics/Typeface;

    .line 74
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->S:Landroid/graphics/Typeface;

    if-nez p1, :cond_5

    .line 75
    :try_start_2
    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->S:Landroid/graphics/Typeface;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    nop

    .line 76
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->S:Landroid/graphics/Typeface;

    if-nez p1, :cond_5

    .line 77
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->S:Landroid/graphics/Typeface;

    :cond_5
    :goto_4
    return-void
.end method

.method private d()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/afollestad/materialdialogs/internal/d;->a(Z)Lcom/afollestad/materialdialogs/internal/d;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/afollestad/materialdialogs/internal/d;->a()Lcom/afollestad/materialdialogs/internal/d;

    move-result-object v0

    .line 3
    iget-boolean v1, v0, Lcom/afollestad/materialdialogs/internal/d;->a:Z

    if-eqz v1, :cond_1

    .line 4
    sget-object v1, Lcom/afollestad/materialdialogs/Theme;->b:Lcom/afollestad/materialdialogs/Theme;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->K:Lcom/afollestad/materialdialogs/Theme;

    .line 5
    :cond_1
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->b:I

    if-eqz v1, :cond_2

    .line 6
    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->i:I

    .line 7
    :cond_2
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->c:I

    if-eqz v1, :cond_3

    .line 8
    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->j:I

    .line 9
    :cond_3
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->d:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_4

    .line 10
    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->v:Landroid/content/res/ColorStateList;

    .line 11
    :cond_4
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->e:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_5

    .line 12
    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->x:Landroid/content/res/ColorStateList;

    .line 13
    :cond_5
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->f:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_6

    .line 14
    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->w:Landroid/content/res/ColorStateList;

    .line 15
    :cond_6
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->h:I

    if-eqz v1, :cond_7

    .line 16
    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->h0:I

    .line 17
    :cond_7
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->i:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_8

    .line 18
    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->U:Landroid/graphics/drawable/Drawable;

    .line 19
    :cond_8
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->j:I

    if-eqz v1, :cond_9

    .line 20
    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->g0:I

    .line 21
    :cond_9
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->k:I

    if-eqz v1, :cond_a

    .line 22
    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->f0:I

    .line 23
    :cond_a
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->n:I

    if-eqz v1, :cond_b

    .line 24
    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->L0:I

    .line 25
    :cond_b
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->m:I

    if-eqz v1, :cond_c

    .line 26
    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->K0:I

    .line 27
    :cond_c
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->o:I

    if-eqz v1, :cond_d

    .line 28
    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->M0:I

    .line 29
    :cond_d
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->p:I

    if-eqz v1, :cond_e

    .line 30
    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->N0:I

    .line 31
    :cond_e
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->q:I

    if-eqz v1, :cond_f

    .line 32
    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->O0:I

    .line 33
    :cond_f
    iget v1, v0, Lcom/afollestad/materialdialogs/internal/d;->g:I

    if-eqz v1, :cond_10

    .line 34
    iput v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->t:I

    .line 35
    :cond_10
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->l:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_11

    .line 36
    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->y:Landroid/content/res/ColorStateList;

    .line 37
    :cond_11
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->r:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->c:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 38
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->s:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->d:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 39
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->t:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->e:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 40
    iget-object v1, v0, Lcom/afollestad/materialdialogs/internal/d;->u:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->f:Lcom/afollestad/materialdialogs/GravityEnum;

    .line 41
    iget-object v0, v0, Lcom/afollestad/materialdialogs/internal/d;->v:Lcom/afollestad/materialdialogs/GravityEnum;

    iput-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->g:Lcom/afollestad/materialdialogs/GravityEnum;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/afollestad/materialdialogs/MaterialDialog$d;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/afollestad/materialdialogs/MaterialDialog$d;->a(IZ)Lcom/afollestad/materialdialogs/MaterialDialog$d;

    return-object p0
.end method

.method public a(IZ)Lcom/afollestad/materialdialogs/MaterialDialog$d;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 9
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    const-string v0, "<br/>"

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$d;->a(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$d;

    return-object p0
.end method

.method public a(Landroid/content/res/ColorStateList;)Lcom/afollestad/materialdialogs/MaterialDialog$d;
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 14
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->w:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->H0:Z

    return-object p0
.end method

.method public a(Lcom/afollestad/materialdialogs/MaterialDialog$k;)Lcom/afollestad/materialdialogs/MaterialDialog$d;
    .locals 0
    .param p1    # Lcom/afollestad/materialdialogs/MaterialDialog$k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 16
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->A:Lcom/afollestad/materialdialogs/MaterialDialog$k;

    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$d;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 11
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->s:Landroid/view/View;

    if-nez v0, :cond_0

    .line 12
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->k:Ljava/lang/CharSequence;

    return-object p0

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You cannot set content() when you\'re using a custom view."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/afollestad/materialdialogs/MaterialDialog$d;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "\""

    const-string v1, "No font asset found for \""

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/afollestad/materialdialogs/d/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    iput-object v2, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->T:Landroid/graphics/Typeface;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->a:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/afollestad/materialdialogs/d/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->S:Landroid/graphics/Typeface;

    if-eqz p1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-object p0
.end method

.method public a()Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 17
    new-instance v0, Lcom/afollestad/materialdialogs/MaterialDialog;

    invoke-direct {v0, p0}, Lcom/afollestad/materialdialogs/MaterialDialog;-><init>(Lcom/afollestad/materialdialogs/MaterialDialog$d;)V

    return-object v0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->a:Landroid/content/Context;

    return-object v0
.end method

.method public b(I)Lcom/afollestad/materialdialogs/MaterialDialog$d;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 2
    iput p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->j:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->D0:Z

    return-object p0
.end method

.method public b(Landroid/content/res/ColorStateList;)Lcom/afollestad/materialdialogs/MaterialDialog$d;
    .locals 0
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->v:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->F0:Z

    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$d;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 6
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->o:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c(I)Lcom/afollestad/materialdialogs/MaterialDialog$d;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/d/a;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$d;->b(I)Lcom/afollestad/materialdialogs/MaterialDialog$d;

    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$d;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->m:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public c()Lcom/afollestad/materialdialogs/MaterialDialog;
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/afollestad/materialdialogs/MaterialDialog$d;->a()Lcom/afollestad/materialdialogs/MaterialDialog;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/afollestad/materialdialogs/MaterialDialog;->show()V

    return-object v0
.end method

.method public d(I)Lcom/afollestad/materialdialogs/MaterialDialog$d;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 42
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/d/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$d;->a(Landroid/content/res/ColorStateList;)Lcom/afollestad/materialdialogs/MaterialDialog$d;

    return-object p0
.end method

.method public e(I)Lcom/afollestad/materialdialogs/MaterialDialog$d;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$d;->b(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$d;

    return-object p0
.end method

.method public f(I)Lcom/afollestad/materialdialogs/MaterialDialog$d;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/afollestad/materialdialogs/d/a;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$d;->b(Landroid/content/res/ColorStateList;)Lcom/afollestad/materialdialogs/MaterialDialog$d;

    return-object p0
.end method

.method public g(I)Lcom/afollestad/materialdialogs/MaterialDialog$d;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/afollestad/materialdialogs/MaterialDialog$d;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/afollestad/materialdialogs/MaterialDialog$d;->c(Ljava/lang/CharSequence;)Lcom/afollestad/materialdialogs/MaterialDialog$d;

    return-object p0
.end method
