.class public final Lcom/amap/api/col/l3/ee;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/amap/api/col/l3/ee;


# instance fields
.field private b:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amap/api/col/l3/ee;
    .locals 1

    sget-object v0, Lcom/amap/api/col/l3/ee;->a:Lcom/amap/api/col/l3/ee;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3/ee;

    invoke-direct {v0}, Lcom/amap/api/col/l3/ee;-><init>()V

    sput-object v0, Lcom/amap/api/col/l3/ee;->a:Lcom/amap/api/col/l3/ee;

    :cond_0
    sget-object v0, Lcom/amap/api/col/l3/ee;->a:Lcom/amap/api/col/l3/ee;

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3/ee;->b:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "Map3DCache"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3/ee;->b:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/amap/api/col/l3/ee;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/col/l3/ee;->a(J)V

    :cond_0
    return-void
.end method

.method public final b()J
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3/ee;->b:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-string v3, "time"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    return-wide v1
.end method
