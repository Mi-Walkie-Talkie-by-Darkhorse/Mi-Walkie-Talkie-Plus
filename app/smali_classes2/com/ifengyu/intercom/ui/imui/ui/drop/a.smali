.class public Lcom/ifengyu/intercom/ui/imui/ui/drop/a;
.super Ljava/lang/Object;
.source "DropManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/ui/drop/a$a;
    }
.end annotation


# static fields
.field static final a:I

.field static final b:I

.field private static c:Lcom/ifengyu/intercom/ui/imui/ui/drop/a;


# instance fields
.field private d:Z

.field private e:I

.field private f:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;

.field private g:Ljava/lang/Object;

.field private h:Landroid/text/TextPaint;

.field private i:F

.field private j:Landroid/graphics/Paint;

.field private k:Lcom/ifengyu/intercom/ui/imui/ui/drop/a$a;

.field private l:Z

.field private m:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->b(F)I

    move-result v0

    sput v0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a:I

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/ifengyu/library/util/l;->a(F)I

    move-result v0

    sput v0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->b:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->m:[I

    return-void

    :array_0
    .array-data 4
        0x7f0200dd
        0x7f0200df
        0x7f0200de
        0x7f0200dc
        0x7f0200db
    .end array-data
.end method

.method public static declared-synchronized a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;
    .locals 2

    const-class v1, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->c:Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    invoke-direct {v0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->c:Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    :cond_0
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->c:Lcom/ifengyu/intercom/ui/imui/ui/drop/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(FF)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->f:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->f:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->a(FF)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->f:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->f:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;

    invoke-virtual {v0, p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->a(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover$a;)V
    .locals 3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->d:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->e:I

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->f:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->f:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->a(Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover$a;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->k:Lcom/ifengyu/intercom/ui/imui/ui/drop/a$a;

    iput-boolean v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->l:Z

    const-string v0, "DropManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init DropManager, statusBarHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/library/util/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/ifengyu/intercom/ui/imui/ui/drop/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->k:Lcom/ifengyu/intercom/ui/imui/ui/drop/a$a;

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->g:Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->d:Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->k:Lcom/ifengyu/intercom/ui/imui/ui/drop/a$a;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->k:Lcom/ifengyu/intercom/ui/imui/ui/drop/a$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a$a;->a()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->k:Lcom/ifengyu/intercom/ui/imui/ui/drop/a$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a$a;->b()V

    goto :goto_0
.end method

.method public b()V
    .locals 0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->h()Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->i()Landroid/text/TextPaint;

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->l:Z

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->d:Z

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->e:I

    return v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->f:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->f:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropCover;->a()V

    goto :goto_0
.end method

.method public g()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public h()Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->j:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->j:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->j:Landroid/graphics/Paint;

    const v1, 0x7f0f003b

    invoke-static {v1}, Lcom/ifengyu/library/util/l;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->j:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->j:Landroid/graphics/Paint;

    return-object v0
.end method

.method public i()Landroid/text/TextPaint;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->h:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->h:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->h:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->h:Landroid/text/TextPaint;

    const v1, 0x7f0f001d

    invoke-static {v1}, Lcom/ifengyu/library/util/l;->b(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->h:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->h:Landroid/text/TextPaint;

    sget v1, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->h:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float v0, v1, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->i:F

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->h:Landroid/text/TextPaint;

    return-object v0
.end method

.method public j()F
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->i()Landroid/text/TextPaint;

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->i:F

    return v0
.end method

.method public k()[I
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->m:[I

    return-object v0
.end method
