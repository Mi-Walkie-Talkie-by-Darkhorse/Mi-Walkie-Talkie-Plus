.class public Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams$a;
    }
.end annotation


# instance fields
.field public A:F

.field public B:Ljava/lang/String;

.field C:I

.field public D:F

.field public E:F

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:F

.field public O:F

.field public P:I

.field public Q:I

.field public R:I

.field public S:Z

.field public T:Z

.field public U:Ljava/lang/String;

.field V:Z

.field W:Z

.field X:Z

.field Y:Z

.field Z:Z

.field public a:I

.field a0:Z

.field public b:I

.field b0:Z

.field public c:F

.field c0:I

.field public d:I

.field d0:I

.field public e:I

.field e0:I

.field public f:I

.field f0:I

.field public g:I

.field g0:I

.field public h:I

.field h0:I

.field public i:I

.field i0:F

.field public j:I

.field j0:I

.field public k:I

.field k0:I

.field public l:I

.field l0:F

.field public m:I

.field m0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field public n:I

.field public n0:Z

.field public o:F

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:F


# direct methods
.method public constructor <init>(II)V
    .locals 4

    .line 163
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, -0x1

    .line 164
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a:I

    .line 165
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b:I

    const/high16 p2, -0x40800000    # -1.0f

    .line 166
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c:F

    .line 167
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 168
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    .line 169
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    .line 170
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 171
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 172
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    .line 173
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    .line 174
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 175
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    .line 176
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    const/4 v0, 0x0

    .line 177
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    const/4 v1, 0x0

    .line 178
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:F

    .line 179
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    .line 180
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    .line 181
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    .line 182
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    .line 183
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->t:I

    .line 184
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    .line 185
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->v:I

    .line 186
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    .line 187
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->x:I

    .line 188
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->y:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 189
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    .line 190
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->A:F

    const/4 v2, 0x0

    .line 191
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    const/4 v3, 0x1

    .line 192
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->C:I

    .line 193
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->D:F

    .line 194
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    .line 195
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    .line 196
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    .line 197
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    .line 198
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    .line 199
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    .line 200
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    .line 201
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    .line 202
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 203
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:F

    .line 204
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:F

    .line 205
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    .line 206
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    .line 207
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    .line 208
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:Z

    .line 209
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:Z

    .line 210
    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Ljava/lang/String;

    .line 211
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    .line 212
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    .line 213
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    .line 214
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    .line 215
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    .line 216
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a0:Z

    .line 217
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b0:Z

    .line 218
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:I

    .line 219
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d0:I

    .line 220
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:I

    .line 221
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f0:I

    .line 222
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g0:I

    .line 223
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h0:I

    .line 224
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i0:F

    .line 225
    new-instance p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a:I

    .line 3
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b:I

    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c:F

    .line 5
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 6
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    .line 7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    .line 8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 9
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 10
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    .line 11
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    .line 12
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 13
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    .line 14
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    const/4 v2, 0x0

    .line 15
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    const/4 v3, 0x0

    .line 16
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:F

    .line 17
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    .line 18
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    .line 19
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    .line 20
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    .line 21
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->t:I

    .line 22
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    .line 23
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->v:I

    .line 24
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    .line 25
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->x:I

    .line 26
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->y:I

    const/high16 v4, 0x3f000000    # 0.5f

    .line 27
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    .line 28
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->A:F

    const/4 v5, 0x0

    .line 29
    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    const/4 v6, 0x1

    .line 30
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->C:I

    .line 31
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->D:F

    .line 32
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    .line 33
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    .line 34
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    .line 35
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    .line 36
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    .line 37
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    .line 38
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    .line 39
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    .line 40
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 41
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:F

    .line 42
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:F

    .line 43
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    .line 44
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    .line 45
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    .line 46
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:Z

    .line 47
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:Z

    .line 48
    iput-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Ljava/lang/String;

    .line 49
    iput-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    .line 50
    iput-boolean v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    .line 51
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    .line 52
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    .line 53
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    .line 54
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a0:Z

    .line 55
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b0:Z

    .line 56
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:I

    .line 57
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d0:I

    .line 58
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:I

    .line 59
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f0:I

    .line 60
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g0:I

    .line 61
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h0:I

    .line 62
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i0:F

    .line 63
    new-instance v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 64
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 65
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_6

    .line 66
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 67
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams$a;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    const-string v7, "ConstraintLayout"

    const/4 v8, 0x2

    const/4 v9, -0x2

    packed-switch v5, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_3

    .line 68
    :pswitch_0
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Ljava/lang/String;

    goto/16 :goto_3

    .line 69
    :pswitch_1
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    goto/16 :goto_3

    .line 70
    :pswitch_2
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    goto/16 :goto_3

    .line 71
    :pswitch_3
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    goto/16 :goto_3

    .line 72
    :pswitch_4
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    goto/16 :goto_3

    .line 73
    :pswitch_5
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    goto/16 :goto_3

    .line 74
    :pswitch_6
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->D:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->D:F

    goto/16 :goto_3

    .line 75
    :pswitch_7
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    .line 76
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->C:I

    if-eqz v4, :cond_5

    .line 77
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 78
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    const/16 v7, 0x2c

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-lez v5, :cond_2

    add-int/lit8 v7, v4, -0x1

    if-ge v5, v7, :cond_2

    .line 79
    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    invoke-virtual {v7, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "W"

    .line 80
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 81
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->C:I

    goto :goto_1

    :cond_0
    const-string v8, "H"

    .line 82
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 83
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->C:I

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    .line 84
    :goto_2
    iget-object v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_4

    add-int/lit8 v4, v4, -0x1

    if-ge v7, v4, :cond_4

    .line 85
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 86
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 88
    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 89
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    cmpl-float v7, v4, v3

    if-lez v7, :cond_5

    cmpl-float v7, v5, v3

    if-lez v7, :cond_5

    .line 90
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->C:I

    if-ne v7, v6, :cond_3

    div-float/2addr v5, v4

    .line 91
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    goto/16 :goto_3

    :cond_3
    div-float/2addr v4, v5

    .line 92
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_3

    .line 93
    :cond_4
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_5

    .line 95
    :try_start_1
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_3

    .line 96
    :pswitch_8
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:F

    .line 97
    iput v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    goto/16 :goto_3

    .line 98
    :pswitch_9
    :try_start_2
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    nop

    .line 99
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v9, :cond_5

    .line 100
    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    goto/16 :goto_3

    .line 101
    :pswitch_a
    :try_start_3
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    nop

    .line 102
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v9, :cond_5

    .line 103
    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    goto/16 :goto_3

    .line 104
    :pswitch_b
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:F

    .line 105
    iput v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    goto/16 :goto_3

    .line 106
    :pswitch_c
    :try_start_4
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    :catch_2
    nop

    .line 107
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v9, :cond_5

    .line 108
    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    goto/16 :goto_3

    .line 109
    :pswitch_d
    :try_start_5
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    :catch_3
    nop

    .line 110
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v9, :cond_5

    .line 111
    iput v9, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    goto/16 :goto_3

    .line 112
    :pswitch_e
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    if-ne v4, v6, :cond_5

    const-string v4, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    .line 113
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 114
    :pswitch_f
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    if-ne v4, v6, :cond_5

    const-string v4, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    .line 115
    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 116
    :pswitch_10
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->A:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->A:F

    goto/16 :goto_3

    .line 117
    :pswitch_11
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    goto/16 :goto_3

    .line 118
    :pswitch_12
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:Z

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:Z

    goto/16 :goto_3

    .line 119
    :pswitch_13
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:Z

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:Z

    goto/16 :goto_3

    .line 120
    :pswitch_14
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->y:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->y:I

    goto/16 :goto_3

    .line 121
    :pswitch_15
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->x:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->x:I

    goto/16 :goto_3

    .line 122
    :pswitch_16
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    goto/16 :goto_3

    .line 123
    :pswitch_17
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->v:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->v:I

    goto/16 :goto_3

    .line 124
    :pswitch_18
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    goto/16 :goto_3

    .line 125
    :pswitch_19
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->t:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->t:I

    goto/16 :goto_3

    .line 126
    :pswitch_1a
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    if-ne v5, v0, :cond_5

    .line 127
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    goto/16 :goto_3

    .line 128
    :pswitch_1b
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    if-ne v5, v0, :cond_5

    .line 129
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    goto/16 :goto_3

    .line 130
    :pswitch_1c
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    if-ne v5, v0, :cond_5

    .line 131
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    goto/16 :goto_3

    .line 132
    :pswitch_1d
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    if-ne v5, v0, :cond_5

    .line 133
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    goto/16 :goto_3

    .line 134
    :pswitch_1e
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    if-ne v5, v0, :cond_5

    .line 135
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    goto/16 :goto_3

    .line 136
    :pswitch_1f
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    if-ne v5, v0, :cond_5

    .line 137
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    goto/16 :goto_3

    .line 138
    :pswitch_20
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    if-ne v5, v0, :cond_5

    .line 139
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    goto/16 :goto_3

    .line 140
    :pswitch_21
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    if-ne v5, v0, :cond_5

    .line 141
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    goto/16 :goto_3

    .line 142
    :pswitch_22
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    if-ne v5, v0, :cond_5

    .line 143
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    goto/16 :goto_3

    .line 144
    :pswitch_23
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    if-ne v5, v0, :cond_5

    .line 145
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    goto/16 :goto_3

    .line 146
    :pswitch_24
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    if-ne v5, v0, :cond_5

    .line 147
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    goto/16 :goto_3

    .line 148
    :pswitch_25
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    if-ne v5, v0, :cond_5

    .line 149
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    goto :goto_3

    .line 150
    :pswitch_26
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    if-ne v5, v0, :cond_5

    .line 151
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    goto :goto_3

    .line 152
    :pswitch_27
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c:F

    goto :goto_3

    .line 153
    :pswitch_28
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b:I

    goto :goto_3

    .line 154
    :pswitch_29
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a:I

    goto :goto_3

    .line 155
    :pswitch_2a
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:F

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/high16 v5, 0x43b40000    # 360.0f

    rem-float/2addr v4, v5

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:F

    cmpg-float v7, v4, v3

    if-gez v7, :cond_5

    sub-float v4, v5, v4

    rem-float/2addr v4, v5

    .line 156
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:F

    goto :goto_3

    .line 157
    :pswitch_2b
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    goto :goto_3

    .line 158
    :pswitch_2c
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    if-ne v5, v0, :cond_5

    .line 159
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    goto :goto_3

    .line 160
    :pswitch_2d
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    :catch_4
    :cond_5
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 161
    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    .line 226
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    .line 227
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a:I

    .line 228
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 229
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c:F

    .line 230
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    .line 231
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    .line 232
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    .line 233
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    .line 234
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h:I

    .line 235
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i:I

    .line 236
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j:I

    .line 237
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k:I

    .line 238
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l:I

    .line 239
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m:I

    const/4 v1, 0x0

    .line 240
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->n:I

    const/4 v2, 0x0

    .line 241
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->o:F

    .line 242
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    .line 243
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    .line 244
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    .line 245
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    .line 246
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->t:I

    .line 247
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->u:I

    .line 248
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->v:I

    .line 249
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->w:I

    .line 250
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->x:I

    .line 251
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->y:I

    const/high16 v2, 0x3f000000    # 0.5f

    .line 252
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    .line 253
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->A:F

    const/4 v3, 0x0

    .line 254
    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->B:Ljava/lang/String;

    const/4 v4, 0x1

    .line 255
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->C:I

    .line 256
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->D:F

    .line 257
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->E:F

    .line 258
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->F:I

    .line 259
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->G:I

    .line 260
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    .line 261
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    .line 262
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->J:I

    .line 263
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->K:I

    .line 264
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->L:I

    .line 265
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->M:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 266
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->N:F

    .line 267
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->O:F

    .line 268
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->P:I

    .line 269
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Q:I

    .line 270
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    .line 271
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:Z

    .line 272
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:Z

    .line 273
    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Ljava/lang/String;

    .line 274
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    .line 275
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    .line 276
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->X:Z

    .line 277
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    .line 278
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Z:Z

    .line 279
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a0:Z

    .line 280
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b0:Z

    .line 281
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:I

    .line 282
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d0:I

    .line 283
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:I

    .line 284
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f0:I

    .line 285
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g0:I

    .line 286
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h0:I

    .line 287
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i0:F

    .line 288
    new-instance p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->U:Ljava/lang/String;

    return-object v0
.end method

.method public b()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object v0
.end method

.method public c()V
    .locals 6

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    .line 3
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    .line 4
    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    iget-boolean v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:Z

    if-eqz v4, :cond_0

    .line 5
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    .line 6
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    if-nez v4, :cond_0

    .line 7
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    .line 8
    :cond_0
    iget v4, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v4, v3, :cond_1

    iget-boolean v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:Z

    if-eqz v5, :cond_1

    .line 9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    .line 10
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    if-nez v5, :cond_1

    .line 11
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    :cond_1
    const/4 v5, -0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_3

    .line 12
    :cond_2
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    if-nez v2, :cond_3

    .line 13
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->H:I

    if-ne v2, v1, :cond_3

    .line 14
    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 15
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->S:Z

    :cond_3
    if-eqz v4, :cond_4

    if-ne v4, v5, :cond_5

    .line 16
    :cond_4
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    if-nez v4, :cond_5

    .line 17
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->I:I

    if-ne v0, v1, :cond_5

    .line 18
    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 19
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->T:Z

    .line 20
    :cond_5
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a:I

    if-ne v0, v5, :cond_6

    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b:I

    if-eq v0, v5, :cond_8

    .line 21
    :cond_6
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    .line 22
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->V:Z

    .line 23
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->W:Z

    .line 24
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/f;

    if-nez v0, :cond_7

    .line 25
    new-instance v0, Landroidx/constraintlayout/solver/widgets/f;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/f;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 26
    :cond_7
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->m0:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v0, Landroidx/constraintlayout/solver/widgets/f;

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/f;->S0(I)V

    :cond_8
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .line 1
    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2
    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x11

    if-lt v2, v5, :cond_0

    .line 4
    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getLayoutDirection()I

    move-result p1

    if-ne v4, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, -0x1

    .line 6
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:I

    .line 7
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f0:I

    .line 8
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:I

    .line 9
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d0:I

    .line 10
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g0:I

    .line 11
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h0:I

    .line 12
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->t:I

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g0:I

    .line 13
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->v:I

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h0:I

    .line 14
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->z:F

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i0:F

    .line 15
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->a:I

    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j0:I

    .line 16
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->b:I

    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:I

    .line 17
    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c:F

    iput v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:F

    if-eqz p1, :cond_a

    .line 18
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    if-eq p1, v2, :cond_1

    .line 19
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:I

    :goto_1
    const/4 v3, 0x1

    goto :goto_2

    .line 20
    :cond_1
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    if-eq p1, v2, :cond_2

    .line 21
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f0:I

    goto :goto_1

    .line 22
    :cond_2
    :goto_2
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    if-eq p1, v2, :cond_3

    .line 23
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d0:I

    const/4 v3, 0x1

    .line 24
    :cond_3
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    if-eq p1, v2, :cond_4

    .line 25
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:I

    const/4 v3, 0x1

    .line 26
    :cond_4
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->x:I

    if-eq p1, v2, :cond_5

    .line 27
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h0:I

    .line 28
    :cond_5
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->y:I

    if-eq p1, v2, :cond_6

    .line 29
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g0:I

    :cond_6
    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz v3, :cond_7

    sub-float v3, p1, v5

    .line 30
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->i0:F

    .line 31
    :cond_7
    iget-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->Y:Z

    if-eqz v3, :cond_10

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->R:I

    if-ne v3, v4, :cond_10

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v8, v3

    if-eqz v4, :cond_8

    sub-float/2addr p1, v8

    .line 32
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:F

    .line 33
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j0:I

    .line 34
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:I

    goto :goto_3

    :cond_8
    if-eq v6, v2, :cond_9

    .line 35
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:I

    .line 36
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j0:I

    .line 37
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:F

    goto :goto_3

    :cond_9
    if-eq v7, v2, :cond_10

    .line 38
    iput v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->j0:I

    .line 39
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->k0:I

    .line 40
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->l0:F

    goto :goto_3

    .line 41
    :cond_a
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    if-eq p1, v2, :cond_b

    .line 42
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d0:I

    .line 43
    :cond_b
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    if-eq p1, v2, :cond_c

    .line 44
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:I

    .line 45
    :cond_c
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    if-eq p1, v2, :cond_d

    .line 46
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:I

    .line 47
    :cond_d
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    if-eq p1, v2, :cond_e

    .line 48
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f0:I

    .line 49
    :cond_e
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->x:I

    if-eq p1, v2, :cond_f

    .line 50
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g0:I

    .line 51
    :cond_f
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->y:I

    if-eq p1, v2, :cond_10

    .line 52
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->h0:I

    .line 53
    :cond_10
    :goto_3
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->r:I

    if-ne p1, v2, :cond_14

    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->s:I

    if-ne p1, v2, :cond_14

    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->q:I

    if-ne p1, v2, :cond_14

    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->p:I

    if-ne p1, v2, :cond_14

    .line 54
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f:I

    if-eq p1, v2, :cond_11

    .line 55
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e0:I

    .line 56
    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gtz p1, :cond_12

    if-lez v1, :cond_12

    .line 57
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_4

    .line 58
    :cond_11
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->g:I

    if-eq p1, v2, :cond_12

    .line 59
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->f0:I

    .line 60
    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gtz p1, :cond_12

    if-lez v1, :cond_12

    .line 61
    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 62
    :cond_12
    :goto_4
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d:I

    if-eq p1, v2, :cond_13

    .line 63
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->c0:I

    .line 64
    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v0, :cond_14

    .line 65
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_5

    .line 66
    :cond_13
    iget p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->e:I

    if-eq p1, v2, :cond_14

    .line 67
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->d0:I

    .line 68
    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v0, :cond_14

    .line 69
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_14
    :goto_5
    return-void
.end method
