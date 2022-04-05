.class public final Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;
.super Lcom/jakewharton/rxbinding3/widget/SeekBarChangeEvent;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00072\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;",
        "Lcom/jakewharton/rxbinding3/widget/SeekBarChangeEvent;",
        "view",
        "Landroid/widget/SeekBar;",
        "progress",
        "",
        "fromUser",
        "",
        "(Landroid/widget/SeekBar;IZ)V",
        "getFromUser",
        "()Z",
        "getProgress",
        "()I",
        "getView",
        "()Landroid/widget/SeekBar;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "rxbinding_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xb
    }
.end annotation


# instance fields
.field private final fromUser:Z

.field private final progress:I

.field private final view:Landroid/widget/SeekBar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jakewharton/rxbinding3/widget/SeekBarChangeEvent;-><init>(Lkotlin/jvm/b/a;)V

    iput-object p1, p0, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->view:Landroid/widget/SeekBar;

    iput p2, p0, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->progress:I

    iput-boolean p3, p0, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->fromUser:Z

    return-void
.end method

.method public static bridge synthetic copy$default(Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;Landroid/widget/SeekBar;IZILjava/lang/Object;)Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->getView()Landroid/widget/SeekBar;

    move-result-object p1

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->progress:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->fromUser:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->copy(Landroid/widget/SeekBar;IZ)Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Landroid/widget/SeekBar;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->getView()Landroid/widget/SeekBar;

    move-result-object v0

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->progress:I

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->fromUser:Z

    return v0
.end method

.method public final copy(Landroid/widget/SeekBar;IZ)Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;
    .locals 1
    .param p1    # Landroid/widget/SeekBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;-><init>(Landroid/widget/SeekBar;IZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->getView()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->getView()Landroid/widget/SeekBar;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->progress:I

    iget v3, p1, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->progress:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->fromUser:Z

    iget-boolean p1, p1, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->fromUser:Z

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public final getFromUser()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->fromUser:Z

    return v0
.end method

.method public final getProgress()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->progress:I

    return v0
.end method

.method public getView()Landroid/widget/SeekBar;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->view:Landroid/widget/SeekBar;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->getView()Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->progress:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->fromUser:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeekBarProgressChangeEvent(view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->getView()Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding3/widget/SeekBarProgressChangeEvent;->fromUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
