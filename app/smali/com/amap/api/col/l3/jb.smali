.class public final Lcom/amap/api/col/l3/jb;
.super Lcom/amap/api/col/l3/ja;
.source "WiFiUplateStrategy.java"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amap/api/col/l3/ja;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/col/l3/jb;->c:Z

    .line 3
    iput-object p1, p0, Lcom/amap/api/col/l3/jb;->b:Landroid/content/Context;

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/col/l3/jb;->c:Z

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/jb;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/col/l3/gb;->r(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/amap/api/col/l3/jb;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method
