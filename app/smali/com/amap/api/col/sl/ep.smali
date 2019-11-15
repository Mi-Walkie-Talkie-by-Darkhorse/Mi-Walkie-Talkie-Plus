.class public abstract Lcom/amap/api/col/sl/ep;
.super Ljava/lang/Object;
.source "UpdateStrategy.java"


# instance fields
.field a:Lcom/amap/api/col/sl/ep;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/amap/api/col/sl/ep;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amap/api/col/sl/ep;->a:Lcom/amap/api/col/sl/ep;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/ep;->a:Lcom/amap/api/col/sl/ep;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/ep;->a:Lcom/amap/api/col/sl/ep;

    invoke-virtual {v0, p1}, Lcom/amap/api/col/sl/ep;->a(Z)V

    :cond_0
    return-void
.end method

.method protected abstract a()Z
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/sl/ep;->a:Lcom/amap/api/col/sl/ep;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/sl/ep;->a:Lcom/amap/api/col/sl/ep;

    invoke-virtual {v0}, Lcom/amap/api/col/sl/ep;->b()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/amap/api/col/sl/ep;->a()Z

    move-result v0

    goto :goto_1
.end method
