.class public Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;
.super Landroid/view/View;
.source "NumberPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$a;,
        Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$c;,
        Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;,
        Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$b;
    }
.end annotation


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

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

.field private U:Landroid/support/v4/widget/ScrollerCompat;

.field private V:Landroid/view/VelocityTracker;

.field private W:Landroid/graphics/Paint;

.field private a:I

.field private aA:F

.field private aB:I

.field private aC:I

.field private aD:I

.field private aE:I

.field private aF:I

.field private aa:Landroid/text/TextPaint;

.field private ab:Landroid/graphics/Paint;

.field private ac:[Ljava/lang/String;

.field private ad:[Ljava/lang/CharSequence;

.field private ae:[Ljava/lang/CharSequence;

.field private af:Landroid/os/HandlerThread;

.field private ag:Landroid/os/Handler;

.field private ah:Landroid/os/Handler;

.field private ai:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;

.field private aj:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$b;

.field private ak:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$a;

.field private al:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$c;

.field private am:I

.field private an:I

.field private ao:I

.field private ap:I

.field private aq:I

.field private ar:F

.field private as:F

.field private at:F

.field private au:Z

.field private av:I

.field private aw:I

.field private ax:I

.field private ay:F

.field private az:F

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, -0x1

    const v4, -0xff8901

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, -0xcccccd

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a:I

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b:I

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->j:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->k:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->l:I

    const v0, -0xa9ced

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->r:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->s:I

    iput v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    iput v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->x:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->z:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->A:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->C:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->I:F

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->J:F

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->K:F

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->L:F

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->M:Z

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->O:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->P:Z

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->R:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->S:Z

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->T:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->W:Landroid/graphics/Paint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ab:Landroid/graphics/Paint;

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->am:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ar:F

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->as:F

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->at:F

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->au:Z

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aB:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aE:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aF:I

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, -0x1

    const v4, -0xff8901

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, -0xcccccd

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a:I

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b:I

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->j:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->k:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->l:I

    const v0, -0xa9ced

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->r:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->s:I

    iput v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    iput v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->x:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->z:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->A:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->C:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->I:F

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->J:F

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->K:F

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->L:F

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->M:Z

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->O:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->P:Z

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->R:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->S:Z

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->T:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->W:Landroid/graphics/Paint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ab:Landroid/graphics/Paint;

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->am:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ar:F

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->as:F

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->at:F

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->au:Z

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aB:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aE:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aF:I

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, -0x1

    const v4, -0xff8901

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, -0xcccccd

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a:I

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b:I

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->j:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->k:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->l:I

    const v0, -0xa9ced

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->r:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->s:I

    iput v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    iput v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->x:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->z:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->A:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->C:I

    const/16 v0, 0x8

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->I:F

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->J:F

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->K:F

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->L:F

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->M:Z

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->O:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->P:Z

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->R:Z

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->S:Z

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->T:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->W:Landroid/graphics/Paint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ab:Landroid/graphics/Paint;

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->am:I

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ar:F

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->as:F

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->at:F

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->au:Z

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aB:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aE:I

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aF:I

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(FFF)F
    .locals 1

    sub-float v0, p3, p2

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    return v0
.end method

.method private a(Landroid/graphics/Paint$FontMetrics;)F
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    iget v1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private a(FII)I
    .locals 9

    const/high16 v5, 0xff0000

    const v6, 0xff00

    const/high16 v4, -0x1000000

    and-int v0, p2, v4

    ushr-int/lit8 v0, v0, 0x18

    and-int v1, p2, v5

    ushr-int/lit8 v1, v1, 0x10

    and-int v2, p2, v6

    ushr-int/lit8 v2, v2, 0x8

    and-int/lit16 v3, p2, 0xff

    ushr-int/lit8 v3, v3, 0x0

    and-int/2addr v4, p3

    ushr-int/lit8 v4, v4, 0x18

    and-int/2addr v5, p3

    ushr-int/lit8 v5, v5, 0x10

    and-int/2addr v6, p3

    ushr-int/lit8 v6, v6, 0x8

    and-int/lit16 v7, p3, 0xff

    ushr-int/lit8 v7, v7, 0x0

    int-to-float v8, v0

    sub-int v0, v4, v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v0, v8

    float-to-int v0, v0

    int-to-float v4, v1

    sub-int v1, v5, v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v4, v2

    sub-int v2, v6, v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    int-to-float v4, v3

    sub-int v3, v7, v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v3, v4

    float-to-int v3, v3

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, v3

    return v0
.end method

.method private a(IIZ)I
    .locals 1

    if-gtz p2, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p3, :cond_2

    rem-int v0, p1, p2

    if-gez v0, :cond_0

    add-int/2addr v0, p2

    goto :goto_0

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method private a(Landroid/content/Context;F)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private a(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a([Ljava/lang/CharSequence;Landroid/graphics/Paint;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    return v0

    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    if-eqz v3, :cond_2

    invoke-direct {p0, v3, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
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
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)Landroid/support/v4/widget/ScrollerCompat;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroid/support/v4/widget/ScrollerCompat;

    return-object v0
.end method

.method private a(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IZ)V

    return-void
.end method

.method private a(II)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->al:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$c;

    invoke-interface {v0, p0, p1, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$c;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;II)V

    return-void
.end method

.method private a(IILjava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(I)V

    if-eq p1, p2, :cond_2

    if-eqz p3, :cond_0

    instance-of v0, p3, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aj:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aj:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$b;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    add-int/2addr v2, p2

    invoke-interface {v0, p0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$b;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;II)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ai:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ai:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;II[Ljava/lang/String;)V

    :cond_2
    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->R:Z

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->R:Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c()V

    :cond_3
    return-void
.end method

.method private a(IZ)V
    .locals 8

    const/16 v5, 0x258

    const/16 v3, 0x12c

    const/4 v7, 0x1

    const/high16 v6, 0x43960000    # 300.0f

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getPickedIndexRelativeToRaw()I

    move-result v0

    add-int v2, v0, p1

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    if-le v2, v4, :cond_2

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    sub-int p1, v2, v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_4

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    float-to-int v2, v2

    if-gez p1, :cond_3

    neg-int v2, v2

    mul-int/lit16 v4, p1, 0x12c

    sub-int/2addr v2, v4

    :goto_1
    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    mul-int/2addr v4, p1

    add-int/2addr v4, v0

    if-ge v2, v3, :cond_8

    move v0, v3

    :goto_2
    if-le v0, v5, :cond_7

    :goto_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroid/support/v4/widget/ScrollerCompat;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    if-eqz p2, :cond_6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ag:Landroid/os/Handler;

    invoke-direct {p0, v7}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h(I)Landroid/os/Message;

    move-result-object v1

    div-int/lit8 v2, v5, 0x4

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_4
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->postInvalidate()V

    return-void

    :cond_2
    add-int v2, v0, p1

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    if-ge v2, v4, :cond_1

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    sub-int p1, v2, v0

    goto :goto_0

    :cond_3
    mul-int/lit16 v4, p1, 0x12c

    add-int/2addr v2, v4

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    neg-int v2, v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    float-to-int v2, v2

    if-gez p1, :cond_5

    mul-int/lit16 v4, p1, 0x12c

    sub-int/2addr v2, v4

    goto :goto_1

    :cond_5
    mul-int/lit16 v4, p1, 0x12c

    add-int/2addr v2, v4

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ag:Landroid/os/Handler;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p2}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-direct {p0, v7, v1, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    div-int/lit8 v2, v5, 0x4

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    :cond_7
    move v5, v0

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_2
.end method

.method private a(Landroid/content/Context;)V
    .locals 5

    const/4 v4, -0x1

    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v1, 0x41000000    # 8.0f

    const/4 v2, 0x1

    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->C:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1, v3}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    if-nez v0, :cond_1

    const/high16 v0, 0x41800000    # 16.0f

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f:I

    if-nez v0, :cond_2

    invoke-direct {p0, p1, v3}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f:I

    :cond_2
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i:I

    if-nez v0, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i:I

    :cond_3
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->j:I

    if-nez v0, :cond_4

    invoke-direct {p0, p1, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->j:I

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->W:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->W:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->W:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->W:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ab:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ab:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ab:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ab:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    :cond_5
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    if-eq v0, v4, :cond_6

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    if-ne v0, v4, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->l()V

    :cond_7
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const v9, -0xff8901

    const/high16 v8, 0x41600000    # 14.0f

    const/high16 v7, 0x41000000    # 8.0f

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/R$styleable;->NumberPickerView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1d

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    if-nez v4, :cond_2

    const/4 v5, 0x3

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const v5, -0xa9ced

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m:I

    goto :goto_2

    :cond_3
    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n:I

    goto :goto_2

    :cond_4
    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    goto :goto_2

    :cond_5
    const/4 v5, 0x4

    if-ne v4, v5, :cond_6

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    goto :goto_2

    :cond_6
    const/16 v5, 0xc

    if-ne v4, v5, :cond_7

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    goto :goto_2

    :cond_7
    const/4 v5, 0x6

    if-ne v4, v5, :cond_8

    const v5, -0xcccccd

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a:I

    goto :goto_2

    :cond_8
    const/4 v5, 0x7

    if-ne v4, v5, :cond_9

    invoke-virtual {v2, v4, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b:I

    goto :goto_2

    :cond_9
    const/16 v5, 0x8

    if-ne v4, v5, :cond_a

    invoke-virtual {v2, v4, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c:I

    goto :goto_2

    :cond_a
    const/16 v5, 0x9

    if-ne v4, v5, :cond_b

    invoke-direct {p0, p1, v8}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    goto :goto_2

    :cond_b
    const/16 v5, 0xa

    if-ne v4, v5, :cond_c

    const/high16 v5, 0x41800000    # 16.0f

    invoke-direct {p0, p1, v5}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    goto :goto_2

    :cond_c
    const/16 v5, 0xb

    if-ne v4, v5, :cond_d

    invoke-direct {p0, p1, v8}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f:I

    goto/16 :goto_2

    :cond_d
    const/16 v5, 0xd

    if-ne v4, v5, :cond_e

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    goto/16 :goto_2

    :cond_e
    const/16 v5, 0xe

    if-ne v4, v5, :cond_f

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    goto/16 :goto_2

    :cond_f
    const/16 v5, 0xf

    if-ne v4, v5, :cond_10

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    goto/16 :goto_2

    :cond_10
    if-ne v4, v6, :cond_11

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->M:Z

    goto/16 :goto_2

    :cond_11
    const/16 v5, 0x11

    if-ne v4, v5, :cond_12

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E:Ljava/lang/String;

    goto/16 :goto_2

    :cond_12
    const/16 v5, 0x1b

    if-ne v4, v5, :cond_13

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->H:Ljava/lang/String;

    goto/16 :goto_2

    :cond_13
    const/16 v5, 0x12

    if-ne v4, v5, :cond_14

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->G:Ljava/lang/String;

    goto/16 :goto_2

    :cond_14
    const/16 v5, 0x13

    if-ne v4, v5, :cond_15

    invoke-direct {p0, p1, v7}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i:I

    goto/16 :goto_2

    :cond_15
    const/16 v5, 0x14

    if-ne v4, v5, :cond_16

    invoke-direct {p0, p1, v7}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->j:I

    goto/16 :goto_2

    :cond_16
    const/16 v5, 0x16

    if-ne v4, v5, :cond_17

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {p0, p1, v5}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->k:I

    goto/16 :goto_2

    :cond_17
    const/16 v5, 0x15

    if-ne v4, v5, :cond_18

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-direct {p0, p1, v5}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->l:I

    goto/16 :goto_2

    :cond_18
    const/16 v5, 0x19

    if-ne v4, v5, :cond_19

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ad:[Ljava/lang/CharSequence;

    goto/16 :goto_2

    :cond_19
    const/16 v5, 0x1a

    if-ne v4, v5, :cond_1a

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ae:[Ljava/lang/CharSequence;

    goto/16 :goto_2

    :cond_1a
    const/16 v5, 0x10

    if-ne v4, v5, :cond_1b

    invoke-virtual {v2, v4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->S:Z

    goto/16 :goto_2

    :cond_1b
    const/16 v5, 0x17

    if-ne v4, v5, :cond_1c

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->T:Z

    goto/16 :goto_2

    :cond_1c
    const/16 v5, 0x18

    if-ne v4, v5, :cond_1

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->F:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1d
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 12

    const/4 v1, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_6

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    int-to-float v6, v3

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aB:I

    add-int v4, v3, v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v5

    iget-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-direct {p0, v4, v5, v3}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IIZ)I

    move-result v7

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/lit8 v3, v3, 0x2

    if-ne v0, v3, :cond_3

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    int-to-float v3, v3

    div-float v3, v2, v3

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a:I

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b:I

    invoke-direct {p0, v3, v2, v4}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(FII)I

    move-result v5

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    int-to-float v2, v2

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    int-to-float v4, v4

    invoke-direct {p0, v3, v2, v4}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(FFF)F

    move-result v4

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->J:F

    iget v8, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->K:F

    invoke-direct {p0, v3, v2, v8}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(FFF)F

    move-result v2

    move v11, v2

    move v2, v3

    move v3, v11

    :goto_2
    iget-object v8, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    invoke-virtual {v8, v5}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    if-ltz v7, :cond_5

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v4

    if-ge v7, v4, :cond_5

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    add-int/2addr v5, v7

    aget-object v4, v4, v5

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->F:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->l:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getEllipsizeType()Landroid/text/TextUtils$TruncateAt;

    move-result-object v8

    invoke-static {v4, v5, v7, v8}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aA:F

    iget v7, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float/2addr v3, v6

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    move v3, v1

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    if-ne v0, v3, :cond_4

    sub-float v3, v10, v2

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a:I

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b:I

    invoke-direct {p0, v3, v4, v5}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(FII)I

    move-result v5

    sub-float v3, v10, v2

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    int-to-float v4, v4

    iget v8, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    int-to-float v8, v8

    invoke-direct {p0, v3, v4, v8}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(FFF)F

    move-result v4

    sub-float v3, v10, v2

    iget v8, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->J:F

    iget v9, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->K:F

    invoke-direct {p0, v3, v8, v9}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(FFF)F

    move-result v3

    goto :goto_2

    :cond_4
    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a:I

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    int-to-float v4, v3

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->J:F

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->G:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->G:Ljava/lang/String;

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aA:F

    iget v7, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float/2addr v3, v6

    iget-object v6, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_6
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    mul-int/2addr v2, v0

    int-to-float v2, v2

    cmpg-float v2, v2, v1

    if-gtz v2, :cond_1

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e(I)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IILjava/lang/Object;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    const/high16 v1, -0x80000000

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->j()V

    if-eqz p1, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aE:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aF:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ah:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private a([Ljava/lang/CharSequence;)[Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, p1, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private b(Landroid/content/Context;F)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->am:I

    return v0
.end method

.method static synthetic b(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c(I)I

    move-result v0

    return v0
.end method

.method private b()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerThread-For-Refreshing"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->af:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->af:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->af:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$1;-><init>(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ag:Landroid/os/Handler;

    new-instance v0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$2;-><init>(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ah:Landroid/os/Handler;

    return-void
.end method

.method private b(I)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->am:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->am:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ak:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ak:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$a;

    invoke-interface {v0, p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$a;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;I)V

    goto :goto_0
.end method

.method private b(IZ)V
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aB:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aB:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aB:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->O:Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aB:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aB:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->an:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->an:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->an:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->an:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->an:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->an:I

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->an:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ao:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g()V

    goto :goto_0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 6

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->M:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ay:F

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->av:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ay:F

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->W:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    add-int/2addr v0, v1

    int-to-float v1, v0

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->az:F

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->av:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->az:F

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->W:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private b([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n()V

    return-void
.end method

.method private c(I)I
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    div-int v1, p1, v1

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v2

    iget-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v1, v2, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IIZ)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWillPickIndexByGlobalY illegal index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " getOneRecycleSize() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mWrapSelectorWheel : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic c(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ag:Landroid/os/Handler;

    return-object v0
.end method

.method private c()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getPickedIndexRelativeToRaw()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(IZ)V

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->postInvalidate()V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E:Ljava/lang/String;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aA:F

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->x:I

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ay:F

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->az:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->L:F

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ab:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private d(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aq:I

    if-ge p1, v0, :cond_2

    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aq:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ap:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ap:I

    goto :goto_0
.end method

.method static synthetic d(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    return v0
.end method

.method private d()V
    .locals 5

    const/4 v2, 0x0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->r:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->r:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->s:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->r:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aw:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ay:F

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->s:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aw:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->az:F

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    if-gez v0, :cond_0

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    if-gez v0, :cond_1

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    add-int/2addr v0, v1

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->av:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->av:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    int-to-float v1, v1

    int-to-float v2, v0

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    int-to-float v1, v1

    int-to-float v0, v0

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o:I

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->p:I

    goto :goto_0
.end method

.method static synthetic e(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    return v0
.end method

.method private e()V
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ab:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mPaintHint should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ab:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ab:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->L:F

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E:Ljava/lang/String;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ab:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mPaintText should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->K:F

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->J:F

    return-void
.end method

.method private e(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(I)V

    :cond_0
    return-void
.end method

.method private f(I)I
    .locals 8

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aE:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v0, 0x40000000    # 2.0f

    if-ne v3, v0, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g:I

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g:I

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-nez v4, :cond_3

    :goto_2
    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->z:I

    iget v5, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->x:I

    iget v6, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->A:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget v6, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g:I

    iget v7, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v1, v6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->l:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getPaddingRight()I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v0, v1

    const/high16 v1, -0x80000000

    if-ne v3, v1, :cond_0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->j:I

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->i:I

    goto :goto_2
.end method

.method static synthetic f(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    return v0
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ap:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    neg-int v0, v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aq:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ap:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aq:I

    :cond_0
    return-void
.end method

.method private g(I)I
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aF:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y:I

    iget v4, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->k:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    mul-int/2addr v1, v3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic g(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    return v0
.end method

.method private g()V
    .locals 3

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    int-to-float v0, v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aB:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aB:I

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    neg-int v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->al:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$c;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    neg-int v0, v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aB:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ao:I

    :goto_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ao:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ao:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ao:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ao:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ao:I

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->an:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ao:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ao:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->an:I

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(II)V

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ao:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->an:I

    :cond_2
    return-void

    :cond_3
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aB:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ao:I

    goto :goto_0
.end method

.method private getEllipsizeType()Landroid/text/TextUtils$TruncateAt;
    .locals 3

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->F:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal text ellipsize type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-string v2, "start"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "middle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "end"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :pswitch_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    :goto_1
    return-object v0

    :pswitch_1
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    :pswitch_2
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x4009266b -> :sswitch_1
        0x188db -> :sswitch_2
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private h(I)Landroid/os/Message;
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->V:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->V:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->V:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->V:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->T:Z

    return v0
.end method

.method static synthetic i(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ah:Landroid/os/Handler;

    return-object v0
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->x:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ad:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->z:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ae:[Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a([Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->A:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->H:Ljava/lang/String;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    invoke-direct {p0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private j()V
    .locals 6

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    float-to-double v2, v1

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->y:I

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private k()V
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    return-void
.end method

.method private l()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n()V

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    if-ne v0, v1, :cond_0

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setMinAndMaxShowIndex(IIZ)V

    return-void
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ag:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ag:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroid/support/v4/widget/ScrollerCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroid/support/v4/widget/ScrollerCompat;

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v2

    const/4 v5, 0x1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->postInvalidate()V

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

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setMaxValue(I)V

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setDisplayedValues([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->postInvalidate()V

    goto :goto_0
.end method

.method public getContentByCurrValue()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getValue()I

    move-result v1

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

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
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c(I)I

    move-result v0

    goto :goto_0
.end method

.method public getRawContentSize()I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->af:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->af:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->af:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g()V

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    :goto_1
    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g()V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(I)V

    :cond_2
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c(I)I

    move-result v1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    if-eq v1, v0, :cond_4

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->S:Z

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aj:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$b;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aj:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$b;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    add-int/2addr v3, v1

    invoke-interface {v0, p0, v2, v3}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$b;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;II)V

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ai:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ai:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    iget-object v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    invoke-interface {v0, p0, v2, v1, v3}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;->a(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;II[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    iput v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aC:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Z)V

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->av:I

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aw:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aw:I

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    div-int/2addr v0, v3

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->av:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aA:F

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v0

    if-le v0, v2, :cond_3

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->P:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getValue()I

    move-result v0

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    sub-int/2addr v0, v3

    :goto_0
    iget-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-eqz v3, :cond_0

    move v1, v2

    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(IZ)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d()V

    iput-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->P:Z

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->O:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aB:I

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->q:I

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const-wide/16 v10, 0x0

    const v6, 0x7fffffff

    const/high16 v5, -0x80000000

    const/4 v1, 0x0

    const/4 v9, 0x1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ax:I

    if-nez v0, :cond_0

    :goto_0
    return v9

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->V:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->V:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->V:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->at:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v9, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->au:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ag:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a()V

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->at:F

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->as:F

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    int-to-float v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ar:F

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->as:F

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->at:F

    sub-float/2addr v0, v2

    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->au:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, v2, v0

    if-gez v2, :cond_2

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->D:I

    int-to-float v2, v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    :goto_1
    invoke-direct {p0, v9}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(I)V

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->au:Z

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ar:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->invalidate()V

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->au:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->V:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->I:F

    mul-float/2addr v0, v2

    float-to-int v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->C:I

    if-le v0, v2, :cond_4

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->U:Landroid/support/v4/widget/ScrollerCompat;

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    neg-int v4, v3

    invoke-direct {p0, v5}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d(I)I

    move-result v7

    invoke-direct {p0, v6}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d(I)I

    move-result v8

    move v3, v1

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->invalidate()V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(I)V

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ag:Landroid/os/Handler;

    invoke-direct {p0, v9}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h()V

    goto/16 :goto_0

    :pswitch_3
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aD:I

    int-to-float v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ar:F

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ag:Landroid/os/Handler;

    invoke-direct {p0, v9}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v10, v11}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setContentTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aa:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->o()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newDisplayedValues should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w:I

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    array-length v3, p1

    if-le v2, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxValue - mMinValue + 1 should not be greater than mDisplayedValues.length, now ((mMaxValue - mMinValue + 1) is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w:I

    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " newDisplayedValues.length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", you need to set MaxValue and MinValue before setDisplayedValues(String[])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b([Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Z)V

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    add-int/lit8 v2, v2, 0x0

    iput v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-eqz v2, :cond_2

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(IZ)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->postInvalidate()V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ah:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public setDisplayedValues([Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setDisplayedValuesAndPickedIndex([Ljava/lang/String;IZ)V

    return-void
.end method

.method public setDisplayedValuesAndPickedIndex([Ljava/lang/String;IZ)V
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newDisplayedValues should not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pickedIndex should not be negative, now pickedIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b([Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Z)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f()V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->k()V

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-direct {p0, p2, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(IZ)V

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ag:Landroid/os/Handler;

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->h(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->postInvalidate()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDividerColor(I)V
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->W:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->postInvalidate()V

    goto :goto_0
.end method

.method public setFriction(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "you should set a a positive float friction, now friction is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    div-float/2addr v0, p1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->I:F

    return-void
.end method

.method public setHintText(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E:Ljava/lang/String;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ab:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->L:F

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->E:Ljava/lang/String;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ab:Landroid/graphics/Paint;

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a(Ljava/lang/CharSequence;Landroid/graphics/Paint;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->g:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ah:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setHintTextColor(I)V
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c:I

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ab:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->postInvalidate()V

    goto :goto_0
.end method

.method public setHintTextTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ab:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method

.method public setMaxValue(I)V
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mDisplayedValues should not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    sub-int v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    array-length v1, v1

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(maxValue - mMinValue + 1) should not be greater than mDisplayedValues.length now  (maxValue - mMinValue + 1) is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and mDisplayedValues.length is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    invoke-virtual {p0, v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setMinAndMaxShowIndex(II)V

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f()V

    return-void
.end method

.method public setMinAndMaxShowIndex(II)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setMinAndMaxShowIndex(IIZ)V

    return-void
.end method

.method public setMinAndMaxShowIndex(IIZ)V
    .locals 3

    const/4 v1, 0x0

    if-le p1, p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minShowIndex should be less than maxShowIndex, minShowIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxShowIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mDisplayedValues should not be null, you need to set mDisplayedValues first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minShowIndex should not be less than 0, now minShowIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "minShowIndex should not be greater than (mDisplayedValues.length - 1), now (mDisplayedValues.length - 1) is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minShowIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-gez p2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxShowIndex should not be less than 0, now maxShowIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxShowIndex should not be greater than (mDisplayedValues.length - 1), now (mDisplayedValues.length - 1) is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ac:[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " maxShowIndex is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    iput p2, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    if-eqz p3, :cond_6

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    add-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(IZ)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->postInvalidate()V

    :cond_6
    return-void

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public setMinValue(I)V
    .locals 1

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->f()V

    return-void
.end method

.method public setNormalTextColor(I)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->a:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->postInvalidate()V

    goto :goto_0
.end method

.method public setOnScrollListener(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ak:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$a;

    return-void
.end method

.method public setOnValueChangeListenerInScrolling(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$c;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->al:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$c;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$b;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->aj:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$b;

    return-void
.end method

.method public setOnValueChangedListenerRelativeToRaw(Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->ai:Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView$d;

    return-void
.end method

.method public setPickedIndexRelativeToMin(I)V
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->getOneRecycleSize()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(IZ)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->postInvalidate()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPickedIndexRelativeToRaw(I)V
    .locals 2

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->u:I

    if-gt p1, v0, :cond_0

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->B:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->t:I

    sub-int v1, p1, v0

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->Q:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b(IZ)V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->postInvalidate()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelectedTextColor(I)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->b:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->postInvalidate()V

    goto :goto_0
.end method

.method public setTextSizeNormal(I)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->d:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->postInvalidate()V

    goto :goto_0
.end method

.method public setTextSizeSelected(I)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->e:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->postInvalidate()V

    goto :goto_0
.end method

.method public setValue(I)V
    .locals 3

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "should not set a value less than mMinValue, value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->w:I

    if-le p1, v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "should not set a value greater than mMaxValue, value is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->v:I

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->setPickedIndexRelativeToRaw(I)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    if-eq v0, p1, :cond_0

    if-nez p1, :cond_2

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->am:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->c()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->R:Z

    goto :goto_0

    :cond_2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->N:Z

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->n()V

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/widget/view/NumberPickerView;->postInvalidate()V

    goto :goto_0
.end method
