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

.field private h:Landroid/net/Uri;

.field private i:Landroid/net/Uri;


# direct methods
.method public constructor <init>(IILandroid/graphics/Bitmap$CompressFormat;ILjava/lang/String;Ljava/lang/String;Lcom/yalantis/ucrop/model/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/yalantis/ucrop/model/a;->a:I

    .line 3
    iput p2, p0, Lcom/yalantis/ucrop/model/a;->b:I

    .line 4
    iput-object p3, p0, Lcom/yalantis/ucrop/model/a;->c:Landroid/graphics/Bitmap$CompressFormat;

    .line 5
    iput p4, p0, Lcom/yalantis/ucrop/model/a;->d:I

    .line 6
    iput-object p5, p0, Lcom/yalantis/ucrop/model/a;->e:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/yalantis/ucrop/model/a;->f:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/yalantis/ucrop/model/a;->g:Lcom/yalantis/ucrop/model/b;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap$CompressFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/model/a;->c:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yalantis/ucrop/model/a;->h:Landroid/net/Uri;

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yalantis/ucrop/model/a;->d:I

    return v0
.end method

.method public b(Landroid/net/Uri;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/yalantis/ucrop/model/a;->i:Landroid/net/Uri;

    return-void
.end method

.method public c()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/model/a;->h:Landroid/net/Uri;

    return-object v0
.end method

.method public d()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/model/a;->i:Landroid/net/Uri;

    return-object v0
.end method

.method public e()Lcom/yalantis/ucrop/model/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/model/a;->g:Lcom/yalantis/ucrop/model/b;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/model/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/yalantis/ucrop/model/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yalantis/ucrop/model/a;->a:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/yalantis/ucrop/model/a;->b:I

    return v0
.end method
