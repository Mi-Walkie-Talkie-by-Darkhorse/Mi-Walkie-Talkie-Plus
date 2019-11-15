.class public final Lcom/amap/api/col/sl/eq;
.super Lcom/amap/api/col/sl/ep;
.source "WiFiUplateStrategy.java"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/col/sl/ep;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/sl/eq;->c:Z

    iput-object p1, p0, Lcom/amap/api/col/sl/eq;->b:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/amap/api/col/sl/eq;->c:Z

    return-void
.end method


# virtual methods
.method protected final a()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/amap/api/col/sl/eq;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/col/sl/bu;->p(Landroid/content/Context;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/col/sl/eq;->c:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
