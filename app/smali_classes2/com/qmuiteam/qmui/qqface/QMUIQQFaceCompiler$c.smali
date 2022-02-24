.class public Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;
.super Ljava/lang/Object;
.source "QMUIQQFaceCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->c:I

    .line 3
    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->d:I

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->a:I

    .line 5
    iput p2, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->b:I

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;",
            ">;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->e:Ljava/util/List;

    return-object v0
.end method

.method public a(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->f()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    move-result-object v0

    sget-object v1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->b:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->c:I

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->f()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    move-result-object v0

    sget-object v1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->e:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    if-ne v0, v1, :cond_1

    .line 4
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->d:I

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->f()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    move-result-object v0

    sget-object v1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->d:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    if-ne v0, v1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->a()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->c:I

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->a()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->d()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->c:I

    .line 8
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->d:I

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->a()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->c()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->d:I

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->b:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;->a:I

    return v0
.end method
