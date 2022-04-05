.class public Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;
.super Landroid/view/View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$c;,
        Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$e;,
        Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$f;,
        Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;
    }
.end annotation


# instance fields
.field private A:I

.field private A0:F

.field private B:I

.field private B0:F

.field private C:I

.field private C0:I

.field private D:I

.field private D0:I

.field private E:Ljava/lang/String;

.field private E0:I

.field private F:Ljava/lang/String;

.field private F0:I

.field private G:Ljava/lang/String;

.field private G0:I

.field private H:Ljava/lang/String;

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Landroidx/core/widget/i;

.field private V:Landroid/view/VelocityTracker;

.field private W:Landroid/graphics/Paint;

.field private a:I

.field private b:I

.field private b0:Landroid/text/TextPaint;

.field private c:I

.field private c0:Landroid/graphics/Paint;

.field private d:I

.field private d0:[Ljava/lang/String;

.field private e:I

.field private e0:[Ljava/lang/CharSequence;

.field private f:I

.field private f0:[Ljava/lang/CharSequence;

.field private g:I

.field private g0:Landroid/os/HandlerThread;

.field private h:I

.field private h0:Landroid/os/Handler;

.field private i:I

.field private i0:Landroid/os/Handler;

.field private j:I

.field private j0:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$f;

.field private k:I

.field private k0:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;

.field private l:I

.field private l0:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$c;

.field private m:I

.field private m0:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$e;

.field private n:I

.field private n0:I

.field private o:I

.field private o0:I

.field private p:I

.field private p0:I

.field private q:I

.field private q0:I

.field private r:I

.field private r0:I

.field private s:I

.field private s0:F

.field private t:I

.field private t0:F

.field private u:I

.field private u0:F

.field private v:I

.field private v0:Z

.field private w:I

.field private w0:I

.field private x:I

.field private x0:I

.field private y:I

.field private y0:I

.field private z:I

.field private z0:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, -0xcccccd

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a:I

    const v0, -0xff8901

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->j:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->k:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->l:I

    const v1, -0xa9ced

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->r:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->s:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->x:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->z:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->A:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    const/16 v1, 0x96

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->C:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->I:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->J:F

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->K:F

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->L:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->M:Z

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->O:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->P:Z

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->R:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->S:Z

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->T:Z

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->W:Landroid/graphics/Paint;

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c0:Landroid/graphics/Paint;

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n0:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->s0:F

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t0:F

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u0:F

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v0:Z

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->C0:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D0:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->F0:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->G0:I

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, -0xcccccd

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a:I

    const v0, -0xff8901

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->j:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->k:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->l:I

    const v1, -0xa9ced

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->r:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->s:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->x:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->z:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->A:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    const/16 v1, 0x96

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->C:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->I:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->J:F

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->K:F

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->L:F

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->M:Z

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->O:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->P:Z

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->R:Z

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->S:Z

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->T:Z

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->W:Landroid/graphics/Paint;

    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c0:Landroid/graphics/Paint;

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n0:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->s0:F

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t0:F

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u0:F

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v0:Z

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->C0:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D0:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->F0:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->G0:I

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p3, -0xcccccd

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a:I

    const p3, -0xff8901

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c:I

    const/4 p3, 0x0

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->j:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->k:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->l:I

    const v0, -0xa9ced

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->r:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->s:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->x:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->z:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->A:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->C:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->I:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->J:F

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->K:F

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->L:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->M:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    iput-boolean p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->O:Z

    iput-boolean p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->P:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    iput-boolean p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->R:Z

    iput-boolean p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->S:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->T:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->W:Landroid/graphics/Paint;

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c0:Landroid/graphics/Paint;

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n0:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->s0:F

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t0:F

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u0:F

    iput-boolean p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v0:Z

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->C0:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D0:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->F0:I

    iput p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->G0:I

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(FFF)F
    .locals 0

    sub-float/2addr p3, p2

    mul-float p3, p3, p1

    add-float/2addr p2, p3

    return p2
.end method

.method private a(Landroid/graphics/Paint$FontMetrics;)F
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    return p1
.end method

.method private a(FII)I
    .locals 7

    const/high16 v0, -0x1000000

    and-int v1, p2, v0

    ushr-int/lit8 v1, v1, 0x18

    const/high16 v2, 0xff0000

    and-int v3, p2, v2

    ushr-int/lit8 v3, v3, 0x10

    const v4, 0xff00

    and-int v5, p2, v4

    ushr-int/lit8 v5, v5, 0x8

    and-int/lit16 p2, p2, 0xff

    ushr-int/lit8 p2, p2, 0x0

    and-int/2addr v0, p3

    ushr-int/lit8 v0, v0, 0x18

    and-int/2addr v2, p3

    ushr-int/lit8 v2, v2, 0x10

    and-int/2addr v4, p3

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 p3, p3, 0xff

    ushr-int/lit8 p3, p3, 0x0

    int-to-float v6, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, p1

    add-float/2addr v6, v0

    float-to-int v0, v6

    int-to-float v1, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    int-to-float v2, v5

    sub-int/2addr v4, v5

    int-to-float v3, v4

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v3, p2

    sub-int/2addr p3, p2

    int-to-float p2, p3

    mul-float p2, p2, p1

    add-float/2addr v3, p2

    float-to-int p1, v3

    shl-int/lit8 p2, v0, 0x18

    shl-int/lit8 p3, v1, 0x10

    or-int/2addr p2, p3

    shl-int/lit8 p3, v2, 0x8

    or-int/2addr p2, p3

    or-int/2addr p1, p2

    return p1
.end method

.method private a(IIZ)I
    .locals 0

    if-gtz p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p3, :cond_1

    rem-int/2addr p1, p2

    if-gez p1, :cond_1

    add-int/2addr p1, p2

    :cond_1
    return p1
.end method

.method private a(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method private a(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a([Ljava/lang/CharSequence;Landroid/graphics/Paint;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v3, p1, v0

    if-eqz v3, :cond_1

    invoke-direct {p0, v3, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private a(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;IIILjava/lang/Object;)Landroid/os/Message;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)Landroidx/core/widget/i;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroidx/core/widget/i;

    return-object p0
.end method

.method private a(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    if-ge p1, v0, :cond_0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h(I)V

    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m0:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$e;

    invoke-interface {v0, p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$e;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;II)V

    return-void
.end method

.method private a(IILjava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g(I)V

    if-eq p1, p2, :cond_2

    if-eqz p3, :cond_0

    instance-of v1, p3, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_0
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->k0:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;

    if-eqz p3, :cond_1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    add-int v2, p1, v1

    add-int/2addr v1, p2

    invoke-interface {p3, p0, v2, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;II)V

    :cond_1
    iget-object p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->j0:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$f;

    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d0:[Ljava/lang/String;

    invoke-interface {p3, p0, p1, p2, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$f;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;II[Ljava/lang/String;)V

    :cond_2
    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    iget-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->R:Z

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->R:Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e()V

    :cond_3
    return-void
.end method

.method private a(IZ)V
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->C0:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IIZ)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->C0:I

    iget p2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    if-nez p2, :cond_0

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->O:Z

    goto :goto_0

    :cond_0
    mul-int p2, p2, p1

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    iget p2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o0:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result p2

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o0:I

    if-gez p1, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o0:I

    :cond_1
    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o0:I

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p0:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b()V

    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroidx/core/widget/i;->a(Landroid/content/Context;)Landroidx/core/widget/i;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroidx/core/widget/i;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->C:I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    const/high16 v1, 0x41600000    # 14.0f

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    if-nez v0, :cond_1

    const/high16 v0, 0x41800000    # 16.0f

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f:I

    if-nez v0, :cond_2

    invoke-direct {p0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f:I

    :cond_2
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i:I

    const/high16 v1, 0x41000000    # 8.0f

    if-nez v0, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i:I

    :cond_3
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->j:I

    if-nez v0, :cond_4

    invoke-direct {p0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->j:I

    :cond_4
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->W:Landroid/graphics/Paint;

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->W:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->W:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->W:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a:I

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c0:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c:I

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c0:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c0:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f:I

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_5

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    :cond_5
    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_6

    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    if-ne p1, v0, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n()V

    :cond_7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    if-nez p2, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/R$styleable;->NumberPickerView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1d

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    const/16 v4, 0x11

    const/4 v5, 0x3

    if-ne v3, v4, :cond_1

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    goto/16 :goto_1

    :cond_1
    if-ne v3, v5, :cond_2

    const v4, -0xa9ced

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m:I

    goto/16 :goto_1

    :cond_2
    const/4 v4, 0x4

    const/4 v5, 0x2

    if-ne v3, v4, :cond_3

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n:I

    goto/16 :goto_1

    :cond_3
    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    goto/16 :goto_1

    :cond_4
    const/4 v4, 0x6

    if-ne v3, v4, :cond_5

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    goto/16 :goto_1

    :cond_5
    const/16 v4, 0x13

    if-ne v3, v4, :cond_6

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d0:[Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    const/16 v4, 0x15

    if-ne v3, v4, :cond_7

    const v4, -0xcccccd

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a:I

    goto/16 :goto_1

    :cond_7
    const/16 v4, 0x16

    const v6, -0xff8901

    if-ne v3, v4, :cond_8

    invoke-virtual {p2, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b:I

    goto/16 :goto_1

    :cond_8
    const/16 v4, 0x14

    if-ne v3, v4, :cond_9

    invoke-virtual {p2, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c:I

    goto/16 :goto_1

    :cond_9
    const/16 v4, 0x19

    const/high16 v6, 0x41600000    # 14.0f

    if-ne v3, v4, :cond_a

    invoke-direct {p0, p1, v6}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    goto/16 :goto_1

    :cond_a
    const/16 v4, 0x1a

    if-ne v3, v4, :cond_b

    const/high16 v4, 0x41800000    # 16.0f

    invoke-direct {p0, p1, v4}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    goto/16 :goto_1

    :cond_b
    const/16 v4, 0x18

    if-ne v3, v4, :cond_c

    invoke-direct {p0, p1, v6}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f:I

    goto/16 :goto_1

    :cond_c
    const/16 v4, 0xe

    if-ne v3, v4, :cond_d

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    goto/16 :goto_1

    :cond_d
    const/16 v4, 0xd

    if-ne v3, v4, :cond_e

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    goto/16 :goto_1

    :cond_e
    const/16 v4, 0x1b

    const/4 v6, 0x1

    if-ne v3, v4, :cond_f

    invoke-virtual {p2, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    goto/16 :goto_1

    :cond_f
    const/16 v4, 0x12

    if-ne v3, v4, :cond_10

    invoke-virtual {p2, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->M:Z

    goto/16 :goto_1

    :cond_10
    const/16 v4, 0x8

    if-ne v3, v4, :cond_11

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E:Ljava/lang/String;

    goto/16 :goto_1

    :cond_11
    if-nez v3, :cond_12

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->H:Ljava/lang/String;

    goto/16 :goto_1

    :cond_12
    const/4 v4, 0x7

    if-ne v3, v4, :cond_13

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->G:Ljava/lang/String;

    goto/16 :goto_1

    :cond_13
    const/16 v4, 0xc

    const/high16 v7, 0x41000000    # 8.0f

    if-ne v3, v4, :cond_14

    invoke-direct {p0, p1, v7}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i:I

    goto :goto_1

    :cond_14
    const/16 v4, 0xb

    if-ne v3, v4, :cond_15

    invoke-direct {p0, p1, v7}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->j:I

    goto :goto_1

    :cond_15
    const/16 v4, 0xa

    if-ne v3, v4, :cond_16

    const/high16 v4, 0x40000000    # 2.0f

    invoke-direct {p0, p1, v4}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->k:I

    goto :goto_1

    :cond_16
    const/16 v4, 0x9

    if-ne v3, v4, :cond_17

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {p0, p1, v4}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->l:I

    goto :goto_1

    :cond_17
    if-ne v3, v6, :cond_18

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e0:[Ljava/lang/CharSequence;

    goto :goto_1

    :cond_18
    if-ne v3, v5, :cond_19

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f0:[Ljava/lang/CharSequence;

    goto :goto_1

    :cond_19
    const/16 v4, 0x10

    if-ne v3, v4, :cond_1a

    invoke-virtual {p2, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->S:Z

    goto :goto_1

    :cond_1a
    const/16 v4, 0xf

    if-ne v3, v4, :cond_1b

    invoke-virtual {p2, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->T:Z

    goto :goto_1

    :cond_1b
    const/16 v4, 0x17

    if-ne v3, v4, :cond_1c

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->F:Ljava/lang/String;

    :cond_1c
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1d
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_6

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D0:I

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    mul-int v5, v5, v2

    add-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->C0:I

    add-int/2addr v5, v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v6

    iget-boolean v7, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    invoke-direct {p0, v5, v6, v7}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IIZ)I

    move-result v5

    iget v6, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/lit8 v7, v6, 0x2

    if-ne v2, v7, :cond_1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D0:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    int-to-float v1, v1

    div-float/2addr v4, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a:I

    iget v6, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b:I

    invoke-direct {p0, v4, v1, v6}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(FII)I

    move-result v1

    iget v6, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    int-to-float v6, v6

    iget v7, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    int-to-float v7, v7

    invoke-direct {p0, v4, v6, v7}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(FFF)F

    move-result v6

    iget v7, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->J:F

    iget v8, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->K:F

    invoke-direct {p0, v4, v7, v8}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(FFF)F

    move-result v7

    goto :goto_2

    :cond_1
    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v4

    if-ne v2, v6, :cond_2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v1

    iget v6, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a:I

    iget v7, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b:I

    invoke-direct {p0, v4, v6, v7}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(FII)I

    move-result v6

    iget v7, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    int-to-float v7, v7

    iget v8, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    int-to-float v8, v8

    invoke-direct {p0, v4, v7, v8}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(FFF)F

    move-result v7

    iget v8, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->J:F

    iget v9, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->K:F

    invoke-direct {p0, v4, v8, v9}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(FFF)F

    move-result v4

    move v10, v4

    move v4, v1

    move v1, v6

    move v6, v7

    move v7, v10

    goto :goto_2

    :cond_2
    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a:I

    iget v6, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    int-to-float v6, v6

    iget v7, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->J:F

    move v10, v4

    move v4, v1

    move v1, v10

    :goto_2
    iget-object v8, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    invoke-virtual {v8, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    if-ltz v5, :cond_4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v1

    if-ge v5, v1, :cond_4

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d0:[Ljava/lang/String;

    iget v6, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    add-int/2addr v5, v6

    aget-object v1, v1, v5

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->F:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v8, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->l:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    int-to-float v6, v6

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getEllipsizeType()Landroid/text/TextUtils$TruncateAt;

    move-result-object v8

    invoke-static {v1, v5, v6, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B0:F

    iget v6, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v3, v6

    add-float/2addr v3, v7

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v5, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->G:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->G:Ljava/lang/String;

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B0:F

    iget v6, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v3, v6

    add-float/2addr v3, v7

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v5, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    if-ge v0, v1, :cond_1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    mul-int v2, v1, v0

    int-to-float v2, v2

    cmpg-float v2, v2, p1

    if-gtz v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    mul-int v1, v1, v2

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g(I)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IILjava/lang/Object;)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->k()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->j()V

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->F0:I

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->G0:I

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i0:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private a([Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private b(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float p2, p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n0:I

    return p0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c(I)I

    move-result p0

    return p0
.end method

.method private b(I)Landroid/os/Message;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .locals 4

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    int-to-float v0, v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->C0:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    mul-int v3, v0, v2

    sub-int/2addr v1, v3

    neg-int v1, v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D0:I

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m0:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$e;

    if-eqz v3, :cond_3

    neg-int v1, v1

    div-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p0:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p0:I

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p0:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p0:I

    if-gez v0, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p0:I

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o0:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p0:I

    if-eq v0, v1, :cond_2

    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(II)V

    :cond_2
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p0:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o0:I

    :cond_3
    return-void
.end method

.method private b(IZ)V
    .locals 8

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getPickedIndexRelativeToRaw()I

    move-result v0

    add-int v1, v0, p1

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    if-le v1, v2, :cond_1

    :goto_0
    sub-int p1, v2, v0

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    if-ge v1, v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D0:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    neg-int v2, v1

    div-int/lit8 v2, v2, 0x2

    const/high16 v3, 0x43960000    # 300.0f

    if-ge v0, v2, :cond_4

    add-int v2, v1, v0

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float v0, v0, v3

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    if-gez p1, :cond_3

    neg-int v0, v0

    mul-int/lit16 v1, p1, 0x12c

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_3
    mul-int/lit16 v1, p1, 0x12c

    add-int/2addr v0, v1

    :goto_2
    move v1, v0

    move v0, v2

    goto :goto_3

    :cond_4
    neg-int v2, v0

    int-to-float v2, v2

    mul-float v2, v2, v3

    int-to-float v1, v1

    div-float/2addr v2, v1

    float-to-int v1, v2

    if-gez p1, :cond_5

    mul-int/lit16 v2, p1, 0x12c

    sub-int/2addr v1, v2

    goto :goto_3

    :cond_5
    mul-int/lit16 v2, p1, 0x12c

    add-int/2addr v1, v2

    :goto_3
    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    mul-int p1, p1, v2

    add-int v6, v0, p1

    const/16 p1, 0x12c

    if-ge v1, p1, :cond_6

    const/16 v1, 0x12c

    :cond_6
    const/16 p1, 0x258

    if-le v1, p1, :cond_7

    const/16 v1, 0x258

    :cond_7
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroidx/core/widget/i;

    const/4 v3, 0x0

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    const/4 v5, 0x0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, Landroidx/core/widget/i;->a(IIIII)V

    const/4 p1, 0x1

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h0:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(I)Landroid/os/Message;

    move-result-object p1

    div-int/lit8 v1, v1, 0x4

    int-to-long v0, v1

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h0:Landroid/os/Handler;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p2}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p2, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    div-int/lit8 v1, v1, 0x4

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E:Ljava/lang/String;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B0:F

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->x:I

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->z0:F

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->A0:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->L:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c0:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d0:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o()V

    return-void
.end method

.method private c(I)I
    .locals 3

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    div-int/2addr p1, v0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v0

    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IIZ)I

    move-result p1

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    add-int/2addr p1, v0

    return p1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWillPickIndexByGlobalY illegal index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " getOneRecycleSize() : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mWrapSelectorWheel : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d0:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d0:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    :cond_0
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 7

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->M:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->z0:F

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w0:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->z0:F

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->W:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    add-int/2addr v0, v1

    int-to-float v2, v0

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->A0:F

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w0:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    sub-int/2addr v0, v1

    int-to-float v4, v0

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->A0:F

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->W:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->T:Z

    return p0
.end method

.method private d(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-eqz v0, :cond_0

    return p1

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->r0:I

    if-ge p1, v0, :cond_1

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q0:I

    if-le p1, v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i0:Landroid/os/Handler;

    return-object p0
.end method

.method private d()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerThread-For-Refreshing"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g0:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$a;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g0:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$a;-><init>(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h0:Landroid/os/Handler;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$b;-><init>(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i0:Landroid/os/Handler;

    return-void
.end method

.method private e(I)I
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->G0:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y:I

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->k:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    mul-int v1, v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    return p1
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h0:Landroid/os/Handler;

    return-object p0
.end method

.method private e()V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getPickedIndexRelativeToRaw()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IZ)V

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method private f(I)I
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->F0:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g:I

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->j:I

    :goto_0
    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g:I

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i:I

    :goto_1
    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->z:I

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->x:I

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->A:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g:I

    iget v6, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v2, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->l:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_3

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_2
    return p1
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D0:I

    return p0
.end method

.method private f()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->V:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->V:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->V:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    return p0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h0:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private g(I)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n0:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n0:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->l0:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$c;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;I)V

    :cond_1
    return-void
.end method

.method private getEllipsizeType()Landroid/text/TextUtils$TruncateAt;
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->F:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x4009266b

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, 0x188db

    if-eq v1, v2, :cond_1

    const v2, 0x68ac462

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const-string v1, "middle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-ne v0, v3, :cond_4

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal text ellipsize type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    return-object v0

    :cond_6
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    return p0
.end method

.method private h()V
    .locals 5

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/lit8 v1, v0, 0x2

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->s:I

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->x0:I

    mul-int v1, v1, v3

    div-int/2addr v1, v0

    int-to-float v1, v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->z0:F

    mul-int v2, v2, v3

    div-int/2addr v2, v0

    int-to-float v0, v2

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->A0:F

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    if-gez v0, :cond_1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    add-int/2addr v0, v1

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w0:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    add-int/2addr v0, v1

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w0:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    int-to-float v3, v2

    int-to-float v0, v0

    int-to-float v4, v2

    mul-float v4, v4, v0

    add-int/2addr v2, v1

    int-to-float v2, v2

    div-float/2addr v4, v2

    sub-float/2addr v3, v4

    float-to-int v2, v3

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    int-to-float v3, v1

    int-to-float v4, v1

    mul-float v0, v0, v4

    add-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    sub-float/2addr v3, v0

    float-to-int v0, v3

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    :cond_3
    return-void
.end method

.method private h(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(IZ)V

    return-void
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    return p0
.end method

.method private i()V
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    if-le v0, v1, :cond_0

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    if-le v0, v1, :cond_1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c0:Landroid/graphics/Paint;

    if-eqz v0, :cond_3

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c0:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->L:F

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E:Ljava/lang/String;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c0:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->K:F

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->J:F

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mPaintText should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mPaintHint should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j()V
    .locals 5

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d0:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->x:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e0:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->z:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f0:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->A:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->H:Ljava/lang/String;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private l()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q0:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    neg-int v0, v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    mul-int v0, v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->r0:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d0:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    mul-int v0, v0, v2

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q0:I

    div-int/lit8 v1, v1, 0x2

    neg-int v0, v1

    mul-int v0, v0, v2

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->r0:I

    :cond_0
    return-void
.end method

.method private m()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d0:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    return-void
.end method

.method private n()V
    .locals 3

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o()V

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d0:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    invoke-virtual {p0, v0, v2, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setMinAndMaxShowIndex(IIZ)V

    return-void
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d0:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroidx/core/widget/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/core/widget/i;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroidx/core/widget/i;

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroidx/core/widget/i;->c()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroidx/core/widget/i;->a(IIIII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroidx/core/widget/i;

    invoke-virtual {v0}, Landroidx/core/widget/i;->a()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getMinValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getMaxValue()I

    move-result v1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    sub-int v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setDisplayedValues([Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setMaxValue(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setMaxValue(I)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setDisplayedValues([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public computeScroll()V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroidx/core/widget/i;

    invoke-virtual {v0}, Landroidx/core/widget/i;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroidx/core/widget/i;

    invoke-virtual {v0}, Landroidx/core/widget/i;->c()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public getContentByCurrValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d0:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getValue()I

    move-result v1

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d0:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    return v0
.end method

.method public getOneRecycleSize()I
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getPickedIndexRelativeToRaw()I
    .locals 3

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D0:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    neg-int v2, v1

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c(I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public getRawContentSize()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d0:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getPickedIndexRelativeToRaw()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    return v0
.end method

.method public getWrapSelectorWheelAbsolutely()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g0:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g0:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroidx/core/widget/i;

    invoke-virtual {v0}, Landroidx/core/widget/i;->d()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroidx/core/widget/i;

    invoke-virtual {v0}, Landroidx/core/widget/i;->a()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroidx/core/widget/i;

    invoke-virtual {v0}, Landroidx/core/widget/i;->c()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b()V

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D0:I

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    neg-int v2, v1

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    add-int/2addr v2, v1

    add-int/2addr v2, v0

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    :goto_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b()V

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g(I)V

    :cond_3
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c(I)I

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    if-eq v0, v1, :cond_5

    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->S:Z

    if-eqz v2, :cond_5

    :try_start_0
    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->k0:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->k0:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    add-int/2addr v3, v0

    invoke-interface {v2, p0, v1, v3}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;II)V

    :cond_4
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->j0:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$f;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->j0:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$f;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d0:[Ljava/lang/String;

    invoke-interface {v1, p0, v2, v0, v3}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$f;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;II[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_1
    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Z)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w0:I

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->x0:I

    iget p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/2addr p2, p3

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B0:F

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-le p1, p3, :cond_1

    iget-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->P:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getValue()I

    move-result p1

    iget p4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    sub-int/2addr p1, p4

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->O:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->C0:I

    iget p4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    sub-int/2addr p4, p3

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p1, p4

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-boolean p4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz p4, :cond_2

    iget-boolean p4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-eqz p4, :cond_2

    const/4 p2, 0x1

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IZ)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->l()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h()V

    iput-boolean p3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->P:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y0:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->V:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->V:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->V:Landroid/view/VelocityTracker;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u0:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_8

    const-wide/16 v5, 0x0

    const/4 v7, 0x2

    if-eq v1, v2, :cond_5

    if-eq v1, v7, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    goto/16 :goto_1

    :cond_2
    iget v1, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    int-to-float v1, v1

    iput v1, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->s0:F

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a()V

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h0:Landroid/os/Handler;

    invoke-direct {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    :cond_3
    iget v1, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t0:F

    iget v3, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u0:F

    sub-float/2addr v1, v3

    iget-boolean v3, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v0:Z

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D:I

    neg-int v5, v3

    int-to-float v5, v5

    cmpg-float v5, v5, v1

    if-gez v5, :cond_4

    int-to-float v3, v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_4

    goto :goto_0

    :cond_4
    iput-boolean v4, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v0:Z

    iget v3, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->s0:F

    add-float/2addr v3, v1

    float-to-int v1, v3

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d(I)I

    move-result v1

    iput v1, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    invoke-direct/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b()V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    :goto_0
    invoke-direct {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g(I)V

    goto :goto_1

    :cond_5
    iget-boolean v1, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v0:Z

    if-eqz v1, :cond_6

    invoke-direct/range {p0 .. p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_6
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->V:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    iget v3, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->I:F

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->C:I

    if-le v3, v4, :cond_7

    iget-object v8, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroidx/core/widget/i;

    const/4 v9, 0x0

    iget v10, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    const/4 v11, 0x0

    neg-int v12, v1

    const/high16 v13, -0x80000000

    const v14, 0x7fffffff

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d(I)I

    move-result v15

    const v1, 0x7fffffff

    invoke-direct {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d(I)I

    move-result v16

    invoke-virtual/range {v8 .. v16}, Landroidx/core/widget/i;->a(IIIIIIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    invoke-direct {v0, v7}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g(I)V

    :cond_7
    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h0:Landroid/os/Handler;

    invoke-direct {v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f()V

    goto :goto_1

    :cond_8
    iput-boolean v2, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v0:Z

    iget-object v1, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h0:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a()V

    iget v1, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u0:F

    iput v1, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t0:F

    iget v1, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E0:I

    int-to-float v1, v1

    iput v1, v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->s0:F

    invoke-direct {v0, v4}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :goto_1
    return v2
.end method

.method public setContentTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b0:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a()V

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    array-length v2, p1

    if-gt v0, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b([Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Z)V

    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    const/4 v0, 0x0

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    iget-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IZ)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i0:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxValue - mMinValue + 1 should not be greater than mDisplayedValues.length, now ((mMaxValue - mMinValue + 1) is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w:I

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " newDisplayedValues.length is "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", you need to set MaxValue and MinValue before setDisplayedValues(String[])"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "newDisplayedValues should not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDisplayedValues([Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setDisplayedValuesAndPickedIndex([Ljava/lang/String;IZ)V

    return-void
.end method

.method public setDisplayedValuesAndPickedIndex([Ljava/lang/String;IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a()V

    if-eqz p1, :cond_3

    if-ltz p2, :cond_2

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b([Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Z)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->l()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m()V

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IZ)V

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h0:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pickedIndex should not be negative, now pickedIndex is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "newDisplayedValues should not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDividerColor(I)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->W:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setFriction(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    div-float/2addr v0, p1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->I:F

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "you should set a a positive float friction, now friction is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHintText(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E:Ljava/lang/String;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c0:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/graphics/Paint$FontMetrics;)F

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->L:F

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c0:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g:I

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i0:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setHintTextColor(I)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c0:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setHintTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c0:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setMaxValue(I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d0:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    sub-int v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    array-length v0, v0

    if-gt v2, v0, :cond_0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w:I

    sub-int/2addr p1, v1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    invoke-virtual {p0, v0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setMinAndMaxShowIndex(II)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->l()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(maxValue - mMinValue + 1) should not be greater than mDisplayedValues.length now  (maxValue - mMinValue + 1) is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " and mDisplayedValues.length is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d0:[Ljava/lang/String;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "mDisplayedValues should not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinAndMaxShowIndex(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setMinAndMaxShowIndex(IIZ)V

    return-void
.end method

.method public setMinAndMaxShowIndex(IIZ)V
    .locals 3

    if-gt p1, p2, :cond_7

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d0:[Ljava/lang/String;

    if-eqz v0, :cond_6

    if-ltz p1, :cond_5

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-gt p1, v1, :cond_4

    if-ltz p2, :cond_3

    array-length v0, v0

    sub-int/2addr v0, v2

    if-gt p2, v0, :cond_2

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    add-int/2addr p1, p2

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    iget-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, p2, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IZ)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maxShowIndex should not be greater than (mDisplayedValues.length - 1), now (mDisplayedValues.length - 1) is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d0:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " maxShowIndex is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "maxShowIndex should not be less than 0, now maxShowIndex is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "minShowIndex should not be greater than (mDisplayedValues.length - 1), now (mDisplayedValues.length - 1) is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d0:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " minShowIndex is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "minShowIndex should not be less than 0, now minShowIndex is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mDisplayedValues should not be null, you need to set mDisplayedValues first."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "minShowIndex should be less than maxShowIndex, minShowIndex is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", maxShowIndex is "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public setMinValue(I)V
    .locals 0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->l()V

    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setOnScrollListener(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->l0:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$c;

    return-void
.end method

.method public setOnValueChangeListenerInScrolling(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$e;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m0:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$e;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->k0:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;

    return-void
.end method

.method public setOnValueChangedListenerRelativeToRaw(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$f;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->j0:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$f;

    return-void
.end method

.method public setPickedIndexRelativeToMin(I)V
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IZ)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public setPickedIndexRelativeToRaw(I)V
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    if-gt v0, p1, :cond_1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    if-gt p1, v1, :cond_1

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    sub-int/2addr p1, v0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IZ)V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setTextSizeNormal(I)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setTextSizeSelected(I)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setValue(I)V
    .locals 3

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    if-lt p1, v0, :cond_1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w:I

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setPickedIndexRelativeToRaw(I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "should not set a value greater than mMaxValue, value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "should not set a value less than mMinValue, value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eq v0, p1, :cond_2

    if-nez p1, :cond_1

    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n0:I

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->R:Z

    goto :goto_0

    :cond_1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_2
    :goto_0
    return-void
.end method
