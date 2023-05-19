.class public Lcom/huawei/hms/scankit/e;
.super Ljava/lang/Object;
.source "CaptureHelper.java"

# interfaces
.implements Lcom/huawei/hms/scankit/f;
.implements Lcom/huawei/hms/scankit/h;
.implements Lcom/huawei/hms/scankit/g;


# static fields
.field public static final a:Ljava/lang/String; = "e"

.field public static volatile b:Lcom/huawei/hms/scankit/p/Kc;


# instance fields
.field private A:Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

.field private B:Lcom/huawei/hms/scankit/A;

.field private C:Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Lcom/huawei/hms/hmsscankit/api/IOnErrorCallback;

.field private H:Z

.field public volatile c:Lcom/huawei/hms/scankit/p/Hc;

.field private final d:Landroid/graphics/Rect;

.field private final e:I

.field private final f:Z

.field private g:Landroid/content/Context;

.field private h:Lcom/huawei/hms/scankit/a;

.field private i:Lcom/huawei/hms/scankit/B;

.field private j:Lcom/huawei/hms/scankit/p/Aa;

.field private k:Lcom/huawei/hms/scankit/ViewfinderView;

.field private l:Landroid/view/TextureView;

.field private m:Landroid/view/TextureView$SurfaceTextureListener;

.field private n:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/huawei/hms/scankit/aiscan/common/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/hms/scankit/aiscan/common/d;",
            "*>;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:F

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/TextureView;Lcom/huawei/hms/scankit/ViewfinderView;Landroid/graphics/Rect;ILcom/huawei/hms/feature/dynamic/IObjectWrapper;ZLjava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/huawei/hms/scankit/e;->c:Lcom/huawei/hms/scankit/p/Hc;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/e;->s:Z

    .line 4
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/e;->u:Z

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/huawei/hms/scankit/e;->v:Z

    .line 6
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/e;->w:Z

    .line 7
    iput-boolean v1, p0, Lcom/huawei/hms/scankit/e;->D:Z

    .line 8
    iput-boolean v1, p0, Lcom/huawei/hms/scankit/e;->E:Z

    .line 9
    iput-boolean v1, p0, Lcom/huawei/hms/scankit/e;->F:Z

    .line 10
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/e;->H:Z

    .line 11
    iput-object p1, p0, Lcom/huawei/hms/scankit/e;->g:Landroid/content/Context;

    .line 12
    iput-object p3, p0, Lcom/huawei/hms/scankit/e;->k:Lcom/huawei/hms/scankit/ViewfinderView;

    .line 13
    iput-object p6, p0, Lcom/huawei/hms/scankit/e;->A:Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    .line 14
    iput-object p2, p0, Lcom/huawei/hms/scankit/e;->l:Landroid/view/TextureView;

    .line 15
    iput-boolean v1, p0, Lcom/huawei/hms/scankit/e;->q:Z

    .line 16
    iput-object p4, p0, Lcom/huawei/hms/scankit/e;->d:Landroid/graphics/Rect;

    .line 17
    iput p5, p0, Lcom/huawei/hms/scankit/e;->e:I

    .line 18
    iput-boolean p7, p0, Lcom/huawei/hms/scankit/e;->f:Z

    .line 19
    iput-object p8, p0, Lcom/huawei/hms/scankit/e;->r:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lcom/huawei/hms/scankit/e;->F:Z

    .line 21
    iput-boolean p9, p0, Lcom/huawei/hms/scankit/e;->y:Z

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/e;)Lcom/huawei/hms/hmsscankit/api/IOnErrorCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/scankit/e;->G:Lcom/huawei/hms/hmsscankit/api/IOnErrorCallback;

    return-object p0
.end method

