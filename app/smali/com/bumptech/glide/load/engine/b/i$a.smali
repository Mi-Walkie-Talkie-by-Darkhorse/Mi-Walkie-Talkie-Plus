.class public final Lcom/bumptech/glide/load/engine/b/i$a;
.super Ljava/lang/Object;
.source "MemorySizeCalculator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field static final a:I


# instance fields
.field private final b:Landroid/content/Context;

.field private c:Landroid/app/ActivityManager;

.field private d:Lcom/bumptech/glide/load/engine/b/i$c;

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    :goto_0
    sput v0, Lcom/bumptech/glide/load/engine/b/i$a;->a:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->e:F

    sget v0, Lcom/bumptech/glide/load/engine/b/i$a;->a:I

    int-to-float v0, v0

    iput v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->f:F

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->g:F

    const v0, 0x3ea8f5c3    # 0.33f

    iput v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->h:F

    const/high16 v0, 0x400000

    iput v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->i:I

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b/i$a;->b:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->c:Landroid/app/ActivityManager;

    new-instance v0, Lcom/bumptech/glide/load/engine/b/i$b;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/engine/b/i$b;-><init>(Landroid/util/DisplayMetrics;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->d:Lcom/bumptech/glide/load/engine/b/i$c;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->c:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/bumptech/glide/load/engine/b/i;->a(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->f:F

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/bumptech/glide/load/engine/b/i$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/bumptech/glide/load/engine/b/i$a;)Landroid/app/ActivityManager;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->c:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic c(Lcom/bumptech/glide/load/engine/b/i$a;)I
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->i:I

    return v0
.end method

.method static synthetic d(Lcom/bumptech/glide/load/engine/b/i$a;)F
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->g:F

    return v0
.end method

.method static synthetic e(Lcom/bumptech/glide/load/engine/b/i$a;)F
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->h:F

    return v0
.end method

.method static synthetic f(Lcom/bumptech/glide/load/engine/b/i$a;)Lcom/bumptech/glide/load/engine/b/i$c;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->d:Lcom/bumptech/glide/load/engine/b/i$c;

    return-object v0
.end method

.method static synthetic g(Lcom/bumptech/glide/load/engine/b/i$a;)F
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->f:F

    return v0
.end method

.method static synthetic h(Lcom/bumptech/glide/load/engine/b/i$a;)F
    .locals 1

    iget v0, p0, Lcom/bumptech/glide/load/engine/b/i$a;->e:F

    return v0
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/b/i;
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/engine/b/i;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/engine/b/i;-><init>(Lcom/bumptech/glide/load/engine/b/i$a;)V

    return-object v0
.end method
