.class public Lcom/yalantis/ucrop/model/a;
.super Ljava/lang/Object;
.source "CropParameters.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Bitmap$CompressFormat;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/yalantis/ucrop/model/b;


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;Lcom/yalantis/ucrop/model/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/yalantis/ucrop/model/a;->a:I

    iput p2, p0, Lcom/yalantis/ucrop/model/a;->b:I

    iput-object p3, p0, Lcom/yalantis/ucrop/model/a;->c:Landroid/graphics/Bitmap$CompressFormat;

    iput p4, p0, Lcom/yalantis/ucrop/model/a;->d:I

    iput-object p5, p0, Lcom/yalantis/ucrop/model/a;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/yalantis/ucrop/model/a;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/yalantis/ucrop/model/a;->g:Lcom/yalantis/ucrop/model/b;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/yalantis/ucrop/model/a;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/yalantis/ucrop/model/a;->b:I

    return v0
.end method

.method public c()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/model/a;->c:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/yalantis/ucrop/model/a;->d:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/model/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/model/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()Lcom/yalantis/ucrop/model/b;
    .locals 1

    iget-object v0, p0, Lcom/yalantis/ucrop/model/a;->g:Lcom/yalantis/ucrop/model/b;

    return-object v0
.end method