.method private a(Landroid/content/Context;)Lcom/huawei/hms/scankit/p/xa;
    .locals 7

    .line 75
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    .line 76
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 78
    sget-object v1, Lcom/huawei/hms/scankit/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initCameraConfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x5a

    const/16 v2, 0x438

    const/16 v4, 0x780

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v5, :cond_2

    const/4 v6, 0x2

    if-eq v0, v6, :cond_1

    const/4 v6, 0x3

    if-eq v0, v6, :cond_0

    .line 79
    new-instance v0, Lcom/huawei/hms/scankit/p/xa$a;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/xa$a;-><init>()V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 80
    invoke-virtual {v0, v6}, Lcom/huawei/hms/scankit/p/xa$a;->a(Landroid/graphics/Point;)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v5}, Lcom/huawei/hms/scankit/p/xa$a;->a(I)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/xa$a;->b(I)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/huawei/hms/scankit/p/xa$a;->b(Z)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object v0

    .line 83
    invoke-static {p1}, Lcom/huawei/hms/scankit/util/b;->c(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/xa$a;->a(Z)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/xa$a;->a()Lcom/huawei/hms/scankit/p/xa;

    move-result-object p1

    goto/16 :goto_0

    .line 85
    :cond_0
    new-instance v0, Lcom/huawei/hms/scankit/p/xa$a;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/xa$a;-><init>()V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v4, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 86
    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/xa$a;->a(Landroid/graphics/Point;)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v5}, Lcom/huawei/hms/scankit/p/xa$a;->a(I)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object v0

    const/16 v1, 0xb4

    .line 88
    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/xa$a;->b(I)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/huawei/hms/scankit/p/xa$a;->b(Z)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object v0

    .line 89
    invoke-static {p1}, Lcom/huawei/hms/scankit/util/b;->c(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/xa$a;->a(Z)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/xa$a;->a()Lcom/huawei/hms/scankit/p/xa;

    move-result-object p1

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Lcom/huawei/hms/scankit/p/xa$a;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/xa$a;-><init>()V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v4, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 92
    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/xa$a;->a(Landroid/graphics/Point;)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v5}, Lcom/huawei/hms/scankit/p/xa$a;->a(I)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object v0

    const/16 v1, 0x10e

    .line 94
    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/xa$a;->b(I)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/huawei/hms/scankit/p/xa$a;->b(Z)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object v0

    .line 95
    invoke-static {p1}, Lcom/huawei/hms/scankit/util/b;->c(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/xa$a;->a(Z)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/xa$a;->a()Lcom/huawei/hms/scankit/p/xa;

    move-result-object p1

    goto :goto_0

    .line 97
    :cond_2
    new-instance v0, Lcom/huawei/hms/scankit/p/xa$a;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/xa$a;-><init>()V

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v4, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 98
    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/xa$a;->a(Landroid/graphics/Point;)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v5}, Lcom/huawei/hms/scankit/p/xa$a;->a(I)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v3}, Lcom/huawei/hms/scankit/p/xa$a;->b(I)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/huawei/hms/scankit/p/xa$a;->b(Z)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object v0

    .line 101
    invoke-static {p1}, Lcom/huawei/hms/scankit/util/b;->c(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/xa$a;->a(Z)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/xa$a;->a()Lcom/huawei/hms/scankit/p/xa;

    move-result-object p1

    goto :goto_0

    .line 103
    :cond_3
    new-instance v0, Lcom/huawei/hms/scankit/p/xa$a;

    invoke-direct {v0}, Lcom/huawei/hms/scankit/p/xa$a;-><init>()V

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v4, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 104
    invoke-virtual {v0, v6}, Lcom/huawei/hms/scankit/p/xa$a;->a(Landroid/graphics/Point;)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v5}, Lcom/huawei/hms/scankit/p/xa$a;->a(I)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/xa$a;->b(I)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/huawei/hms/scankit/p/xa$a;->b(Z)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object v0

    .line 107
    invoke-static {p1}, Lcom/huawei/hms/scankit/util/b;->c(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/xa$a;->a(Z)Lcom/huawei/hms/scankit/p/xa$a;

    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/xa$a;->a()Lcom/huawei/hms/scankit/p/xa;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private a(Landroid/view/TextureView;)V
    .locals 12

    if-eqz p1, :cond_3

    .line 14
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 15
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->j:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/p/Aa;->a(Landroid/view/TextureView;)V

    .line 16
    iget-object p1, p0, Lcom/huawei/hms/scankit/e;->j:Lcom/huawei/hms/scankit/p/Aa;

    new-instance v0, Lcom/huawei/hms/scankit/p/Ba$a;

    new-instance v1, Landroid/graphics/Rect;

    const/16 v2, 0x96

    const/16 v3, -0x96

    invoke-direct {v1, v3, v3, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x3e8

    invoke-direct {v0, v1, v2}, Lcom/huawei/hms/scankit/p/Ba$a;-><init>(Landroid/graphics/Rect;I)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/p/Aa;->a(Ljava/util/List;)V

    .line 17
    iget-object p1, p0, Lcom/huawei/hms/scankit/e;->j:Lcom/huawei/hms/scankit/p/Aa;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/p/Aa;->b(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    :try_start_1
    iget-object p1, p0, Lcom/huawei/hms/scankit/e;->j:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {p1}, Lcom/huawei/hms/scankit/p/Aa;->m()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    :try_start_2
    sget-object v0, Lcom/huawei/hms/scankit/e;->a:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v1, "initCamera() get exception"

    :try_start_3
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 21
    :goto_0
    iget-object p1, p0, Lcom/huawei/hms/scankit/e;->h:Lcom/huawei/hms/scankit/a;

    if-nez p1, :cond_2

    .line 22
    new-instance p1, Lcom/huawei/hms/scankit/a;

    iget-object v1, p0, Lcom/huawei/hms/scankit/e;->g:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/hms/scankit/e;->k:Lcom/huawei/hms/scankit/ViewfinderView;

    iget-object v3, p0, Lcom/huawei/hms/scankit/e;->i:Lcom/huawei/hms/scankit/B;

    iget-object v4, p0, Lcom/huawei/hms/scankit/e;->n:Ljava/util/Collection;

    iget-object v5, p0, Lcom/huawei/hms/scankit/e;->o:Ljava/util/Map;

    iget-object v6, p0, Lcom/huawei/hms/scankit/e;->p:Ljava/lang/String;

    iget-object v7, p0, Lcom/huawei/hms/scankit/e;->j:Lcom/huawei/hms/scankit/p/Aa;

    iget-object v8, p0, Lcom/huawei/hms/scankit/e;->d:Landroid/graphics/Rect;

    iget v9, p0, Lcom/huawei/hms/scankit/e;->e:I

    iget-boolean v10, p0, Lcom/huawei/hms/scankit/e;->y:Z

    iget-boolean v11, p0, Lcom/huawei/hms/scankit/e;->H:Z

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Lcom/huawei/hms/scankit/a;-><init>(Landroid/content/Context;Lcom/huawei/hms/scankit/ViewfinderView;Lcom/huawei/hms/scankit/B;Ljava/util/Collection;Ljava/util/Map;Ljava/lang/String;Lcom/huawei/hms/scankit/p/Aa;Landroid/graphics/Rect;IZZ)V

    iput-object p1, p0, Lcom/huawei/hms/scankit/e;->h:Lcom/huawei/hms/scankit/a;

    .line 23
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/e;->x:Z

    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/a;->c(Z)V

    .line 24
    iget-object p1, p0, Lcom/huawei/hms/scankit/e;->h:Lcom/huawei/hms/scankit/a;

    iget-boolean v0, p0, Lcom/huawei/hms/scankit/e;->z:Z

    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/a;->a(Z)V

    .line 25
    iget-object p1, p0, Lcom/huawei/hms/scankit/e;->h:Lcom/huawei/hms/scankit/a;

    iget-boolean v0, p0, Lcom/huawei/hms/scankit/e;->u:Z

    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/a;->b(Z)V

    .line 26
    iget-object p1, p0, Lcom/huawei/hms/scankit/e;->h:Lcom/huawei/hms/scankit/a;

    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->B:Lcom/huawei/hms/scankit/A;

    invoke-virtual {p1, v0}, Lcom/huawei/hms/scankit/a;->a(Lcom/huawei/hms/scankit/A;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 27
    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->c:Lcom/huawei/hms/scankit/p/Hc;

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->c:Lcom/huawei/hms/scankit/p/Hc;

    const/16 v1, -0x3ea

    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/Hc;->c(I)V

    .line 29
    :cond_1
    sget-object v0, Lcom/huawei/hms/scankit/e;->a:Ljava/lang/String;

    const-string v1, "initCamera IOException"

    invoke-static {v0, v1, p1}, Lcom/huawei/hms/scankit/util/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void

    .line 31
    :cond_3
    :goto_2
    sget-object p1, Lcom/huawei/hms/scankit/e;->a:Ljava/lang/String;

    const-string v0, "initCamera() no surface view"

    invoke-static {p1, v0}, Lcom/huawei/hms/scankit/util/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/e;Landroid/view/TextureView;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/e;->a(Landroid/view/TextureView;)V

    return-void
.end method

.method private a(ZLcom/huawei/hms/scankit/p/Aa;)V
    .locals 2

    .line 32
    :try_start_0
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/Aa;->g()Lcom/huawei/hms/scankit/p/Ca;

    move-result-object v0

    .line 33
    invoke-virtual {p2}, Lcom/huawei/hms/scankit/p/Aa;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 34
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Ca;->c()I

    move-result v1

    .line 35
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Ca;->b()I

    move-result v0

    if-eqz p1, :cond_0

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 36
    :cond_1
    sget-object p1, Lcom/huawei/hms/scankit/e;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "handleZoom  zoom not change"

    :try_start_1
    invoke-static {p1, v1}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_0
    invoke-virtual {p2, v0}, Lcom/huawei/hms/scankit/p/Aa;->c(I)V

    goto :goto_1

    .line 38
    :cond_2
    sget-object p1, Lcom/huawei/hms/scankit/e;->a:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "zoom not supported"

    :try_start_2
    invoke-static {p1, p2}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 39
    :catch_0
    sget-object p1, Lcom/huawei/hms/scankit/e;->a:Ljava/lang/String;

    const-string p2, "handleZoom: RuntimeException"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/scankit/e;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/e;->E:Z

    return p1
.end method

.method private b(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/huawei/hms/scankit/e;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/huawei/hms/scankit/e;->q:Z

    return p0
.end method

.method static synthetic b(Lcom/huawei/hms/scankit/e;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/e;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/huawei/hms/scankit/e;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/scankit/e;->g:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/huawei/hms/scankit/e;)Landroid/view/TextureView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/scankit/e;->l:Landroid/view/TextureView;

    return-object p0
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->h:Lcom/huawei/hms/scankit/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/huawei/hms/scankit/a;->e()V

    .line 3
    iput-object v1, p0, Lcom/huawei/hms/scankit/e;->h:Lcom/huawei/hms/scankit/a;

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/e;->q:Z

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->l:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->j:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa;->k()V

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/scankit/A;)Lcom/huawei/hms/scankit/e;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/huawei/hms/scankit/e;->B:Lcom/huawei/hms/scankit/A;

    return-object p0
.end method

.method public a(Z)Lcom/huawei/hms/scankit/e;
    .locals 1

    .line 68
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/e;->z:Z

    .line 69
    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->h:Lcom/huawei/hms/scankit/a;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p1}, Lcom/huawei/hms/scankit/a;->a(Z)V

    :cond_0
    return-object p0
.end method

.method public a()Lcom/huawei/hms/scankit/p/Aa;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->j:Lcom/huawei/hms/scankit/p/Aa;

    return-object v0
.end method

.method public a(Lcom/huawei/hms/hmsscankit/api/IOnErrorCallback;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/huawei/hms/scankit/e;->G:Lcom/huawei/hms/hmsscankit/api/IOnErrorCallback;

    return-void
.end method

.method public a(Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/huawei/hms/scankit/e;->C:Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;

    return-void
.end method

.method public a([Lcom/huawei/hms/ml/scan/HmsScan;Landroid/graphics/Bitmap;)V
    .locals 6

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decode time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scan-time"

    invoke-static {v1, v0}, Lcom/huawei/hms/scankit/util/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :try_start_0
    sget-object v0, Lcom/huawei/hms/scankit/e;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v1, "result onResult"

    :try_start_1
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v1, p0, Lcom/huawei/hms/scankit/e;->B:Lcom/huawei/hms/scankit/A;

    invoke-interface {v1}, Lcom/huawei/hms/scankit/A;->a()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_0

    const-string p1, "result intercepted"

    .line 43
    :try_start_2
    invoke-static {v0, p1}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/e;->c:Lcom/huawei/hms/scankit/p/Hc;

    if-eqz v1, :cond_1

    .line 45
    iget-object v1, p0, Lcom/huawei/hms/scankit/e;->c:Lcom/huawei/hms/scankit/p/Hc;

    invoke-virtual {v1, p1}, Lcom/huawei/hms/scankit/p/Hc;->a([Lcom/huawei/hms/ml/scan/HmsScan;)V

    .line 46
    :cond_1
    iget-boolean v1, p0, Lcom/huawei/hms/scankit/e;->f:Z

    if-nez v1, :cond_2

    .line 47
    invoke-static {p1}, Lcom/huawei/hms/scankit/util/b;->a([Lcom/huawei/hms/ml/scan/HmsScan;)[Lcom/huawei/hms/ml/scan/HmsScan;

    move-result-object p1

    .line 48
    :cond_2
    iget-object v1, p0, Lcom/huawei/hms/scankit/e;->B:Lcom/huawei/hms/scankit/A;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 49
    iget-object v1, p0, Lcom/huawei/hms/scankit/e;->k:Lcom/huawei/hms/scankit/ViewfinderView;

    if-eqz v1, :cond_4

    array-length v1, p1

    if-lez v1, :cond_4

    aget-object v1, p1, v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v1, :cond_4

    const-string v1, "result draw result point"

    .line 50
    :try_start_3
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/huawei/hms/scankit/e;->g:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 52
    iget-object v1, p0, Lcom/huawei/hms/scankit/e;->k:Lcom/huawei/hms/scankit/ViewfinderView;

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/huawei/hms/ml/scan/HmsScanBase;->getBorderRect()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/hms/scankit/e;->g:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-static {v4}, Lcom/huawei/hms/scankit/util/b;->c(Landroid/app/Activity;)Z

    move-result v4

    iget-object v5, p0, Lcom/huawei/hms/scankit/e;->j:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {v5}, Lcom/huawei/hms/scankit/p/Aa;->e()Landroid/graphics/Point;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Lcom/huawei/hms/scankit/ViewfinderView;->a(Landroid/graphics/Rect;ZLandroid/graphics/Point;)V

    .line 53
    :cond_3
    iput-boolean v2, p0, Lcom/huawei/hms/scankit/e;->F:Z

    .line 54
    :cond_4
    iget-object v1, p0, Lcom/huawei/hms/scankit/e;->B:Lcom/huawei/hms/scankit/A;

    invoke-interface {v1, p1}, Lcom/huawei/hms/scankit/A;->a([Lcom/huawei/hms/ml/scan/HmsScan;)Z

    .line 55
    :cond_5
    iget-object v1, p0, Lcom/huawei/hms/scankit/e;->C:Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v1, :cond_8

    .line 56
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v3, "result callback end: pauseStatus"

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/huawei/hms/scankit/e;->F:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/e;->F:Z

    if-nez v0, :cond_8

    .line 58
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/e;->z:Z

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    array-length v0, p1

    if-lez v0, :cond_6

    aget-object v0, p1, v2

    if-eqz v0, :cond_6

    .line 59
    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->g:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_6

    .line 60
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 61
    aget-object v1, p1, v2

    invoke-static {p2, v0}, Lcom/huawei/hms/scankit/util/b;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, v1, Lcom/huawei/hms/ml/scan/HmsScanBase;->originalBitmap:Landroid/graphics/Bitmap;

    .line 62
    :cond_6
    iget-object p2, p0, Lcom/huawei/hms/scankit/e;->C:Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;

    invoke-interface {p2, p1}, Lcom/huawei/hms/hmsscankit/api/IOnResultCallback;->onResult([Lcom/huawei/hms/ml/scan/HmsScan;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    :try_start_6
    iget-object p2, p0, Lcom/huawei/hms/scankit/e;->c:Lcom/huawei/hms/scankit/p/Hc;

    if-eqz p2, :cond_7

    .line 64
    iget-object p2, p0, Lcom/huawei/hms/scankit/e;->c:Lcom/huawei/hms/scankit/p/Hc;

    const/16 v0, -0x3eb

    invoke-virtual {p2, v0}, Lcom/huawei/hms/scankit/p/Hc;->c(I)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :cond_7
    const-string p2, "CaptureHelper"

    .line 65
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    const-string v1, "onResult  RemoteException  e:"

    :try_start_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/huawei/hms/scankit/util/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 66
    sget-object p2, Lcom/huawei/hms/scankit/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResult:Exception: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception p1

    .line 67
    sget-object p2, Lcom/huawei/hms/scankit/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResult:RuntimeException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 4
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/e;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->j:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa;->f()Lcom/huawei/hms/scankit/p/Aa$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v0

    sget-object v2, Lcom/huawei/hms/scankit/p/Aa$b;->b:Lcom/huawei/hms/scankit/p/Aa$b;

    invoke-virtual {v2}, Lcom/huawei/hms/scankit/p/Aa$b;->a()I

    move-result v2

    if-lt v0, v2, :cond_4

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/e;->b(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/huawei/hms/scankit/e;->t:F

    goto :goto_1

    .line 8
    :cond_1
    invoke-direct {p0, p1}, Lcom/huawei/hms/scankit/e;->b(Landroid/view/MotionEvent;)F

    move-result p1

    .line 9
    iget v0, p0, Lcom/huawei/hms/scankit/e;->t:F

    const/high16 v3, 0x40c00000    # 6.0f

    add-float v4, v0, v3

    cmpl-float v4, p1, v4

    if-lez v4, :cond_2

    .line 10
    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->j:Lcom/huawei/hms/scankit/p/Aa;

    invoke-direct {p0, v2, v0}, Lcom/huawei/hms/scankit/e;->a(ZLcom/huawei/hms/scankit/p/Aa;)V

    goto :goto_0

    :cond_2
    sub-float/2addr v0, v3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    .line 11
    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->j:Lcom/huawei/hms/scankit/p/Aa;

    invoke-direct {p0, v1, v0}, Lcom/huawei/hms/scankit/e;->a(ZLcom/huawei/hms/scankit/p/Aa;)V

    goto :goto_0

    :cond_3
    const-string v0, "CaptureHelper"

    const-string v1, "MotionEvent.ACTION_MOVE no handleZoom"

    .line 12
    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :goto_0
    iput p1, p0, Lcom/huawei/hms/scankit/e;->t:F

    :goto_1
    return v2

    :cond_4
    return v1
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/e;->F:Z

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->A:Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    invoke-static {v0}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 5
    new-instance v1, Lcom/huawei/hms/scankit/p/Kc;

    iget-object v2, p0, Lcom/huawei/hms/scankit/e;->r:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/huawei/hms/scankit/p/Kc;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    sput-object v1, Lcom/huawei/hms/scankit/e;->b:Lcom/huawei/hms/scankit/p/Kc;

    .line 6
    sget-object v0, Lcom/huawei/hms/scankit/e;->b:Lcom/huawei/hms/scankit/p/Kc;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "single"

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/Kc;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    sget-object v0, Lcom/huawei/hms/scankit/e;->a:Ljava/lang/String;

    const-string v1, "Exception"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :catch_1
    sget-object v0, Lcom/huawei/hms/scankit/e;->a:Ljava/lang/String;

    const-string v1, "RuntimeException"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/e;->a(Landroid/content/Context;)Lcom/huawei/hms/scankit/p/xa;

    move-result-object v0

    .line 10
    sget-object v1, Lcom/huawei/hms/scankit/e;->a:Ljava/lang/String;

    const-string v2, "onCreate: CameraManageOncreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    new-instance v1, Lcom/huawei/hms/scankit/p/Aa;

    iget-object v2, p0, Lcom/huawei/hms/scankit/e;->g:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/huawei/hms/scankit/p/Aa;-><init>(Landroid/content/Context;Lcom/huawei/hms/scankit/p/xa;)V

    iput-object v1, p0, Lcom/huawei/hms/scankit/e;->j:Lcom/huawei/hms/scankit/p/Aa;

    .line 12
    new-instance v0, Lcom/huawei/hms/scankit/b;

    invoke-direct {v0, p0}, Lcom/huawei/hms/scankit/b;-><init>(Lcom/huawei/hms/scankit/e;)V

    invoke-virtual {v1, v0}, Lcom/huawei/hms/scankit/p/Aa;->a(Lcom/huawei/hms/scankit/p/Aa$c;)V

    .line 13
    new-instance v0, Lcom/huawei/hms/scankit/c;

    invoke-direct {v0, p0}, Lcom/huawei/hms/scankit/c;-><init>(Lcom/huawei/hms/scankit/e;)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/e;->m:Landroid/view/TextureView$SurfaceTextureListener;

    .line 14
    new-instance v0, Lcom/huawei/hms/scankit/d;

    invoke-direct {v0, p0}, Lcom/huawei/hms/scankit/d;-><init>(Lcom/huawei/hms/scankit/e;)V

    iput-object v0, p0, Lcom/huawei/hms/scankit/e;->i:Lcom/huawei/hms/scankit/B;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/huawei/hms/scankit/e;->H:Z

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/e;->F:Z

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->j:Lcom/huawei/hms/scankit/p/Aa;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Aa;->j()V

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lcom/huawei/hms/scankit/e;->b:Lcom/huawei/hms/scankit/p/Kc;

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/e;->F:Z

    .line 3
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/e;->D:Z

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/huawei/hms/scankit/e;->i()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/e;->F:Z

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/e;->A:Lcom/huawei/hms/feature/dynamic/IObjectWrapper;

    invoke-static {v1}, Lcom/huawei/hms/feature/dynamic/ObjectWrapper;->unwrap(Lcom/huawei/hms/feature/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 3
    new-instance v2, Lcom/huawei/hms/scankit/p/Hc;

    iget-object v3, p0, Lcom/huawei/hms/scankit/e;->r:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Lcom/huawei/hms/scankit/p/Hc;-><init>(Landroid/os/Bundle;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/huawei/hms/scankit/e;->c:Lcom/huawei/hms/scankit/p/Hc;

    .line 4
    iget-object v1, p0, Lcom/huawei/hms/scankit/e;->c:Lcom/huawei/hms/scankit/p/Hc;

    invoke-virtual {v1}, Lcom/huawei/hms/scankit/p/Hc;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    sget-object v1, Lcom/huawei/hms/scankit/e;->a:Ljava/lang/String;

    const-string v2, "Exception"

    invoke-static {v1, v2}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :catch_1
    sget-object v1, Lcom/huawei/hms/scankit/e;->a:Ljava/lang/String;

    const-string v2, "RuntimeException"

    invoke-static {v1, v2}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :goto_0
    iget-boolean v1, p0, Lcom/huawei/hms/scankit/e;->D:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/huawei/hms/scankit/e;->q:Z

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcom/huawei/hms/scankit/e;->l:Landroid/view/TextureView;

    if-eqz v1, :cond_1

    .line 9
    iget-object v2, p0, Lcom/huawei/hms/scankit/e;->m:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 10
    iget-boolean v1, p0, Lcom/huawei/hms/scankit/e;->q:Z

    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/huawei/hms/scankit/e;->l:Landroid/view/TextureView;

    invoke-direct {p0, v1}, Lcom/huawei/hms/scankit/e;->a(Landroid/view/TextureView;)V

    goto :goto_1

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/huawei/hms/scankit/e;->l:Landroid/view/TextureView;

    iget-object v2, p0, Lcom/huawei/hms/scankit/e;->m:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 13
    :cond_1
    :goto_1
    iget-boolean v1, p0, Lcom/huawei/hms/scankit/e;->E:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/huawei/hms/scankit/e;->g:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const-string v4, "android.permission.CAMERA"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/huawei/hms/scankit/e;->l:Landroid/view/TextureView;

    if-eqz v1, :cond_2

    .line 14
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/e;->E:Z

    .line 15
    invoke-direct {p0, v1}, Lcom/huawei/hms/scankit/e;->a(Landroid/view/TextureView;)V

    :cond_2
    return-void
.end method

.method public f()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/e;->F:Z

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->l:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/huawei/hms/scankit/e;->m:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/e;->D:Z

    .line 5
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/e;->q:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->l:Landroid/view/TextureView;

    invoke-direct {p0, v0}, Lcom/huawei/hms/scankit/e;->a(Landroid/view/TextureView;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->l:Landroid/view/TextureView;

    iget-object v1, p0, Lcom/huawei/hms/scankit/e;->m:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/huawei/hms/scankit/e;->F:Z

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->c:Lcom/huawei/hms/scankit/p/Hc;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->c:Lcom/huawei/hms/scankit/p/Hc;

    invoke-virtual {v0}, Lcom/huawei/hms/scankit/p/Hc;->c()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/huawei/hms/scankit/e;->c:Lcom/huawei/hms/scankit/p/Hc;

    .line 5
    iget-boolean v0, p0, Lcom/huawei/hms/scankit/e;->D:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/huawei/hms/scankit/e;->i()V

    :cond_1
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/scankit/e;->j:Lcom/huawei/hms/scankit/p/Aa;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/huawei/hms/scankit/p/Aa;->c(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    sget-object v0, Lcom/huawei/hms/scankit/e;->a:Ljava/lang/String;

    const-string v1, "Exception in reset zoomValue"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :catch_1
    sget-object v0, Lcom/huawei/hms/scankit/e;->a:Ljava/lang/String;

    const-string v1, "RuntimeException in reset zoomValue"

    invoke-static {v0, v1}, Lcom/huawei/hms/scankit/util/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
