.class public Lcom/huawei/hms/scankit/p/xa;
.super Ljava/lang/Object;
.source "CameraConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/scankit/p/xa$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Landroid/graphics/Point;

.field private e:I

.field private f:Z

.field private g:Z


# direct methods
.method private constructor <init>(IIILjava/lang/String;Landroid/graphics/Point;Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/huawei/hms/scankit/p/xa;->a:I

    .line 4
    iput p2, p0, Lcom/huawei/hms/scankit/p/xa;->b:I

    .line 5
    iput p3, p0, Lcom/huawei/hms/scankit/p/xa;->e:I

    .line 6
    iput-object p4, p0, Lcom/huawei/hms/scankit/p/xa;->c:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/huawei/hms/scankit/p/xa;->d:Landroid/graphics/Point;

    .line 8
    iput-boolean p6, p0, Lcom/huawei/hms/scankit/p/xa;->f:Z

    return-void
.end method

.method synthetic constructor <init>(IIILjava/lang/String;Landroid/graphics/Point;ZLcom/huawei/hms/scankit/p/wa;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/huawei/hms/scankit/p/xa;-><init>(IIILjava/lang/String;Landroid/graphics/Point;Z)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/p/xa;Z)Lcom/huawei/hms/scankit/p/xa;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/p/xa;->a(Z)Lcom/huawei/hms/scankit/p/xa;

    move-result-object p0

    return-object p0
.end method

.method private a(Z)Lcom/huawei/hms/scankit/p/xa;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/p/xa;->g:Z

    return-object p0
.end method


# virtual methods
.method public a()Landroid/graphics/Point;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/xa;->d:Landroid/graphics/Point;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/huawei/hms/scankit/p/xa;->e:I

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/xa;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/xa;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/scankit/p/xa;->e:I

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/xa;->f:Z

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/p/xa;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/p/xa;->g:Z

    return v0
.end method
