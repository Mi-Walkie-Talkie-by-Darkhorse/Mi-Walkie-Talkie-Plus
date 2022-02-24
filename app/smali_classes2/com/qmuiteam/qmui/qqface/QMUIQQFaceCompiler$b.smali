.class public Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;
.super Ljava/lang/Object;
.source "QMUIQQFaceCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

.field private b:Ljava/lang/CharSequence;

.field private c:I

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

.field private f:Lcom/qmuiteam/qmui/span/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;
    .locals 2

    .line 5
    new-instance v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;-><init>()V

    .line 6
    sget-object v1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->b:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    iput-object v1, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->a:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    .line 7
    iput p0, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->c:I

    return-object v0
.end method

.method public static a(Landroid/graphics/drawable/Drawable;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;
    .locals 2

    .line 8
    new-instance v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;-><init>()V

    .line 9
    sget-object v1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->c:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    iput-object v1, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->a:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    .line 10
    iput-object p0, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;
    .locals 2

    .line 2
    new-instance v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;-><init>()V

    .line 3
    sget-object v1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->a:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    iput-object v1, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->a:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    .line 4
    iput-object p0, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public static a(Ljava/lang/CharSequence;Lcom/qmuiteam/qmui/span/d;Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;
    .locals 4

    .line 11
    new-instance v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;-><init>()V

    .line 12
    sget-object v1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->d:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    iput-object v1, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->a:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    .line 13
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p2, p0, v2, v1, v3}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;->a(Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler;Ljava/lang/CharSequence;IIZ)Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    move-result-object p0

    iput-object p0, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->e:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    .line 14
    iput-object p1, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->f:Lcom/qmuiteam/qmui/span/d;

    return-object v0
.end method

.method public static g()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;
    .locals 2

    .line 1
    new-instance v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;

    invoke-direct {v0}, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;-><init>()V

    .line 2
    sget-object v1, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;->e:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    iput-object v1, v0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->a:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->e:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$c;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->c:I

    return v0
.end method

.method public c()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->d:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public d()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public e()Lcom/qmuiteam/qmui/span/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->f:Lcom/qmuiteam/qmui/span/d;

    return-object v0
.end method

.method public f()Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$b;->a:Lcom/qmuiteam/qmui/qqface/QMUIQQFaceCompiler$ElementType;

    return-object v0
.end method
