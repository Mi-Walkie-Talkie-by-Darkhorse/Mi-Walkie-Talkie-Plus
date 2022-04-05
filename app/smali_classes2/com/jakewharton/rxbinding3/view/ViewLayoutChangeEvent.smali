.class public final Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x2
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u001e\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001BM\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\rJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001f\u001a\u00020\u0005H\u00c6\u0003J\t\u0010 \u001a\u00020\u0005H\u00c6\u0003J\t\u0010!\u001a\u00020\u0005H\u00c6\u0003Jc\u0010\"\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00052\u0008\u0008\u0002\u0010\t\u001a\u00020\u00052\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010#\u001a\u00020$2\u0008\u0010%\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010&\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\'\u001a\u00020(H\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u000c\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000fR\u0011\u0010\t\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u000fR\u0011\u0010\u000b\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u000fR\u0011\u0010\n\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006)"
    }
    d2 = {
        "Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;",
        "",
        "view",
        "Landroid/view/View;",
        "left",
        "",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "(Landroid/view/View;IIIIIIII)V",
        "getBottom",
        "()I",
        "getLeft",
        "getOldBottom",
        "getOldLeft",
        "getOldRight",
        "getOldTop",
        "getRight",
        "getTop",
        "getView",
        "()Landroid/view/View;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "",
        "other",
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
.field private final bottom:I

.field private final left:I

.field private final oldBottom:I

.field private final oldLeft:I

.field private final oldRight:I

.field private final oldTop:I

.field private final right:I

.field private final top:I

.field private final view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->view:Landroid/view/View;

    iput p2, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->left:I

    iput p3, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->top:I

    iput p4, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->right:I

    iput p5, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->bottom:I

    iput p6, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldLeft:I

    iput p7, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldTop:I

    iput p8, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldRight:I

    iput p9, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldBottom:I

    return-void
.end method

.method public static bridge synthetic copy$default(Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;Landroid/view/View;IIIIIIIIILjava/lang/Object;)Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->view:Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->left:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->top:I

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->right:I

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->bottom:I

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldLeft:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldTop:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldRight:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget v1, v0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldBottom:I

    goto :goto_8

    :cond_8
    move/from16 v1, p9

    :goto_8
    move-object p1, v2

    move p2, v3

    move p3, v4

    move p4, v5

    move p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->copy(Landroid/view/View;IIIIIIII)Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->view:Landroid/view/View;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->left:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->top:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->right:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->bottom:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldLeft:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldTop:I

    return v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldRight:I

    return v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldBottom:I

    return v0
.end method

.method public final copy(Landroid/view/View;IIIIIIII)Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "view"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/b/b;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;

    move-object v1, v0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;-><init>(Landroid/view/View;IIIIIIII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-eq p0, p1, :cond_9

    instance-of v1, p1, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    check-cast p1, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;

    iget-object v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->view:Landroid/view/View;

    iget-object v3, p1, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->view:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->left:I

    iget v3, p1, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->left:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_8

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->top:I

    iget v3, p1, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->top:I

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_8

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->right:I

    iget v3, p1, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->right:I

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_8

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->bottom:I

    iget v3, p1, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->bottom:I

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_8

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldLeft:I

    iget v3, p1, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldLeft:I

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_8

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldTop:I

    iget v3, p1, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldTop:I

    if-ne v1, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_8

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldRight:I

    iget v3, p1, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldRight:I

    if-ne v1, v3, :cond_6

    const/4 v1, 0x1

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    if-eqz v1, :cond_8

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldBottom:I

    iget p1, p1, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldBottom:I

    if-ne v1, p1, :cond_7

    const/4 p1, 0x1

    goto :goto_7

    :cond_7
    const/4 p1, 0x0

    :goto_7
    if-eqz p1, :cond_8

    goto :goto_8

    :cond_8
    return v2

    :cond_9
    :goto_8
    return v0
.end method

.method public final getBottom()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->bottom:I

    return v0
.end method

.method public final getLeft()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->left:I

    return v0
.end method

.method public final getOldBottom()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldBottom:I

    return v0
.end method

.method public final getOldLeft()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldLeft:I

    return v0
.end method

.method public final getOldRight()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldRight:I

    return v0
.end method

.method public final getOldTop()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldTop:I

    return v0
.end method

.method public final getRight()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->right:I

    return v0
.end method

.method public final getTop()I
    .locals 1

    iget v0, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->top:I

    return v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->view:Landroid/view/View;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->left:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->top:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->right:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->bottom:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldLeft:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldTop:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldRight:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldBottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewLayoutChangeEvent(view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding3/view/ViewLayoutChangeEvent;->oldBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
